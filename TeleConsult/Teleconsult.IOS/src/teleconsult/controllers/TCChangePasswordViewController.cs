using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreAnimation;
using CoreGraphics;
using CoreSystem;
using ObjCRuntime;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCChangePasswordViewController : TCCommonTemplateViewController
	{
		private CGRect frameChangePasswordView;
		public TCChangePasswordViewController () : base ("TCChangePasswordViewController", null)
		{
		}

		public TCChangePasswordViewController (IntPtr handle) : base (handle)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);
			NSNotificationCenter.DefaultCenter.AddObserver (UITextField.TextFieldTextDidChangeNotification, TextChangedEvent);
			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			this.frameChangePasswordView = this.View.Frame;

			MUtils.disableButton (this.btnSubmit);
			decorateUI ();
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, TCLocalizabled.getText("TitleScreenChangePassword"), true);
		}

		private void TextChangedEvent (NSNotification notification)
		{
			if (this.tfNewPass.Text.Length > 0 || this.tfOldPass.Text.Length > 0 || this.tfConfirmPass.Text.Length > 0) {
				MUtils.enableButton (this.btnSubmit);
			} else {
				MUtils.disableButton (this.btnSubmit);
			}
		}

		private void decorateUI()
		{
			MUtils.underlineButton (this.btnForgotPass);

			this.viewOldPass.Layer.CornerRadius = 4;
			this.viewOldPass.Layer.BorderWidth = 1;
			this.viewOldPass.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewOldPass.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundUsername);

			this.viewNewPass.Layer.CornerRadius = 4;
			this.viewNewPass.Layer.BorderWidth = 1;
			this.viewNewPass.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewNewPass.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundPassword);

			this.viewConfirmPass.Layer.CornerRadius = 4;
			this.viewConfirmPass.Layer.BorderWidth = 1;
			this.viewConfirmPass.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewConfirmPass.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundPassword);
		}
			
		#region Notification Local

		void keyboardWasHide (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			this.scrollView.Frame = new CGRect (frameChangePasswordView.X, frameChangePasswordView.Y + 108, frameChangePasswordView.Width, frameChangePasswordView.Height - 108);//frameLoginView;
			this.btnDismiss.Frame = frameChangePasswordView;
			this.scrollView.ContentSize = new CGSize (0, 0);
		}

		void keyboardWasShown (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			CGRect frameView = this.View.Frame;
			frameView.Height = frameChangePasswordView.Height - heightKeyboard;
			this.scrollView.Frame = new CGRect (frameView.X, frameView.Y + 108, frameView.Width, frameView.Height - 108);//frameView;
			this.btnDismiss.Frame = frameView;
			this.scrollView.ContentSize = new CGSize (0, this.btnForgotPass.Frame.Y + this.btnForgotPass.Frame.Height * 2);
		}

		#endregion

		#region IBAction
		partial void dismissKeyboard (NSObject sender)
		{
			this.tfConfirmPass.ResignFirstResponder();
			this.tfNewPass.ResignFirstResponder();
			this.tfOldPass.ResignFirstResponder();
		}

		partial void forgotPasswordClicked (NSObject sender)
		{
			this.PerformSegue("TCForgottenPasswordViewController2", this);
		}

		partial void submitChangePassword (NSObject sender)
		{
			if (!checkValidPassword())
				return;

			this.loadingView.show();
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif
				this.InvokeOnMainThread (delegate {
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);

					if (result != null && result.ContainsKey ("Success")) {
						bool status = (bool)result ["Success"];
						if (status) {
							warningResultChange(TCLocalizabled.getText("TitleChangePasswordSuccess"));
							resetAllField();
						} else {
							warningResultChange(result["Error"].ToString());
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
				
			DataHelperRequest.getInstance ().sendChangePassword (this.tfOldPass.Text, this.tfNewPass.Text, this.tfConfirmPass.Text, successful, failure);
		}
		#endregion

		private void emailInvalidPassword (string message)
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

		private bool checkValidPassword()
		{
			bool status = true;

			if (this.tfOldPass.Text.Equals ("")) {
				warningResultChange (TCLocalizabled.getText("WarningOldPasswordRequired"));
				return false;
			}

			if (this.tfNewPass.Text.Equals ("")) {
				warningResultChange (TCLocalizabled.getText("WarningNewPasswordRequired"));
				return false;
			}

			if (this.tfConfirmPass.Text.Equals ("")) {
				warningResultChange (TCLocalizabled.getText("WarningConfirmPasswordRequired"));
				return false;
			}

			if (!this.tfNewPass.Text.Equals(this.tfConfirmPass.Text)) {
				warningResultChange (TCLocalizabled.getText("WarningNewPasswordNotMatch"));
				return false;
			}
				
			if (status) {
				status = CoreSystem.Utils.checkValidationPass (this.tfNewPass.Text)
				&& CoreSystem.Utils.checkValidationPass (this.tfConfirmPass.Text);
				if (!status) {
					string message = TCLocalizabled.getText ("WarningInvalidPasswordFormat");
					warningResultChange (message);
				} else {
					this.lbStatus.Alpha = 0;
				}
			}

			return status;
		}

		private void warningResultChange (string message)
		{
			MUtils.showAlert (this, TCLocalizabled.getText("TitleAlertChangePassword"), message);
		}

		private void resetAllField()
		{
			this.tfNewPass.Text = "";
			this.tfConfirmPass.Text = "";
			this.tfOldPass.Text = "";
			this.lbStatus.Alpha = 0;
		}
	}
}

