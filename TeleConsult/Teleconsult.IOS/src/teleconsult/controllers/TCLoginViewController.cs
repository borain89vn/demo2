using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using System.Collections.Generic;
using System.Runtime.Serialization.Json;
using System.IO;
using RestSharp;
using Newtonsoft.Json.Linq;
using ObjCRuntime;
using CoreGraphics;
using Newtonsoft.Json;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCLoginViewController : TCCommonTemplateViewController, TCSignInHelperDelegate, TCAlertViewControllerDelegate
	{
		public TCLoginViewControllerDelegate Delegate { get; set; }
		private NotifyNetworkView networkView;
		public bool isRemember { get; set; }
		public bool isShowPass { get; set; }
		public bool isLoginNormal;
		private CGRect frameLoginView;

		public TCLoginViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
		
			// Perform any additional setup after loading the view, typically from a nib.
			NSNotificationCenter.DefaultCenter.AddObserver (UITextField.TextFieldTextDidChangeNotification, TextChangedEvent);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);

			TCGlobals.getInstance.isAllowShowAlert = true;

			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			this.tfUsername.ShouldReturn += (UITextField textField) => {
				this.tfPassword.BecomeFirstResponder ();

				return true;
			};

			this.tfPassword.ShouldReturn += (UITextField textField) => {
				signIn (this.btnSignIn);

				return true;
			};
		
			isRemember = checkRememberAccount ();
			if (isRemember) {
				this.cbRemember.SetImage (UIImage.FromBundle ("login_check"), UIControlState.Normal);
				this.tfUsername.Text = CoreSystem.Utils.getUserName ();
				this.tfPassword.Text = CoreSystem.Utils.getPassWord ();
			} else {
				this.cbRemember.SetImage (UIImage.FromBundle ("login_uncheck"), UIControlState.Normal);
			}

			if (this.tfUsername.Text.Equals ("") && this.tfPassword.Text.Equals ("")) {
				enableButtonSignIn (false);
			} else {
				enableButtonSignIn (true);
			}

			this.frameLoginView = this.View.Frame;

			decorateUI ();
		}

		private void decorateUI ()
		{
			MUtils.underlineButton (this.btnForgetPass);
			MUtils.underlineButton (this.btnRegister);

			this.viewUsername.Layer.CornerRadius = 3;
			this.viewUsername.Layer.BorderWidth = 1;
			this.viewUsername.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewUsername.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundUsername);

			this.viewPassword.Layer.CornerRadius = 3;
			this.viewPassword.Layer.BorderWidth = 1;
			this.viewPassword.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewPassword.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundPassword);
		}

		private void TextChangedEvent (NSNotification notification)
		{
			if (this.tfPassword.Text.Length > 0 || this.tfUsername.Text.Length > 0) {
				enableButtonSignIn (true);
			} else {
				enableButtonSignIn (false);
			}
		}

		private void enableButtonSignIn (bool enable)
		{
			if (enable) {
				this.btnSignIn.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
				this.btnSignIn.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);
			} else {
				this.btnSignIn.SetBackgroundImage (UIImage.FromBundle ("disable_background"), UIControlState.Normal);
			}

			this.btnSignIn.UserInteractionEnabled = enable;
		}

		private void c_ReachabilityChanged (object sender, EventArgs e)
		{
			showNetworkNotify ();
			Console.Out.WriteLine ("Here I can handle that network reachability changed.");
			Console.Out.WriteLine (Reachability.InternetConnectionStatus ());
		}

		private void showNetworkNotify ()
		{
			CGRect tFrame = this.networkView.Frame;
			tFrame.Y = 20.0f;
			this.networkView.Frame = tFrame;
			UIView.BeginAnimations ("slideAnimationNetwork");

			UIView.SetAnimationDuration (1);
			UIView.SetAnimationCurve (UIViewAnimationCurve.Linear);
			UIView.SetAnimationDelegate (this);
			UIView.SetAnimationDidStopSelector (
				new Selector ("networkSlideAnimationFinished"));

			CGRect tFrame2 = this.networkView.Frame;
			tFrame2.Y = 64.0f;

			this.networkView.Frame = tFrame2;
			this.View.AddSubview (this.networkView);
			UIView.CommitAnimations ();
		}

		[Export ("networkSlideAnimationFinished")]
		void slideStopped ()
		{

		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, TCLocalizabled.getText ("TitleScreenSignIn"), true);
		}

		#region Notification Local

		void keyboardWasHide (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;
		
			this.scrollView.Frame = new CGRect (frameLoginView.X, frameLoginView.Y + 108, frameLoginView.Width, frameLoginView.Height - 108);//frameLoginView;
			this.btnDismiss.Frame = frameLoginView;
			this.scrollView.ContentSize = new CGSize (0, 0);
		}

		void keyboardWasShown (NSNotification notification)
		{
			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			CGRect frameView = this.View.Frame;
			frameView.Height = frameLoginView.Height - heightKeyboard;
			this.scrollView.Frame = new CGRect (frameView.X, frameView.Y + 108, frameView.Width, frameView.Height - 108);//frameView;
			this.btnDismiss.Frame = frameView;
			this.scrollView.ContentSize = new CGSize (0, this.btnForgetPass.Frame.Y + this.btnForgetPass.Frame.Height * 2);
		}

		#endregion

		private bool checkRememberAccount ()
		{
			return CoreSystem.Utils.getRememberLogin ();
		}

		private void showWarningMessage (string title,string message)
		{
			MUtils.showAlert (this, title, message);
		}

		#region IBAction

		partial void forgotPasswordClicked (UIKit.UIButton sender)
		{
			this.PerformSegue ("TCForgottenPasswordViewController", this);
		}

		partial void signIn (UIButton sender)
		{
			TCGlobals.getInstance.isWatingLogin = true;
			this.tfPassword.ResignFirstResponder ();
			this.tfUsername.ResignFirstResponder ();

			if (!MUtils.validateLogin (tfUsername.Text, this.tfPassword.Text).Equals ("")) {
				showWarningMessage (TCLocalizabled.getText("TextAlertSignIn"), MUtils.validateLogin (tfUsername.Text, this.tfPassword.Text));
				return;
			}

			TCSignInHelper signInService = new TCSignInHelper (this);
			signInService.Delegate = this;
			signInService.requestSignIn (this.tfUsername.Text.Trim (), this.tfPassword.Text, this.isRemember);
		}

		partial void signUpClicked (UIKit.UIButton sender)
		{
			this.PerformSegue ("FromLoginToRegister", this);
		}

		#endregion

		private void saveUserAndPass (string username, string password)
		{
			CoreSystem.Utils.keepUserName (username);
			CoreSystem.Utils.keepPassWord (password);
		}

		//this.PerformSegue("TLBookingManagementViewController", this);
		partial void dismissKeyboard (UIButton sender)
		{
			this.tfPassword.ResignFirstResponder ();
			this.tfUsername.ResignFirstResponder ();
		}

		partial void rememberMe (UIButton sender)
		{
			if (isRemember) {
				this.cbRemember.SetImage (UIImage.FromBundle ("login_uncheck"), UIControlState.Normal);
			} else {
				this.cbRemember.SetImage (UIImage.FromBundle ("login_check"), UIControlState.Normal);
			}

			isRemember = !isRemember;
		}
		partial void showPassClicked (UIKit.UIButton sender){
			if (isShowPass) {
				this.cbShowPass.SetImage (UIImage.FromBundle ("login_uncheck"), UIControlState.Normal);
				tfPassword.SecureTextEntry = true;
			} else {
				this.cbShowPass.SetImage (UIImage.FromBundle ("login_check"), UIControlState.Normal);
				tfPassword.SecureTextEntry = false;
			}
			isShowPass = !isShowPass;
		}
		public override void PrepareForSegue (UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue (segue, sender);

			// do first a control on the Identifier for your segue
			if (segue.Identifier.Equals ("FromLoginToRegister")) {
				var registerVC = (TCRegisterViewController)segue.DestinationViewController;
				registerVC.title = TCLocalizabled.getText ("TextTitleRegisterUser").ToUpper();
				registerVC.url = CoreSystem.HttpConstants.BASE_URL +  String.Format("Account/Register?role=Customer&accessToken={0}", Guid.Empty);
			}
		}

		#region TCSignInDelegate
		public void beginRequestLogin (TCSignInHelper helper)
		{
			this.loadingView.show ();
		}

		public void requestLoginSuccess (TCSignInHelper helper)
		{
			this.lbStatus.Alpha = 0;
			this.loadingView.dismiss ();

			if (MApplication.getInstance ().isBetaMode) {
				showWarningBetaMode ();
			} else {
				gotoCurrentView ();
			}
		}

		private void gotoCurrentView()
		{
			if (isLoginNormal || MApplication.getInstance().isConsultant) {
				gotoDashboard ();
			} else {
				goBackAsPopView ();
			}
		}

		private void gotoDashboard()
		{
			this.PerformSegue ("TCMainTabViewController", this);
		}

		private void goBackAsPopView()
		{
			this.NavigationController.PopViewController (false);
			MApplication.getInstance ().isRequired = true;
			if (this.Delegate != null) {
				this.Delegate.authenticationSuccess ();
			}
		}

		private void showWarningBetaMode()
		{
			TCAlertViewController alertVC = new TCAlertViewController (this, TCLocalizabled.getText("TitleAlert"), TCLocalizabled.getText("TextMessageWarningBetaVersion"), null, null, TCLocalizabled.getText("OkTitle"));
			alertVC.Delegate = this;
			alertVC.display ();
		}

		public void requestLoginFail (TCSignInHelper helper, string title, string message)
		{
			showWarningMessage (title, message);
			loadingView.dismiss ();
		}
		public void failNetwork(TCSignInHelper helper, string title, string message)
		{
			loadingView.dismiss ();
			showWarningMessage(title, message);
		}

		public void failNotActive(TCSignInHelper helper)
		{
			this.PerformSegue ("LoginVCToActiveCodeVC", this);
			loadingView.dismiss ();
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			gotoCurrentView ();
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion
	}

	public interface TCLoginViewControllerDelegate
	{
		void authenticationSuccess();
	}

}

 