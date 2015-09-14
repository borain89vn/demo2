using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;
using ObjCRuntime;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCEnquiryViewController : UIViewController
	{
		public TCEnquiryViewControllerDelegate pDelegate;

		public int maxCharacters { get; set; }
		private string title;
		private string placeholder;
		private string titleOK;
		private string titleCancel;
		private bool ableScroll;
		private UITextAlignment type;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCEnquiryViewController (string title, string placeholder, string titleButtonOk, string titleButtonCancel, UITextAlignment type, bool ableScroll)
			: base (UserInterfaceIdiomIsPhone ? "TCEnquiryViewController_iPhone" : "TCEnquiryViewController_iPhone", null)
		{
			this.title = title;
			this.placeholder = placeholder;
			this.titleOK = titleButtonOk;
			this.titleCancel = titleButtonCancel;
			this.ableScroll = ableScroll;
			this.type = type;
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

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			// Perform any additional setup after loading the view, typically from a nib.
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);

			configureView ();
			setup ();
		}

		void keyboardWasHide(NSNotification notification)
		{
			this.alertView.Center = this.View.Center;
		}

		void keyboardWasShown(NSNotification notification)
		{
			// Get size main screen
			CGRect fScreen = UIScreen.MainScreen.Bounds;
			nfloat height = fScreen.Height;

			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification(notification);
			nfloat heightKeyboard = keyboardFrame.Height;
		
			this.alertView.Center = new CGPoint (fScreen.Width / 2 , (height - heightKeyboard) / 2);
		}

		private void setup()
		{
			this.lbTitle.Text = this.title;
			this.btnOk.SetTitle (this.titleOK, UIControlState.Normal);
			this.btnOk.Font = MUtils.getFontWithSize (false, 16.0f);
			this.btnOk.UserInteractionEnabled = false;

			this.btnCancel.SetTitle (this.titleCancel, UIControlState.Normal);

			this.tvMessage.TextColor = TCTheme.getInstance.getThemeColor(Theme.PlaceholderTextView);
			this.tvMessage.Text = this.placeholder;
			this.tvMessage.TextAlignment = type;
			this.tvMessage.ScrollEnabled = this.ableScroll;
	
			this.alertView.Center = this.View.Center;

			tvMessage.ShouldBeginEditing = t => {
				if (tvMessage.Text == this.placeholder) {
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

			tvMessage.ShouldChangeText = (textview , range, text ) => {
				if (string.IsNullOrEmpty (text) && this.tvMessage.Text.Length <= 1) {
					this.btnOk.Font = MUtils.getFontWithSize (false, 16.0f);
					this.btnOk.UserInteractionEnabled = false;
				} else {

					this.btnOk.Font = MUtils.getFontWithSize (true, 16.0f);
					this.btnOk.UserInteractionEnabled = true;
					if(maxCharacters != -1) {
						var newLength = tvMessage.Text.Length + text.Length - range.Length;
						return newLength <= maxCharacters;
					}
				}
	
				return true;
			};
		}
			
		private void configureView()
		{
			this.alertView.Layer.CornerRadius = 7;
			this.alertView.Layer.MasksToBounds = true;

			this.tvMessage.Layer.CornerRadius = 4;
			this.tvMessage.Layer.BorderWidth = 1.0f;
			this.tvMessage.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
		}

		public UITextView getTextView()
		{
			return this.tvMessage;
		}

		#region IBAction
		partial void cancelClicked (NSObject sender)
		{
			this.tvMessage.ResignFirstResponder();
			if (this.pDelegate != null)
				this.pDelegate.buttonClicked(this, 1);
		}

		partial void oKClicked (NSObject sender)
		{
			this.tvMessage.ResignFirstResponder();
			if (this.pDelegate != null)
				this.pDelegate.buttonClicked(this, 0);
		}
		#endregion
	}

	[CLSCompliant (false)]
	public interface TCEnquiryViewControllerDelegate
	{
		void buttonClicked(TCEnquiryViewController sender, int index);
	}
}

