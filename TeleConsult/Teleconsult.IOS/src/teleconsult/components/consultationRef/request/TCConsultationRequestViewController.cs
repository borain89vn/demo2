
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreSystem;
using ObjCRuntime;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCConsultationRequestViewController : TCConsultationTemplateViewController, TCDatetimePickerDelegate, TCConfigHelperDelegate
	{
		const float hideValue = 1024.0f;

		private CGRect frameScreen;
		private UIView currentViewAction;
		private UIView oldViewAction;
		private TCDatetimePicker datePickerView;
		private UIButton buttonSender;
		private int statusSender;
		private TCAlertViewController alertConfirm;
		private bool isStartChoose;
		private bool isBookingASAP;
		private bool isNotLoadConfig;
		private nfloat heighPreferredTime;
		private bool isShowAlertNoGetData;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCConsultationRequestViewController (IntPtr handle) : base (handle)
		{
		}

		public TCConsultationRequestViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCConsultationRequestViewController_iPhone" : "TCConsultationRequestViewController_iPhone", null)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			this.heighPreferredTime = this.viewPreferred.Frame.Height;

			this.viewButtons.BackgroundColor = UIColor.Clear;
			frameScreen = UIScreen.MainScreen.Bounds;

			this.datePickerView = TCDatetimePicker.Create ();
			this.datePickerView.Delegate = this;

			string textEnquiry = bookingInfo.Enquiry == null ? "" : bookingInfo.Enquiry;
			this.lbEnquiry.Text = textEnquiry;

			this.isNotLoadConfig = false;

			decorateRequestUI ();
			setPositionView ();
			hideTimeWindow ();

			if (!this.isNotLoadConfig) {
				getSystemConfig ();
			}
		}

		public override void goBack ()
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostCouldNotGetData);
			TCGlobals.getInstance.isAtScreenConfig = false;
			TCGlobals.getInstance.isNoGetConfiged = true;

			base.goBack ();
		}

		#region Notification Local

		public void notGetDataConfig (object notification)
		{
			noticeNotRetrieveData();
		}

		#endregion

		private void getSystemConfig ()
		{
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostCouldNotGetData, new TCSelector(notGetDataConfig));
			TCGlobals.getInstance.isAtScreenConfig = true;
			TCGlobals.getInstance.isNoGetConfiged = true;

			TCConfigHelper configHelper = new TCConfigHelper (this);
			configHelper.Delegate = this;
			configHelper.getSystemConfig ();
		}

		private void noticeNotRetrieveData ()
		{
			if (!this.isShowAlertNoGetData) {

				TCAlertViewController alertVC = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"), null, null, TCLocalizabled.getText ("OkTitle"));
				alertVC.Delegate = this;
				alertVC.display ();

				this.isShowAlertNoGetData = true;
			}
		}

		private void decorateRequestUI ()
		{
			this.btnReschedule1.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnReschedule1.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			this.btnReschedule2.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnReschedule2.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			this.btnOK.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnOK.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			this.btnConfirm1.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnConfirm1.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			this.btnConfirm2.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnConfirm2.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			this.btnScheduleRequest.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			this.btnScheduleRequest.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);
		}

		private void addSubViewButtons (UIView view)
		{
			this.oldViewAction = this.currentViewAction;
			if (this.currentViewAction != null) {
				this.currentViewAction.Frame = new CGRect (hideValue, hideValue, this.currentViewAction.Frame.Width, this.currentViewAction.Frame.Height);
			}
			if (view != null) {
				view.Frame = new CGRect (0.0f, 0.0f, view.Frame.Width, view.Frame.Height);
				this.viewButtons.AddSubview (view);
				this.currentViewAction = view;
			}
		}

		private void setPositionView ()
		{
			if (MApplication.getInstance ().isConsultant) {

				if (bookingInfo.Type == (int)CoreSystem.Constants.TALKNOWTYPE.ASAP && bookingInfo.Status == (int)CoreSystem.Constants.STATUS.Requested) {
					this.lbProposedTime.Text = TCLocalizabled.getText ("TextSoonestPossibleTime");
					isBookingASAP = true;
					addSubViewButtons (this.viewSchedule_Decline);
				} else {
					if (bookingInfo.Status == (int)CoreSystem.Constants.STATUS.Requested) {

						if (MUtils.stringToDateTime (bookingInfo.StartTime) < CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName)) {
							addSubViewButtons (this.viewReschedule_Decline);
						} else {
							addSubViewButtons (this.viewReschedule_Confirm_Decline);
						}
					} else if (bookingInfo.Status == (int)CoreSystem.Constants.STATUS.CustomerRescheduled) {
						this.isNotLoadConfig = true;
						if (MUtils.stringToDateTime (bookingInfo.StartTime) < CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName)) {
							addSubViewButtons (this.viewDecline);
						} else {
							addSubViewButtons (this.viewConfirm_Decline);
						}
					} else if (bookingInfo.Status == (int)CoreSystem.Constants.STATUS.SpecialistRescheduled) {
						// Do nothing
						this.isNotLoadConfig = true;
					}
				}
			} else {
				if (bookingInfo.Status == (int)CoreSystem.Constants.STATUS.SpecialistRescheduled) {
					if (MUtils.stringToDateTime (bookingInfo.StartTime) < CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName)) {
						addSubViewButtons (this.viewReschedule_Decline);
					} else {
						if (MUtils.stringToDateTime (bookingInfo.StartTime) < CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName)) {
							addSubViewButtons (this.viewReschedule_Decline);
						} else {
							addSubViewButtons (this.viewReschedule_Confirm_Decline);
						}
					}
				} else {
					// Do nothing
					this.isNotLoadConfig = true;
				}
			}
		}

		private void showTimeWindow ()
		{
			checkExpiredTime();

			this.viewTimeWindow.Hidden = false;
			this.viewTimeWindow.Frame = new CGRect (this.viewTimeWindow.Frame.X, this.viewPreferred.Frame.Y + this.viewPreferred.Frame.Height, this.viewTimeWindow.Frame.Width, this.viewTimeWindow.Frame.Height);

			this.viewFee.Frame = new CGRect (this.viewFee.Frame.X, this.viewTimeWindow.Frame.Y + this.viewTimeWindow.Frame.Height, this.viewFee.Frame.Width, this.viewFee.Frame.Height);

			string textEnquiry = bookingInfo.Enquiry == null ? "" : bookingInfo.Enquiry;
		
			CGSize sizeText = MUtils.getSizeText (textEnquiry, MUtils.getFontWithSize (false, 13.0f), this.lbEnquiry.Frame.Width);
			this.lbEnquiry.Frame = new CGRect (this.lbEnquiry.Frame.X, this.lbEnquiry.Frame.Y, this.lbEnquiry.Frame.Width, sizeText.Height);
			this.viewEnquiry.Frame = new CGRect (this.viewEnquiry.Frame.X, this.viewFee.Frame.Y + this.viewFee.Frame.Height, this.viewEnquiry.Frame.Width, this.lbEnquiry.Frame.Height + 25.0f);
			this.viewTime.Frame = new CGRect (this.viewTime.Frame.X, this.viewTime.Frame.Y, this.viewTime.Frame.Width, this.viewPreferred.Frame.Height + this.viewFee.Frame.Height + this.viewTimeWindow.Frame.Height + this.viewEnquiry.Frame.Height);
			addSubViewButtons (this.viewOK_Cancel);
			this.viewButtons.Frame = new CGRect (this.viewButtons.Frame.X, this.viewTime.Frame.Height + this.viewTime.Frame.Y + 30.0f, this.viewButtons.Frame.Width, this.currentViewAction.Frame.Height);
			this.scrollView.ContentSize = new CGSize (0.0f, this.viewButtons.Frame.Y + this.viewButtons.Frame.Height);
		}

		private void hideTimeWindow ()
		{
			checkExpiredTime();

			this.viewTimeWindow.Hidden = true;
			this.viewFee.Frame = new CGRect (this.viewFee.Frame.X, this.viewPreferred.Frame.Y + this.viewPreferred.Frame.Height, this.viewFee.Frame.Width, this.viewFee.Frame.Height);

			string textEnquiry = bookingInfo.Enquiry == null ? "" : bookingInfo.Enquiry;
			CGSize sizeText = MUtils.getSizeText (textEnquiry, MUtils.getFontWithSize (false, 13.0f), this.lbEnquiry.Frame.Width);
			this.lbEnquiry.Frame = new CGRect (this.lbEnquiry.Frame.X, this.lbEnquiry.Frame.Y, this.lbEnquiry.Frame.Width, sizeText.Height);
			this.viewEnquiry.Frame = new CGRect (this.viewEnquiry.Frame.X, this.viewFee.Frame.Y + this.viewFee.Frame.Height, this.viewEnquiry.Frame.Width, this.lbEnquiry.Frame.Height + 25.0f);

			this.viewTime.Frame = new CGRect (this.viewTime.Frame.X, this.viewTime.Frame.Y, this.viewTime.Frame.Width, this.viewPreferred.Frame.Height + this.viewFee.Frame.Height + this.viewEnquiry.Frame.Height);

			if (this.oldViewAction == null)
				this.oldViewAction = this.currentViewAction;
			this.addSubViewButtons (this.oldViewAction);
			if (this.currentViewAction != null) {
				this.viewButtons.Frame = new CGRect (this.viewButtons.Frame.X, this.viewTime.Frame.Height + this.viewTime.Frame.Y + 30.0f, this.viewButtons.Frame.Width, this.currentViewAction.Frame.Height);
			} else {
				this.viewButtons.Hidden = true;
			}

			this.scrollView.ContentSize = new CGSize (0.0f, this.viewButtons.Frame.Y + this.viewButtons.Frame.Height);
		}

		private void checkExpiredTime()
		{
			if (bookingInfo.Type == (int)CoreSystem.Constants.TALKNOWTYPE.ASAP) {
				this.lbTimeExpired.Hidden = true;
				this.viewPreferred.Frame = new CGRect (this.viewPreferred.Frame.X, this.viewPreferred.Frame.Y, this.viewPreferred.Frame.Width, this.heighPreferredTime - this.lbTimeExpired.Frame.Height);
			} else if (MUtils.stringToDateTime (this.bookingInfo.StartTime) < CoreSystem.Utils.getDateTimeNow (MApplication.getInstance().timezoneName)) {
				this.lbTimeExpired.Hidden = false;
				this.viewPreferred.Frame = new CGRect (this.viewPreferred.Frame.X, this.viewPreferred.Frame.Y, this.viewPreferred.Frame.Width, this.heighPreferredTime);
			} else {
				this.lbTimeExpired.Hidden = true;
				this.viewPreferred.Frame = new CGRect (this.viewPreferred.Frame.X, this.viewPreferred.Frame.Y, this.viewPreferred.Frame.Width, this.heighPreferredTime - this.lbTimeExpired.Frame.Height);
			}
		}
			
		partial void chooseEndTime (NSObject sender)
		{
			isStartChoose = false;

			DateTime eTime = MUtils.stringToDateTimePlatform (this.lbEndTime.Text);
			NSDate nsDate = MUtils.DateTimeToNSDate (eTime);

			this.datePickerView.buildDatePicker (TCLocalizabled.getText ("TitleDatePickerEndDate"), TCLocalizabled.getText ("TitleDatePickerEndTime"));
			this.datePickerView.setDateTime (nsDate);
			this.datePickerView.showInView (this.NavigationController.View);
		}

		partial void chooseStartTime (NSObject sender)
		{
			isStartChoose = true;
			DateTime sTime = MUtils.stringToDateTimePlatform (this.lbStartTime.Text);
			NSDate nsDate = MUtils.DateTimeToNSDate (sTime);

			this.datePickerView.buildDatePicker (TCLocalizabled.getText ("TitleDatePickerStartDate"), TCLocalizabled.getText ("TitleDatePickerStartTime"));
			this.datePickerView.setDateTime (nsDate);
			this.datePickerView.showInView (this.NavigationController.View);
		}

		partial void confirmClicked (NSObject sender)
		{
			showConfirm (sender);
		}

		partial void OKClicked (NSObject sender)
		{
			DateTime sTime = MUtils.stringToDateTimePlatform (this.lbStartTime.Text);
			DateTime eTime = MUtils.stringToDateTimePlatform (this.lbEndTime.Text);
		
			string result = MUtils.checkTimeValidWithConfig (sTime, eTime);
			if (result != null) {
				showWarningMessage (TCLocalizabled.getText ("TitleAlertBookATime"), result);
				return;
			}

			this.startTime = sTime;
			this.endTime = eTime;

			showConfirm (sender);
		}

		private void showWarningMessage (string title, string message)
		{
			TCAlertViewController alert = new TCAlertViewController (this, title, message, null, null, TCLocalizabled.getText ("OkTitle"));
			alert.display ();
		}

		partial void declineClicked (NSObject sender)
		{
			showConfirm (sender);
		}

		partial void cancelClicked (NSObject sender)
		{
			hideTimeWindow ();
		}

		partial void scheduleClicked (NSObject sender)
		{
			showTimeWindow ();
		}

		partial void rescheduleClicked (NSObject pSender)
		{
			showTimeWindow ();
		}

		private void showConfirm (NSObject pSender)
		{
			string textMessage = "";
			string title = TCLocalizabled.getText("TitleConfirm");

			this.buttonSender = (UIButton)pSender;
			if (this.buttonSender == this.btnOK) {
				if (isBookingASAP)
					textMessage = "Are you sure schedule this booking?";
				else
					textMessage = "Are you sure reschedule this booking?";
					
			} else if (this.buttonSender == this.btnCancelBooking) {
				title = TCLocalizabled.getText ("TextAlertTitleCancellation");
				textMessage = "Are you sure cancel this booking?";
				this.statusSender = (int)CoreSystem.Constants.STATUS.Cancel;
			} else if (this.buttonSender == this.btnConfirm1 || this.buttonSender == this.btnConfirm2) {
				textMessage = "Are you sure confirm this booking?";
				this.statusSender = (int)CoreSystem.Constants.STATUS.Confirmed;
			} else {
				title = TCLocalizabled.getText ("TextAlertTitleCancellation");
				textMessage = "Are you sure decline this booking?";
				this.statusSender = (int)CoreSystem.Constants.STATUS.Cancel;
			}

			this.alertConfirm = new TCAlertViewController (this, title, textMessage, null, TCLocalizabled.getText ("NoTitle"), TCLocalizabled.getText ("YesTitle"));
			this.alertConfirm.Delegate = this;
			this.alertConfirm.display ();
		}

		private void sendRescheduleRequest ()
		{
			this.loadingView.show ();
			Action<string> successful = (response => {

				ResultDTO resultDto = ParseDataHelper.parseDataUpdateBookingStatus (response);
	
				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					if (resultDto.status) {
						this.NavigationController.PopViewController (true);
					} else {
						MUtils.showRequestFail (this);
					}
				});
			});

			Action<string> failure = (response => {

				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					MUtils.showNetworkFailed (this);
				});
			});

			DataHelperRequest.getInstance ().sendResheduleBooking (bookingInfo.Id,
				this.startTime, this.endTime, MApplication.getInstance ().isConsultant, successful, failure);
		}

		#region TCDatetimePickerDelegate

		public void doneClicked (string date, string time)
		{
			if (isStartChoose) {
				this.lbStartTime.Text = date + " " + time;
			} else {	
				this.lbEndTime.Text = date + " " + time;
			}

			this.datePickerView.hide ();
		}

		public void cancelClicked ()
		{
			this.datePickerView.hide ();
		}

		#endregion

		#region TCConfigHelperDelegate

		public void beginGetConfigRequest (TCConfigHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishGetConfigRequest (TCConfigHelper helper)
		{
			this.loadingView.dismiss ();
		}

		public void getConfigSuccess (TCConfigHelper helper, SystemDTO sysConfig)
		{
			MApplication.getInstance ().systemConfig = sysConfig;
			TCGlobals.getInstance.isNoGetConfiged = false;

			string strStartDate = "";
			string strEndDate = "";

			if (MApplication.getInstance ().isConsultant && this.bookingInfo.Status == (int)CoreSystem.Constants.STATUS.Requested && bookingInfo.Type == (int)CoreSystem.Constants.TALKNOWTYPE.ASAP) {
				strStartDate = MUtils.dateTimeToString (CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName).AddSeconds(sysConfig.minimumLeadTime * 60), MUtils.kFormatDateTimeDefaultPlatform);
				strEndDate = MUtils.dateTimeToString (CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName).AddSeconds((sysConfig.minimumLeadTime + sysConfig.minimumBooking) * 60), MUtils.kFormatDateTimeDefaultPlatform);
			} else {
				strStartDate = MUtils.stringDateToString (bookingInfo.StartTime, MUtils.kFormatDateTimeDefaultPlatform);
				strEndDate = MUtils.stringDateToString (bookingInfo.EndTime, MUtils.kFormatDateTimeDefaultPlatform);
			}
				
			this.lbStartTime.Text = strStartDate;
			this.lbEndTime.Text = strEndDate;
		}

		public void getConfigFail (TCConfigHelper helper)
		{
			TCGlobals.getInstance.isAtScreenConfig = false;
			noticeNotRetrieveData ();
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public override void alertOkClicked (TCAlertViewController alert)
		{
			if (alert == this.alertConfirm) {
				if (this.buttonSender == this.btnOK)
					sendRescheduleRequest ();
				else {
					updateBookingStatusRequest (this.statusSender);
				}		
			} else {
				goBack ();
			}
		}

		public override void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion
	}
}

