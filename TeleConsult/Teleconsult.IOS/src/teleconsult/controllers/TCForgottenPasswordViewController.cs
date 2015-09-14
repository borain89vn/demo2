using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using System.Collections.Generic;
using Newtonsoft.Json;
using ObjCRuntime;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCForgottenPasswordViewController : TCCommonTemplateViewController
	{
		private CGRect frameForgotPasswordView;

		public TCForgottenPasswordViewController () : base ("TCForgottenPasswordViewController", null)
		{
		}

		public TCForgottenPasswordViewController (IntPtr handle) : base (handle)
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
			NSNotificationCenter.DefaultCenter.AddObserver (UITextField.TextFieldTextDidChangeNotification, TextChangedEvent);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);

			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			this.frameForgotPasswordView = this.View.Frame;

			this.lbNote.Text = TCLocalizabled.getText ("TextTtilePromptForgotPassword");

			MUtils.disableButton (this.btnSendEmail);
			decorateUI ();
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, TCLocalizabled.getText("TitleScreenForgotPassword"), true);
		}

		private void decorateUI()
		{
			this.viewEmail.Layer.CornerRadius = 4;
			this.viewEmail.Layer.BorderWidth = 1;
			this.viewEmail.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewEmail.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundUsername);
		}

		private void TextChangedEvent (NSNotification notification)
		{
			if (this.tfEmail.Text.Length > 0) {
				MUtils.enableButton (this.btnSendEmail);
			} else {
				MUtils.disableButton (this.btnSendEmail);
			}
		}

		#region Notification Local

		void keyboardWasHide (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			this.scrollView.Frame = new CGRect (frameForgotPasswordView.X, frameForgotPasswordView.Y + 108, frameForgotPasswordView.Width, frameForgotPasswordView.Height - 108);//frameLoginView;
			this.btnDismiss.Frame = frameForgotPasswordView;
			this.scrollView.ContentSize = new CGSize (0, 0);
		}

		void keyboardWasShown (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			CGRect frameView = this.View.Frame;
			frameView.Height = frameForgotPasswordView.Height - heightKeyboard;
			this.scrollView.Frame = new CGRect (frameView.X, frameView.Y + 108, frameView.Width, frameView.Height - 108);//frameView;
			this.btnDismiss.Frame = frameView;
			this.scrollView.ContentSize = new CGSize (0, this.btnSendEmail.Frame.Y + this.btnSendEmail.Frame.Height * 1.5f);
		}

		#endregion

		#region IBAction
		partial void dismissKeyboard (NSObject sender)
		{
			this.tfEmail.ResignFirstResponder();
		}

		partial void sendEmail (NSObject sender)
		{
			if (!checkValidEmail())
				return;
				
			this.loadingView.show();

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.InvokeOnMainThread (delegate {
					Dictionary<string, object> result = ParseDataHelper.parseDataForgotPass(response);

					if (result != null && result.ContainsKey ("Success")) {
						bool status = (bool)result ["Success"];
						if (status) {
							warningResultSend(String.Format(TCLocalizabled.getText("WarningForgotPasswordSuccess"), this.tfEmail.Text.Trim()));
						} else {
							warningResultSend(result["Error"].ToString());
						}
					} else {
						MUtils.showRequestFail(this);
					}

					this.loadingView.dismiss();
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.InvokeOnMainThread (delegate {
					MUtils.showRequestFail(this);
					this.loadingView.dismiss ();
				});
			});
				
			DataHelperRequest.getInstance ().sendForgetPassword (this.tfEmail.Text.Trim(), successful, failure);
		}
		#endregion

		private bool checkValidEmail()
		{
			bool status = this.tfEmail.Text.Equals("");
			if (status) {
				warningResultSend (TCLocalizabled.getText("WarningEmailRequired"));
				status = false;
			} else {
				status = CoreSystem.Utils.checkValidateEmail (this.tfEmail.Text.Trim ());
				if (!status) {
					warningResultSend (TCLocalizabled.getText("WarningInvalidEmail"));
				} else {
					this.lbStatus.Alpha = 0;
				}
			}
			return status;
		}

		private void emailInvalidMessage (string message)
		{
			UIView.BeginAnimations ("slideAnimation");

			UIView.SetAnimationDuration (2);
			UIView.SetAnimationCurve (UIViewAnimationCurve.Linear);
			UIView.SetAnimationDelegate (this);
			UIView.SetAnimationDidStopSelector (
				new Selector ("slideAnimationFinished"));

			this.lbStatus.Alpha = 1;
			this.lbStatus.Text = message;

			UIView.CommitAnimations ();
		}
	
		private void warningResultSend (string message)
		{
			MUtils.showAlert(this, TCLocalizabled.getText("TitleAlertForgotPassword"), message);
		}
	}
}

