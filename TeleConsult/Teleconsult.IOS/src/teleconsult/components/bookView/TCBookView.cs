using System;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCBookView")]
	public partial class TCBookView : UIView, TCEnquiryViewControllerDelegate, TCProfileSpecialistHelperDelegate, TCLoginViewControllerDelegate
	{
		public SpecialistProfileInfos specialistInfo { get; set; }
		public TCAlertViewControllerDelegate DelegateAlertCompleteProfile { get; set; }
		public TCBookViewDelegate Delegate { get; set; }

		public TCCommonTemplateViewController parentController;

		private bool chooseStandard;
		private string enquiryText;
		private UIView containView;

		public static readonly UINib Nib;

		static TCBookView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCBookView_iPhone", NSBundle.MainBundle);
			}
		}

		public TCBookView (IntPtr p) : base (p)
		{

		}

		public static TCBookView Create ()
		{
			return (TCBookView)Nib.Instantiate (null, null) [0];
		}

		public void buildInView (UIView containView, TCAlertViewControllerDelegate pDelegate)
		{
			this.containView = containView;
			this.DelegateAlertCompleteProfile = pDelegate;
			this.BackgroundColor = UIColor.Clear;
			this.containView.AddSubview (this);
			initInfoSpecialist (this.specialistInfo);
			decorateUI ();
		}

		public void buildInView (UIView containView)
		{
			buildInView (containView, null);
		}

		private void initInfoSpecialist (SpecialistProfileInfos info)
		{
			if (info != null && info.SpecialistDetail != null && info.SpecialistDetail.Specializations != null) {
				//ddbien: comment tempt
				//this.lbCostTalknow.Text = "$" + MUtils.getCost ((double)info.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow);
				string price = "$" + MUtils.getCost ((double)info.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow);
				this.btnTalkNow.SetTitle(price,UIControlState.Normal) ;
				this.lbCostAnother.Text = "$" + MUtils.getCost ((double)info.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
				this.lbCostStandard.Text = "$" + MUtils.getCost ((double)info.SpecialistDetail.Specializations [0].CustomerPricing.Standard);
			
				if (info.Account.Status == (int)Constants.LOGIN_STATUS.Expired) {
					this.lbNoteExpire.Hidden = false;
					disableButtons ();
				} else {
					this.viewBook.Frame = new CGRect (0.0f, 0.0f, this.viewBook.Frame.Width, this.viewBook.Frame.Height);
					this.Frame = new CGRect (this.Frame.X, this.Frame.Y, this.viewBook.Frame.Width, this.viewBook.Frame.Height);
				}
			} else {
				disableButtons ();
			}

			this.containView.Frame = new CGRect (this.containView.Frame.X, this.containView.Frame.Y, this.Frame.Width, this.Frame.Height);
		}

		private void disableButtons()
		{
			this.btnASAP.UserInteractionEnabled = false;
			this.btnAnother.UserInteractionEnabled = false;
			this.btnStandard.UserInteractionEnabled = false;
			this.btnTalkNow.UserInteractionEnabled = false;
		}

		private void decorateUI ()
		{
			this.viewASAP.Layer.CornerRadius = 3;
			this.viewASAP.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBooking);

			this.viewAnother.Layer.CornerRadius = 3;
			this.viewAnother.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBooking);

			this.viewTalkNow.Layer.CornerRadius = 3;
			this.viewTalkNow.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBooking);

			this.viewStandard.Layer.CornerRadius = 3;
			this.viewStandard.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBooking);
		}

		partial void talkNowClicked (UIButton sender)
		{
			if (!checkValidAccount ()) {
				return;
			}

			if (this.specialistInfo.Account.CurrentAvailabilityStatus == (int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable) {
				MUtils.showAlert (this.parentController, TCLocalizabled.getText ("TitleAlertNotice"), (this.specialistInfo.Account.Name == null ? "" : this.specialistInfo.Account.Name) + " is not available. You can't use this feature.");
				return;
			}
				
			TCTalknowViewController talknowVC = new TCTalknowViewController ();
			talknowVC.parentController = this.parentController;
			talknowVC.specialistInfo = this.specialistInfo;
			talknowVC.View.Frame = this.parentController.View.Frame;

			this.parentController.NavigationController.AddChildViewController (talknowVC);
			this.parentController.NavigationController.View.AddSubview (talknowVC.View);
		}

		partial void soonestTimeClicked (UIButton sender)
		{
			#if DEBUG
			Console.Out.WriteLine ("SoonestTimeClicked");
			#endif

			if (!checkValidAccount ()) {
				return;
			}
				
			TCSoonestViewController soonestVC = new TCSoonestViewController ();
			soonestVC.parentController = this.parentController;
			soonestVC.specialistInfo = this.specialistInfo;
			soonestVC.View.Frame = this.parentController.View.Frame;

			this.parentController.NavigationController.AddChildViewController (soonestVC);
			this.parentController.NavigationController.View.AddSubview (soonestVC.View);
		}

		partial void anotherTimeClicked (UIKit.UIButton sender)
		{
			#if DEBUG
			Console.Out.WriteLine ("anotherTimeClicked");
			#endif

			if (!checkValidAccount ()) {
				return;
			}
				
			this.chooseStandard = false;

			showEntryEnqiry ();
		}

		partial void standardTimeClicked (UIKit.UIButton sender)
		{
			#if DEBUG
			Console.Out.WriteLine ("standardTimeClicked");
			#endif

			if (!checkValidAccount ()) {
				return;
			}

			this.chooseStandard = true;
			showEntryEnqiry ();
		}

		private bool checkValidAccount ()
		{
			bool result = true;

			if (!MApplication.getInstance ().isLogedIn) {
				requireLogin ();
				result = false;
			} else if (!MApplication.getInstance ().isCompleteProfile) {
				TCAlertViewController alertVC = new TCAlertViewController (this.parentController, TCLocalizabled.getText ("TextAlertTitleRequiredUpdateProfile"), TCLocalizabled.getText ("TextMessageRequireUpdateProfile"), null, TCLocalizabled.getText("NoTitle"), TCLocalizabled.getText("YesTitle"));
				alertVC.Delegate = DelegateAlertCompleteProfile;
				alertVC.display ();
				result = false;
			}
				
			return result;
		}

		private void bookAtime (bool isStandard)
		{
			TCPreferredTimeViewController preferredTime = new TCPreferredTimeViewController ();
			preferredTime.enquiryText = this.enquiryText;
			preferredTime.isStandardHour = isStandard;
			preferredTime.parentController = this.parentController;
			preferredTime.specialistInfo = this.specialistInfo;
			preferredTime.View.Frame = this.parentController.View.Frame;

			this.parentController.NavigationController.PushViewController (preferredTime, true);
		}

		private void showEntryEnqiry ()
		{
			TCEnquiryViewController enquiryViewVC = new TCEnquiryViewController (TCLocalizabled.getText ("TitleWarningEnquiry"), TCLocalizabled.getText ("TextPlaceholderEnqiry"), TCLocalizabled.getText ("DoneTitle"), TCLocalizabled.getText ("CancelTitle"), UITextAlignment.Justified, false);
			enquiryViewVC.pDelegate = this;
			enquiryViewVC.maxCharacters = 160;
			enquiryViewVC.View.Frame = this.parentController.View.Frame;
			this.parentController.NavigationController.AddChildViewController (enquiryViewVC);
			this.parentController.NavigationController.View.AddSubview (enquiryViewVC.View);
		}

		private void requireLogin ()
		{
			TCLoginViewController loginVC = (TCLoginViewController)this.parentController.Storyboard.InstantiateViewController ("TCLoginViewController");
			loginVC.Delegate = this;
			loginVC.isLoginNormal = false;
			this.parentController.NavigationController.PushViewController (loginVC, true);
		}

		#region TCEnquiryViewControllerDelegate

		public void buttonClicked (TCEnquiryViewController sender, int index)
		{	
			if (index == 0) {
				this.enquiryText = sender.getTextView ().Text.Trim();
				if (this.enquiryText.Equals ("")) {
					MUtils.showAlert (this.parentController, TCLocalizabled.getText ("TitleWarningEnquiry"), TCLocalizabled.getText ("TextMessageRequiredEnquiry"));
					sender.getTextView ().BecomeFirstResponder();
					return;
				}
			}

			TCGlobals.getInstance.currentVC = this.parentController;
			sender.View.RemoveFromSuperview ();
			sender.RemoveFromParentViewController ();

			if (index == 0) {
				bookAtime (this.chooseStandard);
			}
		}

		#endregion

		#region TCLoginViewControllerDelegate

		public void authenticationSuccess ()
		{
			// Refresh data specialist profile
			if (!MApplication.getInstance ().isConsultant) {
				if (this.Delegate != null)
					this.Delegate.beginBookRequest ();
			
				TCProfileSpecialistHelper profileHelper = new TCProfileSpecialistHelper (this.parentController);
				profileHelper.Delegate = this;
				profileHelper.getProfile (this.specialistInfo.Account.Id);
			}
		}

		#endregion

		#region TCProfileSpecialistHelperDelegate

		public void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info)
		{
			this.specialistInfo = info;
			initInfoSpecialist (this.specialistInfo);
			if (this.Delegate != null) {
				this.Delegate.bookRefreshData (info);
				this.Delegate.finishBookRequest ();
			}
		}

		public void getProfileFail (TCProfileSpecialistHelper helper)
		{
			if (this.Delegate != null) {
				this.Delegate.finishBookRequest ();
			}
		}

		#endregion

	}

	public interface TCBookViewDelegate
	{
		void beginBookRequest ();

		void bookRefreshData (SpecialistProfileInfos info);

		void finishBookRequest ();
	}
}

