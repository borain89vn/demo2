using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSendFeedbackComponent : TCFeedbackViewControllerDelegate
	{
		private UIViewController parentController;
		public TCSendFeedbackComponentDelegate Delegate;

		private Guid specialistId;
		private Guid iCallId;

		public TCSendFeedbackComponent (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void build (Guid pSpecialistId, Guid iCallId)
		{
			this.iCallId = iCallId;
			this.specialistId = pSpecialistId;
			TCFeedbackViewController feedBackVC = new TCFeedbackViewController (UITextAlignment.Justified);
			feedBackVC.pDelegate = this;

			UIViewController vc = this.parentController;
			if (vc.NavigationController != null) {
				vc = vc.NavigationController;
			}
				
			feedBackVC.View.Frame = vc.View.Frame;
			vc.AddChildViewController (feedBackVC);
			vc.View.AddSubview (feedBackVC.View);
		}

		private void sendFeedback (string text, int numRating)
		{
			if (this.Delegate != null)
				this.Delegate.beginSendRequestFeedback ();


			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.parentController.InvokeOnMainThread (delegate {
					if (this.Delegate != null) {
						string message = TCLocalizabled.getText("TextRequestFail");
						bool status = CoreSystem.ParseDataHelper.parseDataFeedback(response);
						if (status) {
							message = TCLocalizabled.getText("TextMessageSendFeedbackSuccess");
						} 

						this.Delegate.sendFeedbackResult (status, TCLocalizabled.getText("TitleAlertSendFeedback"), message, numRating, text);
					}
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.sendFeedbackResult(false, TCLocalizabled.getText("TitleNetworkStatus"), TCLocalizabled.getText("TextConnectionFailed") , 0, text);
				});
			});

			DataHelperRequest.getInstance ().sendFeedbackRequest (this.specialistId, MApplication.getInstance ().userId, this.iCallId, numRating, text, successful, failure);
		}

		#region TCFeedbackViewControllerDelegate
		public void buttonOkClicked (TCFeedbackViewController sender, int index)
		{
			if (index == 0) {
				string textFeedback = "";
				if (!sender.getTextView ().Text.Equals (TCLocalizabled.getText ("TextPlaceholderFeedback"))) {
					textFeedback = sender.getTextView ().Text.Trim ();
				}

				sendFeedback (textFeedback, sender.getNumberRating ());
			}

			sender.View.RemoveFromSuperview ();
			sender.RemoveFromParentViewController ();
		}
		#endregion
	}
		
	public interface TCSendFeedbackComponentDelegate
	{
		void beginSendRequestFeedback();
		void sendFeedbackResult (bool isSuccess, string title, string message, int numRate, string feedback);
	}
}

