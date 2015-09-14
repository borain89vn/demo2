using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using ObjCRuntime;
using CoreGraphics;
using RestSharp;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using Newtonsoft.Json;
using CoreAnimation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSpecialistProfileViewController : TCCommonTemplateViewController, TCBookViewDelegate, TCActionViewDelegate, TCAlertViewControllerDelegate, TCProfileSpecialistHelperDelegate
	{
		public SpecialistProfileInfos specialistInfo { get; set; }
		private bool isTalkNow;
		private TCBookView bookView;
		public TCPreferredTimeViewController preferredTimeVC;
		public TCEnquiryViewController emailViewVC;
		public TCEnquiryViewController enquiryViewVC;
		public TCFollowingUpViewController followUpVC;
		private TCTalknowStateView talknowStateView;
		private TCProfileView profileView;
		private TCActionView actionView;
		private TCAlertViewController alertNotReceiveData;

		public CoreSystem.Constants.TALKNOWTYPE typeRequest;

		public bool isShowDurationView { get; set; }

		public TCSpecialistProfileViewController (IntPtr handle) : base (handle)
		{

		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}
				
			// Perform any additional setup after loading the view, typically from a nib.
			this.NavigationController.NavigationBar.TopItem.Title = "";
			this.isTalkNow = false;
			decorateUI ();

			if (MApplication.getInstance().isLogedIn && !specialistInfo.isLoaded) {
				this.loadingView.show ();
				TCProfileSpecialistHelper profileHelper = new TCProfileSpecialistHelper (this);
				profileHelper.Delegate = this;
				profileHelper.getProfile (this.specialistInfo.Account.Id);
			} else {
				initBookView (this.specialistInfo);
				initActionView (this.specialistInfo);
				loadInfoSpecialist (this.specialistInfo);
			}
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
		
			CGRect frameScroll = this.scrollView.Frame;
			nfloat heightContent = 0.0f;
			CGSize tSize = this.scrollView.ContentSize;


			if (this.specialistInfo.Account.Status == (int)CoreSystem.Constants.LOGIN_STATUS.Expired) {
				heightContent = tSize.Height + 30.0f;
			} else {
				heightContent = tSize.Height;
			}
				
			this.lbMiniCharge.Frame = new CGRect (this.viewButtons.Frame.X + 22.0f, this.viewButtons.Frame.Y + this.viewButtons.Frame.Height, this.lbMiniCharge.Frame.Width, this.lbMiniCharge.Frame.Height);
	
			this.viewDescription.Frame = new CGRect (this.viewDescription.Frame.X, this.lbMiniCharge.Frame.Y + this.lbMiniCharge.Frame.Height, this.viewDescription.Frame.Width, this.viewDescription.Frame.Height);

			this.scrollView.ContentSize = new CGSize (tSize.Width, heightContent);	 
		}

		public override void goBack ()
		{
			back ();
		}

		private void back ()
		{
			removeAllObserver ();

			if (this.NavigationController != null) {
				this.NavigationController.PopViewController (true);
			} else {
				UINavigationController root = (UINavigationController)UIApplication.SharedApplication.KeyWindow.RootViewController;
				root.PopViewController (true);
			}
		}

		private void removeAllObserver()
		{
			if (this.isTalkNow) {
				TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostNotifyDeferAccept);
				TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kUpdateTalkNowStep);
			}
		}

		private void loadInfoSpecialist(SpecialistProfileInfos info)
		{
			this.actionView.setFavouriteStatus (info);
			if (this.specialistInfo.SpecialistDetail.ImageAvatar != null) {
				this.avatar.Image = specialistInfo.SpecialistDetail.ImageAvatar;
				this.acIndicator.Color = UIColor.Clear;
			} else {
				TCAsyncImage.getInstance ().BeginDownloadingAvatar (this, this.avatar, this.acIndicator, info.Account.AvatarPath, true);
			}

			MLicenseDTO lDto = MUtils.getLicenseStatus (info);
			this.imageLicense.Image = lDto.image;
			this.lbLicense.Text = lDto.text;
			this.lbLicense.TextColor = lDto.colorText;

			this.lbOnTime.Text = String.Format (TCLocalizabled.getText("TextLableOntime"), info.SpecialistDetail.OnTime, info.SpecialistDetail.TotalConsultation);

			if (info.ConnectionFee == 0) {
				this.lbMiniCharge.Text = String.Format(TCLocalizabled.getText("TextMinimumChargeExpert"), MUtils.getCost((double)info.SpecialistDetail.Specializations[0].CustomerPricing.Minimum));
			} else {
				this.lbMiniCharge.Text = String.Format(TCLocalizabled.getText("TextMinimumAndConnectionFeeExpert"), MUtils.getCost((double)info.SpecialistDetail.Specializations[0].CustomerPricing.Minimum), MUtils.getCost((double)info.ConnectionFee));
			}

			this.imageRate.Image = MUtils.getRatingImage (info.SpecialistDetail.RatingRatio);
			string strProximity = MUtils.getProximity (info.Proximity);
			this.lbDistance.Text = strProximity + " km";
			this.lbStatusConsultant.Text = CoreSystem.Utils.getStatusConsultant (info.Account.CurrentAvailabilityStatus);

			this.profileView = new TCProfileView (this);
			this.profileView.BackgroundColor = UIColor.Clear;
			this.profileView.build (info);

			CGRect tFrame = this.viewDescription.Frame;
			tFrame.Width = profileView.Frame.Width;
			tFrame.Height = profileView.Frame.Height; 
			this.viewDescription.Frame = tFrame;

			this.viewDescription.AddSubview (this.profileView);

			this.scrollView.ContentSize = new CGSize (0.0f, viewDescription.Frame.Y + viewDescription.Frame.Height + 20.0f);
		}

		private void initBookView(SpecialistProfileInfos info)
		{
			this.bookView = TCBookView.Create ();
			this.bookView.specialistInfo = info;
			this.bookView.parentController = this;
			this.bookView.Delegate = this;

			this.bookView.buildInView (this.viewButtons, this);
		}

		private void initActionView(SpecialistProfileInfos info)
		{
			this.actionView = TCActionView.Create ();
			this.actionView.specialistInfo = info;
			this.actionView.parentController = this;
			this.actionView.Delegate = this;

			this.actionView.buildInView (this.viewAction);
		}

		#region SignalR
		public void updateTalknowSuccess (object data)
		{
			this.InvokeOnMainThread (delegate {
				if (this.talknowStateView != null) {
					this.talknowStateView.updateStep2 ();
					removeAllObserver();
				}
			});
		}

		public void updateDeferTalknow (object data)
		{
			this.InvokeOnMainThread (delegate {
				DeferDTO deferTalkNow = (DeferDTO) data;
				updateDeferOrReschduleView(deferTalkNow);
				removeAllObserver();
			});
		}
		#endregion

		private void updateDeferOrReschduleView(DeferDTO deferDTO)
		{
			MUtils.updateDeferOrReschduleView (this.viewButtons, deferDTO);
		
			if (this.talknowStateView != null )
				this.talknowStateView.RemoveFromSuperview ();

			this.lbMiniCharge.Hidden = true;
			this.viewDescription.Hidden = true;
			this.bookView.Hidden = true;
			this.scrollView.ContentSize = new CGSize (0.0f, 0.0f);
		}

		public void updateStateView ()
		{
			this.isTalkNow = true;

			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyDeferAccept, new
				TCSelector (updateDeferTalknow));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kUpdateTalkNowStep, new
				TCSelector (updateTalknowSuccess));

			this.talknowStateView = TCTalknowStateView.Create ();
			this.talknowStateView.Frame = new CGRect (0.0f, 0.0f, this.viewButtons.Frame.Width, this.viewButtons.Frame.Height);
			this.viewButtons.AddSubview (this.talknowStateView);
			this.bookView.Hidden = true;
			this.viewDescription.Hidden = true;
			this.lbMiniCharge.Hidden = true;
			this.scrollView.ContentSize = new CGSize (0.0f, 0.0f);
		}
			
		private void decorateUI ()
		{
			setupCircleAvatar ();
		}
			
		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, specialistInfo.Account.Name.ToUpper(), true);
		}

		private void setupCircleAvatar ()
		{
			this.avatar.Layer.CornerRadius = this.avatar.Frame.Height / 2;
			this.avatar.Layer.MasksToBounds = true;
			this.avatar.Layer.BorderWidth = 2;
			this.avatar.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.CircleImage).CGColor;
		}
	
		private void showWarning (string message)
		{
			MUtils.showAlert (this, message);
		}

		#region TCProfileSpecialistHelperDelegate

		public void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info)
		{
			this.specialistInfo = info;
			this.specialistInfo.isLoaded = true;
			initBookView (this.specialistInfo);
			initActionView (this.specialistInfo);
			loadInfoSpecialist (this.specialistInfo);

			this.loadingView.dismiss ();
			TCSearchSpecialistViewController searchSpecialistVC = (TCSearchSpecialistViewController)TCViewIdentity.getInstance.getObjectForKey ("TCSearchSpecialistViewController");
			TCNotificationCenter.defaultCenter.postNotification(MUtils.generateKeySearchSpecialist (searchSpecialistVC), this.specialistInfo);
		}

		public void getProfileFail (TCProfileSpecialistHelper helper)
		{
			this.loadingView.dismiss ();
			this.alertNotReceiveData = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"), null, null, TCLocalizabled.getText ("OkTitle"));
			this.alertNotReceiveData.Delegate = this;
			this.alertNotReceiveData.display ();
		}

		#endregion

		#region TCBookViewDelegate
		public void beginBookRequest()
		{
			this.loadingView.show ();
		}
		public void bookRefreshData(SpecialistProfileInfos info)
		{
			this.specialistInfo = info;
			this.specialistInfo.isLoaded = true;
			this.profileView.RemoveFromSuperview ();
			this.loadInfoSpecialist (this.specialistInfo);
			info.isLoaded = true;
			TCSearchSpecialistViewController searchSpecialistVC = (TCSearchSpecialistViewController)TCViewIdentity.getInstance.getObjectForKey ("TCSearchSpecialistViewController");
			TCNotificationCenter.defaultCenter.postNotification(MUtils.generateKeySearchSpecialist (searchSpecialistVC), this.specialistInfo);

		}
		public void finishBookRequest() 
		{
			this.loadingView.dismiss ();
		}
		#endregion

		#region TCActionViewDelegate
		public 	void beginActionRequest(TCActionView owner, ACTION_INDEX action)
		{
			if (action != ACTION_INDEX.EMAIL) {
				this.loadingView.show();
			}
		}

		public 	void actionRefreshData(TCActionView owner, SpecialistProfileInfos info)
		{
			if (this.profileView != null)
				this.profileView.RemoveFromSuperview ();

			this.loadInfoSpecialist (info);
		}

		public 	void finishActionRequest(TCActionView owner, ACTION_INDEX action)
		{
			this.loadingView.dismiss();
		}

		public 	void finishFeebackRequest(TCActionView owner, bool isSuccess, int numRate, string message)
		{
			this.loadingView.dismiss();
		}
		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			if (alert == this.alertNotReceiveData) {
				if (this.NavigationController != null) {
					this.NavigationController.PopViewController (true);
				}
			} else {
				this.PerformSegue("FromProfileSpecialistToUpdateMyProfile", this);
			}

		}

		public void alertCancelClicked (TCAlertViewController alert)
		{

		}
	
		#endregion
	}
}

