using System;
using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{

	public enum ACTION_INDEX
	{
		DEFAULT = 0,
		FAVOURITE = 1,
		EMAIL = 2,
		FEEDBACK = 3
	}

	[CLSCompliant (false)]
	[Register ("TCActionView")]
	public partial class TCActionView : UIView, TCFavoriteHelperDelegate, TCEmailProfileComponentDelegate, TCSendFeedbackComponentDelegate, TCLoginViewControllerDelegate, TCProfileSpecialistHelperDelegate
	{
		public SpecialistProfileInfos specialistInfo { get; set; }

		public BookingInfo bookingInfo { get; set; }

		public Guid iCallId { get; set; }

		public TCActionViewDelegate Delegate { get; set; }

		public TCCommonTemplateViewController parentController;

		public static readonly UINib Nib;

		static TCActionView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCActionView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCActionView_iPhone", NSBundle.MainBundle);
			}
		}

		public TCActionView (IntPtr p) : base (p)
		{

		}

		public static TCActionView Create ()
		{
			return (TCActionView)Nib.Instantiate (null, null) [0];
		}

		public void buildInView (UIView containView)
		{
			this.BackgroundColor = UIColor.Clear;
			containView.AddSubview (this);

			if (this.parentController is TCSpecialistProfileViewController || this.bookingInfo.Status != (int)CoreSystem.Constants.STATUS.Finish || this.bookingInfo.PastBooking == null || this.bookingInfo.PastBooking.CallId == Guid.Empty) {
				this.btnFeedback.Hidden = true;
			} else {
				this.btnFeedback.Hidden = false;

				if (MApplication.getInstance ().isConsultant && !this.bookingInfo.IsFeedback) {
					this.btnFeedback.SetImage (UIImage.FromBundle ("followUp_feedback_disable"), UIControlState.Normal);
					this.btnFeedback.UserInteractionEnabled = false;
				}
			}
				
			if (this.specialistInfo != null)
				setFavouriteStatus (this.specialistInfo);
		}

		public void displayOnlyFeedback ()
		{
			this.btnFavorite.Hidden = true;
			this.btnEmail.Hidden = true;

			this.btnFeedback.Frame = this.btnFavorite.Frame;
		}

		public void hideFeedback ()
		{
			this.btnFeedback.Hidden = true;
		}

		partial void sendEmailClicked (NSObject sender)
		{
			TCEmailProfileComponent emailProfileComp = new TCEmailProfileComponent (this.parentController);
			emailProfileComp.Delegate = this;
			emailProfileComp.build (specialistInfo.Account.Id);
		}

		partial void favoriteClicked (NSObject sender)
		{
			if (!MApplication.getInstance ().isLogedIn) {
				requireLogin ();
				return;
			}

			TCFavouriteHelper favouriteHandler = new TCFavouriteHelper (this.parentController);
			favouriteHandler.specialistId = this.specialistInfo.Account.Id;
			favouriteHandler.Delegate = this;
			favouriteHandler.favourite (specialistInfo.IsFavourite);
		}

		partial void feedbackClicked (NSObject sender)
		{
			if (this.bookingInfo.IsFeedback) {
				Console.Out.WriteLine ("Show info feedback .....");
				TCFeedbackInfoView feedbackInfoView = TCFeedbackInfoView.Create ();
				feedbackInfoView.setInfo (this.bookingInfo.Rating, this.bookingInfo.Feedback);

				TCAlertViewController alertView = new TCAlertViewController (this.parentController, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TitleFeedback"), "", feedbackInfoView, null, TCLocalizabled.getText ("OkTitle"));
				alertView.display ();

			} else {
				TCSendFeedbackComponent feedbackHelper = new TCSendFeedbackComponent (this.parentController);
				feedbackHelper.Delegate = this;
				feedbackHelper.build (this.specialistInfo.Account.Id, this.iCallId);
			}
		}

		public void setFavouriteStatus (SpecialistProfileInfos specInfo)
		{
			this.specialistInfo = specInfo;

			if (specInfo.IsFavourite) {
				this.btnFavorite.SetImage (UIImage.FromBundle ("favourite_selected_icon.png"), UIControlState.Normal);
			} else {
				this.btnFavorite.SetImage (UIImage.FromBundle ("favourite_unselected_icon.png"), UIControlState.Normal);
			}
		}

		private void requireLogin ()
		{
			TCLoginViewController loginVC = (TCLoginViewController)this.parentController.Storyboard.InstantiateViewController ("TCLoginViewController");
			loginVC.Delegate = this;
			loginVC.isLoginNormal = false;
			this.parentController.NavigationController.PushViewController (loginVC, true);
		}

		#region TCFavoriteHelperDelegate

		public void actionFavoriteSuccess (TCFavouriteHelper helper, string message)
		{
			specialistInfo.IsFavourite = !specialistInfo.IsFavourite;
			setFavouriteStatus (specialistInfo);
			MUtils.showAlert (this.parentController, TCLocalizabled.getText ("TitleAlertFavorite"), String.Format (message, specialistInfo.Account.Name));
		}

		public void actionFavoriteFail (TCFavouriteHelper helper, string message)
		{
			MUtils.showAlert (this.parentController, TCLocalizabled.getText ("TitleAlertFavorite"), message);
		}

		public void beginFavoriteRequest (TCFavouriteHelper helper)
		{
			if (this.Delegate != null)
				this.Delegate.beginActionRequest (this, ACTION_INDEX.FAVOURITE);
		}

		public void afterFavoriteRequest (TCFavouriteHelper helper)
		{
			if (this.Delegate != null)
				this.Delegate.finishActionRequest (this, ACTION_INDEX.FAVOURITE);
		}

		#endregion

		#region TCSendFeedbackComponentDelegate

		public void beginSendRequestFeedback ()
		{
			if (this.Delegate != null)
				this.Delegate.beginActionRequest (this, ACTION_INDEX.FEEDBACK);
		}

		public void sendFeedbackResult (bool isSuccess, string title, string message, int numRate, string feedback)
		{
			if (this.Delegate != null)
				this.Delegate.finishFeebackRequest (this, isSuccess, numRate, feedback);

			MUtils.showAlert (this.parentController, title, message);
		}

		#endregion

		#region TCEmailProfileComponentDelegate

		public void emailProfileComponentSuccess (TCEmailProfileComponent sender, string title, string message)
		{
			MUtils.showAlert (this.parentController, title, message);
		}

		public void emailProfileComponentFailure (TCEmailProfileComponent sender, string title, string message)
		{
			MUtils.showAlert (this.parentController, title, message);
		}

		public void beginSendEmailProfileRequest (TCEmailProfileComponent sender)
		{
			if (this.Delegate != null)
				this.Delegate.beginActionRequest (this, ACTION_INDEX.EMAIL);
		}

		public void finishSendEmailProfileRequest (TCEmailProfileComponent sender)
		{
			if (this.Delegate != null)
				this.Delegate.finishActionRequest (this, ACTION_INDEX.EMAIL);
		}

		#endregion

		#region TCLoginViewControllerDelegate

		public void authenticationSuccess ()
		{
			// Refresh data specialist profile
			if (!MApplication.getInstance ().isConsultant) {
				if (this.Delegate != null)
					this.Delegate.beginActionRequest (this, ACTION_INDEX.DEFAULT);

				TCProfileSpecialistHelper profileHelper = new TCProfileSpecialistHelper (this.parentController);
				profileHelper.Delegate = this;
				profileHelper.getProfile (this.specialistInfo.Account.Id);
			}
		}

		#endregion

		#region TCProfileSpecialistHelperDelegate

		public void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info)
		{
			if (this.Delegate != null) {
				this.Delegate.actionRefreshData (this, info);
				this.Delegate.finishActionRequest (this, ACTION_INDEX.DEFAULT);
			}
		}

		public void getProfileFail (TCProfileSpecialistHelper helper)
		{
			if (this.Delegate != null) {
				this.Delegate.finishActionRequest (this, ACTION_INDEX.DEFAULT);
			}
		}

		#endregion
	}

	[CLSCompliant (false)]
	public interface TCActionViewDelegate
	{
		void beginActionRequest (TCActionView owner, ACTION_INDEX action);

		void actionRefreshData (TCActionView owner, SpecialistProfileInfos info);

		void finishFeebackRequest (TCActionView owner, bool isSuccess, int numRate, string message);

		void finishActionRequest (TCActionView owner, ACTION_INDEX action);
	}
}

