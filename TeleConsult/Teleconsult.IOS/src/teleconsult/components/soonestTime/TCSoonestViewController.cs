using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using System.Collections.Generic;
using RestSharp;
using Newtonsoft.Json;
using ObjCRuntime;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSoonestViewController : TCCommonTemplateViewController, TCEnquiryViewControllerDelegate, TCAlertViewControllerDelegate
	{
		public TCCommonTemplateViewController parentController;
		private TCEnquiryViewController alertViewVC;

		public SpecialistProfileInfos specialistInfo { get; set; }

		private string enquiryText;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCSoonestViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCSoonestViewController_iPhone" : "TCSoonestViewController_iPhone", null)
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

			// Perform any additional setup after loading the view, typically from a nib.
			this.View.BackgroundColor = UIColor.Clear;

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}
		
			showEntryEnqiry ();
		}

		private void showEntryEnqiry ()
		{
			this.alertViewVC = new TCEnquiryViewController (TCLocalizabled.getText ("TitleWarningEnquiry"), TCLocalizabled.getText ("TextPlaceholderEnqiry"), TCLocalizabled.getText ("DoneTitle"), TCLocalizabled.getText ("CancelTitle"), UITextAlignment.Justified, false);
			this.alertViewVC.pDelegate = this;
			this.alertViewVC.maxCharacters = 160;
			this.alertViewVC.View.Frame = this.View.Frame;
			this.AddChildViewController (this.alertViewVC);
			this.View.AddSubview (this.alertViewVC.View);
		}

		private NSMutableAttributedString createASAPAttributed (SpecialistProfileInfos specialistInfo)
		{
			string text1 = TCLocalizabled.getText ("TextMessageConfirmSoonest1");
			string param1 = specialistInfo.Account.Name == null ? "" : specialistInfo.Account.Name;
			string text2 = TCLocalizabled.getText ("TextMessageConfirmSoonest2");
			string param2 = "$" + MUtils.getCost((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum);
			string text3 = TCLocalizabled.getText ("TextMessageConfirmSoonest3");
		
			var attributedString = new NSMutableAttributedString (text1 + param1 + text2 + param2 + text3);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange (0, text1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (text1.Length, param1.Length));
					
			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange ((text1 + param1 + text2).Length, param2.Length));
					
			return attributedString;
		}

		private void showConfirm ()
		{
			NSMutableAttributedString stringAttribute = createASAPAttributed (specialistInfo);
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);
			TCAlertViewController alertVC = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextAlertTitleConfirmSoonest"), "", customMessage, TCLocalizabled.getText ("CancelTitle"), TCLocalizabled.getText ("OkTitle"));
			alertVC.Delegate = this;
			alertVC.display ();
		}

		private void sendRequestASAP ()
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif
			
				this.InvokeOnMainThread (delegate {
					if (CoreSystem.ParseDataHelper.parseDataBooking (response)) {
						showSuccessASAP ();
					} else {
						showFailASAP ();
					}
					parentController.loadingView.dismiss ();
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.InvokeOnMainThread (delegate {
					parentController.loadingView.dismiss ();
				});
			});
				
			string enquiry = "";
			if (!this.enquiryText.Equals (TCLocalizabled.getText ("TextPlaceholderEnqiry")))
				enquiry = this.enquiryText;
				
			DataHelperRequest.getInstance ().sendBookTimeRequest (specialistInfo.Account.Id, 
				MApplication.getInstance ().userId,
				enquiry, 
				CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName), 
				CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName), 
				(double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard,
				(double)specialistInfo.SpecialistDetail.Specializations [0].StandardRate,
				(double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum,
				(double)specialistInfo.SpecialistDetail.Specializations [0].MinimumCharge,
				(int)CoreSystem.Constants.TALKNOWTYPE.ASAP, (int)CoreSystem.Constants.STATUS.Requested, successful, failure);
		}

		private NSMutableAttributedString createASAPSuccessAttributed (string text)
		{
			var attributedString = new NSMutableAttributedString (text);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange (0, text.Length));

			return attributedString;
		}

		private void showSuccessASAP ()
		{
			NSMutableAttributedString stringAttribute = createASAPSuccessAttributed (TCLocalizabled.getText ("TextMessageASAPSuccess"));
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);
			TCAlertViewController alertVC = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextAlertTitleSoonestSuccess"), "", customMessage, null, TCLocalizabled.getText ("OkTitle"));
			alertVC.display ();

			removeVC ();
		}

		private void showFailASAP ()
		{
			TCAlertViewController alertVC = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertBookATime"), TCLocalizabled.getText ("TextRequestFail"), null, null, TCLocalizabled.getText ("OkTitle"));
			alertVC.display ();

			removeVC ();
		}

		private void removeVC()
		{
			TCGlobals.getInstance.currentVC = this.parentController;
			this.View.RemoveFromSuperview ();
			this.RemoveFromParentViewController ();
		}


		#region TCEnquiryViewControllerDelegate

		public void buttonClicked (TCEnquiryViewController sender, int index)
		{
			if (index == 0) {
				this.enquiryText = sender.getTextView ().Text.Trim();
				if (this.enquiryText.Equals ("")) {
					MUtils.showAlert (this, TCLocalizabled.getText ("TitleWarningEnquiry"), TCLocalizabled.getText ("TextMessageRequiredEnquiry"));
					sender.getTextView ().BecomeFirstResponder();
				} else {
					showConfirm ();
					this.View.Hidden = true;
				}
			} else {
				removeVC ();
			}
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			parentController.loadingView.show ();
			sendRequestASAP ();
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{
			removeVC ();
		}

		#endregion
	}
}

