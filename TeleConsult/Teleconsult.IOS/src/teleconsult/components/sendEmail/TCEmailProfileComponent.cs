
using System;
using System.Drawing;

using Foundation;
using UIKit;
using ObjCRuntime;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCEmailProfileComponent : UIViewController, TCSendEmailHelperDelegate
	{

		private TCLoadingOverlay loadingView;
		public UIViewController parentController { get; set; }

		public TCEmailProfileComponentDelegate Delegate { get; set; }

		private Guid specialistId { get; set; }

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCEmailProfileComponent (UIViewController parentVC)
			: base (UserInterfaceIdiomIsPhone ? "TCEmailProfileComponent_iPhone" : "TCEmailProfileComponent_iPhone", null)
		{
			this.parentController = parentVC;
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
			this.loadingView = new TCLoadingOverlay (this, true, false);
			this.loadingView.build();

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);

			if (!TCGlobals.getInstance.myEmail.Equals ("")) {
				this.tfYourEmail.Text = CoreSystem.Utils.getEmail ();
			}

			configureView ();
			setup ();
		}

		public void build (Guid pSpecialistId)
		{
			this.specialistId = pSpecialistId;
	
			UIViewController vc = this.parentController;
			if (vc.NavigationController != null) {
				vc = vc.NavigationController;
			}
			this.View.Frame = vc.View.Frame;
			vc.AddChildViewController (this);
			vc.View.AddSubview (this.View);
		}

		void keyboardWasHide (NSNotification notification)
		{
			this.emailView.Center = this.View.Center;
		}

		void keyboardWasShown (NSNotification notification)
		{
			// Get size main screen
			CGRect fScreen = UIScreen.MainScreen.Bounds;
			nfloat height = fScreen.Height;

			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			this.emailView.Center = new CGPoint (fScreen.Width / 2, (height - heightKeyboard) / 2);
		}

		private void setup ()
		{
			this.lbTitle.Text = TCLocalizabled.getText ("TextTitleEmailProfile");
			this.lbPrompt.Text = TCLocalizabled.getText ("TextLablePromptEmail");
			this.tfYourEmail.Placeholder = TCLocalizabled.getText ("TextPlaceholderYourEmail");

			this.btnSend.SetTitle (TCLocalizabled.getText ("TitleSend"), UIControlState.Normal);
			this.btnSend.Font = MUtils.getFontWithSize (false, 16.0f);
			this.btnSend.UserInteractionEnabled = false;

			this.btnCancel.SetTitle (TCLocalizabled.getText ("CancelTitle"), UIControlState.Normal);

			this.emailView.Center = this.View.Center;

			// decorate email to someone
			this.tvEmail.TextColor = TCTheme.getInstance.getThemeColor(Theme.PlaceholderTextView);
			this.tvEmail.Text = TCLocalizabled.getText ("TextPlaceholderEmailToSomeOne");
			tvEmail.ShouldBeginEditing = t => {
				if (tvEmail.Text == TCLocalizabled.getText ("TextPlaceholderEmailToSomeOne")) {
					this.tvEmail.TextColor = UIColor.Black;
					tvEmail.Text = string.Empty;
				}	
				return true;
			};

			tvEmail.ShouldEndEditing = t => {
				if (string.IsNullOrEmpty (tvEmail.Text)) {
					tvEmail.Text = "";
				}

				return true;
			};

			// decorate email message
			this.tvMessage.TextColor = TCTheme.getInstance.getThemeColor(Theme.PlaceholderTextView);
			this.tvMessage.Text = TCLocalizabled.getText ("TextPlaceholderEmailMessage");

			this.emailView.Center = this.View.Center;

			tvMessage.ShouldBeginEditing = t => {
				if (tvMessage.Text == TCLocalizabled.getText ("TextPlaceholderEmailMessage")) {
					this.tvMessage.TextColor = UIColor.Black;
					tvMessage.Text = string.Empty;
				}	
				return true;
			};

			tvMessage.ShouldEndEditing = t => {
				if (string.IsNullOrEmpty (tvMessage.Text)) {
					tvMessage.Text = "";
				}

				return true;
			};

			tvEmail.ShouldChangeText = (textview, range, text) => {
				if (string.IsNullOrEmpty (text) && this.tvEmail.Text.Length <= 1) {
					this.btnSend.Font = MUtils.getFontWithSize (false, 16.0f);
					this.btnSend.UserInteractionEnabled = false;
				} else {
					this.btnSend.Font = MUtils.getFontWithSize (true, 16.0f);
					this.btnSend.UserInteractionEnabled = true;
				}

				return true;
			};
		}

		private void configureView ()
		{
			this.tvEmail.Layer.CornerRadius = 4;
			this.tvEmail.Layer.BorderWidth = 1.0f;
			this.tvEmail.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
			this.tvMessage.Layer.CornerRadius = 4;
			this.tvMessage.Layer.BorderWidth = 1.0f;
			this.tvMessage.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
			this.viewYourEmail.Layer.CornerRadius = 4;
			this.viewYourEmail.Layer.BorderWidth = 1.0f;
			this.viewYourEmail.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
			this.btnCancel.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);
			this.btnSend.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);

			this.emailView.Layer.CornerRadius = 7;
			this.emailView.Layer.MasksToBounds = true;
			this.tvMessage.BackgroundColor = UIColor.Clear;
			this.tvEmail.BackgroundColor = UIColor.Clear;
			this.viewYourEmail.BackgroundColor = UIColor.Clear;
		}

		#region IBAction

		partial void cancelClicked (NSObject sender)
		{
			this.tvEmail.ResignFirstResponder ();
			this.tvMessage.ResignFirstResponder ();
			this.View.RemoveFromSuperview ();
			this.RemoveFromParentViewController ();
		}

		partial void oKClicked (NSObject sender)
		{
			this.tvEmail.ResignFirstResponder ();
			this.tvMessage.ResignFirstResponder ();
			if (this.tfYourEmail.Text.Trim ().Equals("")) {
				MUtils.showAlert(this, TCLocalizabled.getText("TitleAlert"), TCLocalizabled.getText("WarningYourEmailRequired"));
				return;
			} else if (!CoreSystem.Utils.checkValidateEmail (this.tfYourEmail.Text.Trim ())) {
				MUtils.showAlert(this, TCLocalizabled.getText("TitleAlert"), TCLocalizabled.getText("WarningInvalidEmail"));
				return;
			}

			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginSendEmailProfileRequest (this); 
				});
			}

			TCSendEmailHelper sendEmailHelper = new TCSendEmailHelper (this.parentController);
			sendEmailHelper.Delegate = this;
			string message = this.tvMessage.Text.Equals(TCLocalizabled.getText("TextPlaceholderEmailMessage")) ? "" : this.tvMessage.Text;

			sendEmailHelper.send (this.specialistId, this.tvEmail.Text, this.tfYourEmail.Text, message);
		}

		#endregion

		#region TCSendEmailHelperDelegate
		public void beginSendEmailRequest(TCSendEmailHelper self)
		{
			this.loadingView.show ();
			if (this.Delegate != null) {
				this.Delegate.beginSendEmailProfileRequest (this);
			}
		}

		public void finishSendEmailRequest(TCSendEmailHelper self)
		{
			this.loadingView.dismiss ();
			if (this.Delegate != null) {
				this.Delegate.finishSendEmailProfileRequest (this);
			}
		}

		public void sendSuccess (TCSendEmailHelper self, string title, string message)
		{
			if (this.Delegate != null) {
				this.Delegate.emailProfileComponentSuccess (this, title, message);
			}

			this.View.RemoveFromSuperview ();
			this.RemoveFromParentViewController ();
		}

		public void sendFailure (TCSendEmailHelper self, string title, string message)
		{
			if (this.Delegate != null) {
				this.Delegate.emailProfileComponentFailure (this, title, message);
			}
		}

		#endregion

	}

	[CLSCompliant (false)]
	public interface TCEmailProfileComponentDelegate
	{
		void emailProfileComponentSuccess (TCEmailProfileComponent sender, string title, string message);

		void emailProfileComponentFailure (TCEmailProfileComponent sender, string title, string message);

		void beginSendEmailProfileRequest (TCEmailProfileComponent sender);

		void finishSendEmailProfileRequest (TCEmailProfileComponent sender);
	}
}

