
using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using RestSharp;
using Newtonsoft.Json;
using System.Collections.Generic;
using ObjCRuntime;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCTalknowViewController : TCCommonTemplateViewController, TCEnquiryViewControllerDelegate, TCAlertViewControllerDelegate, TCLogoAlertViewControllerDelegate
	{
		public SpecialistProfileInfos specialistInfo { get; set; }

		private TCEnquiryViewController alertViewVC;
		private string enquiryText;
		public TCCommonTemplateViewController parentController;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCTalknowViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCTalknowViewController_iPhone" : "TCTalknowViewController_iPhone", null)
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
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			this.View.BackgroundColor = UIColor.Clear;

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

		private NSMutableAttributedString createTalknowAttributed (SpecialistProfileInfos specialistInfo)
		{
			string text1 = TCLocalizabled.getText ("TextMessageConfirmTalknow1");
			string param1 = specialistInfo.Account.Name == null ? "" : specialistInfo.Account.Name;
			string text2 = TCLocalizabled.getText ("TextMessageConfirmTalknow2");
			string param2 = "$" + MUtils.getCost((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow);

			string text3 = TCLocalizabled.getText ("TextMessageConfirmTalknow3");
		
			string param3 = "$" + MUtils.getCost ((double)specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum);

			string text4 = String.Format (TCLocalizabled.getText ("TextMessageConfirmTalknow4"), MApplication.getInstance ().typeCard);

			var attributedString = new NSMutableAttributedString (text1 + param1 + text2 + param2 + text3 + param3 + text4);
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
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange ((text1 + param1).Length, text2.Length));
					
			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange ((text1 + param1 + text2).Length, param2.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + param1 + text2 + param2).Length, text3.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking), 

			}.Dictionary, new NSRange ((text1 + param1 + text2 + param2 + text3).Length, param3.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black, 

			}.Dictionary, new NSRange ((text1 + param1 + text2 + param2 + text3 + param3).Length, text4.Length));

			return attributedString;
		}

		private void showConfirm ()
		{
			NSMutableAttributedString stringAttribute = createTalknowAttributed (specialistInfo);
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);

			TCAlertViewController alertVC = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextAlertTitleTalknowConfirm"), "", customMessage, TCLocalizabled.getText ("CancelTitle"), TCLocalizabled.getText ("OkTitle"));
			alertVC.Delegate = this;
			alertVC.display ();
		}

		private void sendRequestTalknow ()
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.InvokeOnMainThread (delegate {

					TalkNowDTO talkDto = CoreSystem.ParseDataHelper.parseDataTalkNow (response);

					if (talkDto.success) {
						showSuccessTalknow ();
					} else {
						MAlertDTO alertDto =  MUtils.getMessageTalkRequest(talkDto);
						MUtils.showAlert(this, alertDto.title, alertDto.message);
					}

					if (parentController != null)
						parentController.loadingView.dismiss ();
				});
			});
				
			Action<string> failure = (response => {
				this.InvokeOnMainThread (delegate {
					if (parentController != null) {
						parentController.loadingView.dismiss ();
						MUtils.showAlert(this, TCLocalizabled.getText ("TitleAlert"), TCLocalizabled.getText ("TextRequestFail"));
					}
				});
			});
				
			string enquiry = "";
			if (!this.enquiryText.Equals (TCLocalizabled.getText ("TextPlaceholderEnqiry")))
				enquiry = this.enquiryText;

			DataHelperRequest.getInstance ().sendTalkNowRequest (specialistInfo.Account.Id,
				MApplication.getInstance ().userId, enquiry,
				(int)CoreSystem.Constants.TALKNOWTYPE.TALKNOW, 
				true,
				Guid.Empty,
				successful, failure);
		}

		private void showSuccessTalknow ()
		{
			if (parentController != null && parentController is TCSpecialistProfileViewController) {
				TCSpecialistProfileViewController parentProfileController = (TCSpecialistProfileViewController)parentController;
				parentProfileController.updateStateView ();
			} else if (parentController != null && parentController is TCConsultationPastViewController) {
				TCConsultationPastViewController parentProfileController = (TCConsultationPastViewController)parentController;
				parentProfileController.updateStateView ();
			}
		}

		private void removeVC()
		{
			TCGlobals.getInstance.currentVC = this.parentController;
			this.View.RemoveFromSuperview ();
			this.RemoveFromParentViewController ();
		}

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			if (parentController != null)
				parentController.loadingView.show ();

			sendRequestTalknow ();

			removeVC ();
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{
			removeVC ();
		}

		#endregion

		#region TCEnquiryViewDelegate

		public void buttonClicked (TCEnquiryViewController sender, int index)
		{
			if (index == 0) {
				this.enquiryText = sender.getTextView ().Text.Trim();

				if (this.enquiryText.Equals ("")) {
					MUtils.showAlert (this, TCLocalizabled.getText ("TitleWarningEnquiry"), TCLocalizabled.getText ("TextMessageRequiredEnquiry"));
					sender.getTextView ().BecomeFirstResponder();
				} else {
					showConfirm ();
					this.alertViewVC.View.Hidden = true;
				}
			} else {
				removeVC ();
			}
		}

		#endregion

		#region TCLogoAlertViewControllerDelegate

		public void alertLogoOkClicked (TCLogoAlertViewController alert) 
		{

			if (parentController != null)
				parentController.loadingView.show ();

			sendRequestTalknow ();

			removeVC ();
		}

		public void alertLogoCancelClicked (TCLogoAlertViewController alert)
		{
			removeVC ();
		}

		#endregion
	}
}

