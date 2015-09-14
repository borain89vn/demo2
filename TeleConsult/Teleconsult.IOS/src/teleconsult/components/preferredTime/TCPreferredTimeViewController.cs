using System;
using System.Drawing;
using Foundation;
using UIKit;
using ObjCRuntime;
using CoreSystem;
using System.Collections.Generic;
using Newtonsoft.Json;
using RestSharp;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCPreferredTimeViewController : TCCommonTemplateViewController, TCDatetimePickerDelegate, TCAlertViewControllerDelegate, TCConfigHelperDelegate
	{
		public TCEnquiryViewController alertViewVC;
		public TCCommonTemplateViewController parentController;

		public SpecialistProfileInfos specialistInfo { get; set; }

		private string startTime;
		private string endTime;

		private DateTime dStartTime;
		private DateTime dEndTime;

		private bool isStartChoose;
		public string enquiryText { get; set; }
		public  bool isStandardHour { get; set; }

		private TCAlertViewController confirmBookAtimeVC;
		private TCAlertViewController alerConfirmSuccess;
		private TCDatetimePicker datePickerView;
		private bool isShowAlertNoGetData;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCPreferredTimeViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCPreferredTimeViewController_iPhone" : "TCPreferredTimeViewController_iPhone", null)
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

			// Perform any additional setup after loading the view, typically from a nil
			loadingView = new TCLoadingOverlay (null, true, false);
			loadingView.build ();

			this.datePickerView = TCDatetimePicker.Create ();
			this.datePickerView.Delegate = this;

			getSystemConfig ();
			decorateUI ();
		}

		public override void goBack ()
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostCouldNotGetData);
			TCGlobals.getInstance.isAtScreenConfig = false;
			TCGlobals.getInstance.isNoGetConfiged = true;

			base.goBack ();
		}
	
		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, "BOOK A TIME", true);
		}

		private void decorateUI ()
		{
			this.viewStart.Layer.CornerRadius = 3;
			this.viewStart.Layer.MasksToBounds = true;
			this.viewStart.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundTime);

			this.viewEnd.Layer.CornerRadius = 3;
			this.viewEnd.Layer.MasksToBounds = true;
			this.viewEnd.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundTime);	
		}
			
		private void getSystemConfig ()
		{
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostCouldNotGetData, new TCSelector(notGetDataConfig));
			TCGlobals.getInstance.isAtScreenConfig = true;
			TCGlobals.getInstance.isNoGetConfiged = true;

			TCConfigHelper configHelper = new TCConfigHelper (this);
			configHelper.Delegate = this;
			configHelper.getSystemConfig ();
		}

		#region IBAction

		private void noticeNotRetrieveData()
		{
			if (!this.isShowAlertNoGetData) {
				TCAlertViewController alertVC = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"), null, null, TCLocalizabled.getText ("OkTitle"));
				alertVC.Delegate = this;
				alertVC.display ();

				this.isShowAlertNoGetData = true;
			}
		}

		partial void chooseStartTime (NSObject sender)
		{
			isStartChoose = true;
			DateTime sTime = MUtils.stringToDateTimePlatform (this.lbStartTime.Text);
			NSDate nsDate = MUtils.DateTimeToNSDate(sTime);

			this.datePickerView.buildDatePicker (TCLocalizabled.getText ("TitleDatePickerStartDate"), TCLocalizabled.getText ("TitleDatePickerStartTime"));
			this.datePickerView.setDateTime(nsDate);
			this.datePickerView.showInView (this.NavigationController.View);
		}

		partial void chooseEndTime (NSObject sender)
		{
			isStartChoose = false;
			DateTime eTime = MUtils.stringToDateTimePlatform (this.lbEndTime.Text);
			NSDate nsDate = MUtils.DateTimeToNSDate(eTime);

			this.datePickerView.buildDatePicker (TCLocalizabled.getText ("TitleDatePickerEndDate"), TCLocalizabled.getText ("TitleDatePickerEndTime"));
			this.datePickerView.setDateTime(nsDate);
			this.datePickerView.showInView (this.NavigationController.View);
		}

		partial void sendRequestBooking (NSObject sender)
		{
			this.startTime = this.lbStartTime.Text;
			this.endTime = this.lbEndTime.Text;

			DateTime sTime = MUtils.stringToDateTimePlatform (this.startTime);
			DateTime eTime = MUtils.stringToDateTimePlatform (this.endTime);

			string result = MUtils.checkTimeValidWithConfig(sTime, eTime);
			if (result != null) {
				showWarningMessage (TCLocalizabled.getText ("TitleAlertBookATime"), result);
				return;
			} else if (CoreSystem.Utils.checkIsStandarHour (sTime, eTime, specialistInfo.SpecialistDetail.ListStandardHour)) {
				#if DEBUG
				Console.Out.WriteLine ("isStandard");
				#endif
				if (!this.isStandardHour) {
					showWarningMessage (TCLocalizabled.getText ("TitleAlertBookATime"), TCLocalizabled.getText("TextMessageErrorAnotherHour"));
					return;
				} 
			} else {
				if (this.isStandardHour) {
					showWarningMessage (TCLocalizabled.getText ("TitleAlertBookATime"), TCLocalizabled.getText("TextMessageErrorStandardHour"));
					return;
				}
			}

			this.dStartTime = sTime;
			this.dEndTime = eTime;

			showConfirm ();
		}
			

		#endregion

		private NSMutableAttributedString createConfirmAttributed (SpecialistProfileInfos specialistInfo)
		{
			string text1 = TCLocalizabled.getText ("TextMessageConfirmPreferred1");
			string pram1 = this.startTime;
			string text2 = TCLocalizabled.getText ("TextMessageConfirmPreferred2");
			string pram2 = this.endTime;
			string text3 = TCLocalizabled.getText ("TextMessageConfirmPreferred3");
			string pram3 = specialistInfo.Account.Name == null ? "" : specialistInfo.Account.Name;
			string text4 = TCLocalizabled.getText ("TextMessageConfirmPreferred4");
			string pram4 = "";
			if (this.isStandardHour) {
				pram4 = "$" + MUtils.getCost ((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard);
			} else {
				pram4 = "$" + MUtils.getCost ((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
			}

			string text5 = TCLocalizabled.getText ("TextMessageConfirmPreferred5");
			string pram5 = "$" + MUtils.getCost ((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum);

			string text6 = String.Format(TCLocalizabled.getText ("TextMessageConfirmPreferred6"), MApplication.getInstance().typeCard);

			var attributedString = new NSMutableAttributedString (text1 + pram1 + text2 + pram2 + text3 + pram3 + text4 + pram4 + text5 + pram5 + text6);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange (0, text1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (text1.Length, pram1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + pram1).Length, text2.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking), 

			}.Dictionary, new NSRange ((text1 + pram1 + text2).Length, pram2.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2).Length, text3.Length));
					
			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking), 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3).Length, pram3.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3 + pram3).Length, text4.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3 + pram3 + text4).Length, pram4.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3 + pram3 + text4 + pram4).Length, text5.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking) 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3 + pram3 + text4 + pram4 + text5).Length, pram5.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + pram1 + text2 + pram2 + text3 + pram3 + text4 + pram4 + text5 + pram5).Length, text6.Length));
			return attributedString;
		}

		private void showConfirm ()
		{
			string title = TCLocalizabled.getText("TextAlertTitleConfirmOutOf");
			if (this.isStandardHour) {
				title = TCLocalizabled.getText("TextAlertTitleConfirmStandard");
			}

			NSMutableAttributedString stringAttribute = createConfirmAttributed (specialistInfo);
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);
			this.confirmBookAtimeVC = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, title, "", customMessage, TCLocalizabled.getText ("CancelTitle"), TCLocalizabled.getText ("OkTitle"));
			this.confirmBookAtimeVC.Delegate = this;
			this.confirmBookAtimeVC.display ();
		}

		private void sendRequestPreferred ()
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.InvokeOnMainThread (delegate {
					if (CoreSystem.ParseDataHelper.parseDataBooking (response)) {
						showSuccessPrefferd ();
					} else {
						showFailPrefferd ();
					}

					this.loadingView.dismiss ();
				});
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif

				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					MUtils.showNetworkFailed(this);
				});
			});
				
			double fee = 0.00;
			double price = 0.00;
			int type = (int)CoreSystem.Constants.TALKNOWTYPE.STANDARD;
			if (this.isStandardHour) {
				fee = (double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard;
				price = (double)specialistInfo.SpecialistDetail.Specializations [0].StandardRate;
			} else {
				fee = (double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour;
				price = (double)specialistInfo.SpecialistDetail.Specializations [0].OutOfHourRate;
				type = (int)CoreSystem.Constants.TALKNOWTYPE.OUTOFF;
			}
				
			DataHelperRequest.getInstance ().sendBookTimeRequest (specialistInfo.Account.Id, 
				MApplication.getInstance ().userId,
				this.enquiryText,
				this.dStartTime,
				this.dEndTime,
				fee,
				price, 
				(double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum, 
				(double)specialistInfo.SpecialistDetail.Specializations [0].MinimumCharge, 
				type,
				(int)CoreSystem.Constants.STATUS.Requested, successful, failure);
		}


		private NSMutableAttributedString createBooktimeSuccessAttributed ()
		{
			string strStart = "";
			string strEnd = "";
			string timeStart = "";
			string timeEnd = "";
			string tempTimeStart1 = "";
			string tempTimeStart2 = "";
	
			DateTime tStart = MUtils.stringToDateTimePlatform (this.startTime);
			DateTime tEnd = MUtils.stringToDateTimePlatform (this.endTime);
			DateTime tNow = CoreSystem.Utils.getDateTimeNow (MApplication.getInstance().timezoneName);

			bool isDiff = true;

			if (tStart.Date == tEnd.Date) {
				isDiff = false;
			} else {
				strEnd = MUtils.dateTimeToString (tEnd, MUtils.kFormatDate) + " ";
			}
				
			if (tStart.Date == tNow.Date) {
				if (isDiff) {
					strStart = "between today ";
					tempTimeStart1 = "today ";
				} else {
					strStart = "today between ";
				}
			} else {
				if (isDiff) {
					strStart = "between " + MUtils.dateTimeToString (tStart, MUtils.kFormatDate) + " ";
					tempTimeStart1 += MUtils.dateTimeToString (tStart, MUtils.kFormatDate) + " ";
				} else {
					strStart = "on the " + MUtils.dateTimeToString (tStart, MUtils.kFormatDate) + " between ";
					tempTimeStart2 = MUtils.dateTimeToString (tStart, MUtils.kFormatDate);
				}
			}

			strStart += MUtils.dateTimeToString (tStart, MUtils.kFormatDefaultTime);
			tempTimeStart1 += MUtils.dateTimeToString (tStart, MUtils.kFormatDefaultTime);
			strEnd += MUtils.dateTimeToString (tEnd, MUtils.kFormatDefaultTime);

			string text1 = TCLocalizabled.getText ("TextPreferTimeSuccess1");
			string param1 = strStart;
			string text2 = TCLocalizabled.getText ("TextPreferTimeSuccess2");
			string param2 = strEnd;
			string text3 = TCLocalizabled.getText ("TextPreferTimeSuccess3");

			string finalMessage = text1 + param1 + text2 + param2 + text3;

			var attributedString = new NSMutableAttributedString (finalMessage);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);
		
			/*
			 * calculate iFrom and iLength which will display blue text.
			 * */
			int iFrom = finalMessage.IndexOf ("today");
			int iLength = 0;
			if (iFrom > 0) {
				iLength = "today".Length;
			} else {
				iFrom = finalMessage.IndexOf ("on the")+ "on the ".Length;
				iLength = tempTimeStart2.Length;
			}

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (iFrom, iLength));

			/*
			 * calculate iFrom and iLength which will display blue text.
			 * */

			iFrom = finalMessage.IndexOf ("between") + "between ".Length;
			iLength = tempTimeStart1.Length;

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (iFrom, iLength));
					
			/*
			 * calculate iFrom and iLength which will display blue text.
			 * */
			iFrom = finalMessage.IndexOf ("and") + "and ".Length;
			iLength = strEnd.Length;

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (iFrom, iLength));



			return attributedString;
		}

		private void showWarningMessage (string title, string message)
		{
			TCAlertViewController alert = new TCAlertViewController (this, title, message, null, null, TCLocalizabled.getText ("OkTitle"));
			alert.display ();
		}

		private void showFailPrefferd ()
		{
			showWarningMessage (TCLocalizabled.getText ("TitleAlertBookATime"), TCLocalizabled.getText ("TextRequestFail"));
		}

		private void showSuccessPrefferd ()
		{
			NSMutableAttributedString stringAttribute = createBooktimeSuccessAttributed ();
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);
			this.alerConfirmSuccess = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextAlertTitleConsultationSuccess"), "", customMessage, null, TCLocalizabled.getText ("OkTitle"));
			this.alerConfirmSuccess.Delegate = this;
			this.alerConfirmSuccess.display ();
		}

		#region Notification Local

		public void notGetDataConfig (object notification)
		{
			noticeNotRetrieveData();
		}

		#endregion

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

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			if (alert == this.confirmBookAtimeVC) {
				this.loadingView.show ();
				sendRequestPreferred ();
			} else { 
				goBack ();
			}
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{

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
			string strStartDate = MUtils.dateTimeToString (CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName).AddSeconds(sysConfig.minimumLeadTime * 60), MUtils.kFormatDateTimeDefaultPlatform);
			string strEndDate = MUtils.dateTimeToString (CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName).AddSeconds((sysConfig.minimumLeadTime + sysConfig.minimumBooking) * 60), MUtils.kFormatDateTimeDefaultPlatform);

			this.lbStartTime.Text = strStartDate;
			this.lbEndTime.Text = strEndDate;
		}

		public void getConfigFail (TCConfigHelper helper)
		{
			TCGlobals.getInstance.isAtScreenConfig = false;
			noticeNotRetrieveData ();
		}

		#endregion

	}




}

