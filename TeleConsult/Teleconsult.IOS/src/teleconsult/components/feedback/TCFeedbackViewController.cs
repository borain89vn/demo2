using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;
using ObjCRuntime;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCFeedbackViewController : UIViewController
	{
		public TCRatingBar ratingBar { get; set; }
		public TCFeedbackViewControllerDelegate pDelegate;
		private UITextAlignment type;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCFeedbackViewController (UITextAlignment type)
			: base (UserInterfaceIdiomIsPhone ? "TCFeedbackViewController_iPhone" : "TCFeedbackViewController_iPhone", null)
		{
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
			
			// Perform any additional setup after loading the view, typically from a nib.
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);

			SizeF size= new Size((int)this.viewRating.Frame.Width, (int)this.viewRating.Frame.Height);
			this.ratingBar  = new TCRatingBar (size, new PointF(0,0) , 4);
			//this.ratingBar.pDelegate = this;
			this.viewRating.AddSubview (this.ratingBar);

			configureView ();
			setup ();
		}

		void keyboardWasHide(NSNotification notification)
		{
			this.viewFeedback.Center = this.View.Center;
		}

		void keyboardWasShown(NSNotification notification)
		{
			// Get size main screen
			CGRect fScreen = UIScreen.MainScreen.Bounds;
			nfloat height = fScreen.Height;

			// Get the size of the keyboard.
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification(notification);
			nfloat heightKeyboard = keyboardFrame.Height;

			this.viewFeedback.Center = new CGPoint (fScreen.Width / 2 , (height - heightKeyboard) / 2);
		}

		private void setup()
		{
			this.lbTitle.Text = TCLocalizabled.getText ("TitleFeedback");
			this.btnOk.SetTitle (TCLocalizabled.getText ("TitleSend"), UIControlState.Normal);
			this.btnOk.Font = MUtils.getFontWithSize (true, 15.0f);
			this.btnOk.UserInteractionEnabled = true;

			this.btnCancel.SetTitle (TCLocalizabled.getText ("CancelTitle"), UIControlState.Normal);

			this.tvMessage.TextColor = TCTheme.getInstance.getThemeColor(Theme.PlaceholderTextView);
			this.tvMessage.Text = TCLocalizabled.getText ("TextPlaceholderFeedback");
			this.tvMessage.TextAlignment = type;
			this.tvMessage.ScrollEnabled = true;

			this.viewFeedback.Center = this.View.Center;

			tvMessage.ShouldBeginEditing = t => {
				if (tvMessage.Text == TCLocalizabled.getText ("TextPlaceholderFeedback")) {
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

//			tvMessage.ShouldChangeText = (textview , range, text ) => {
//				if ((string.IsNullOrEmpty (text) && this.tvMessage.Text.Length <= 1) && getNumberRating() == 0) {
//					this.btnOk.Font = MUtils.getFontWithSize(false, 15.0f);
//					this.btnOk.UserInteractionEnabled = false;
//				} else {
//					this.btnOk.Font = MUtils.getFontWithSize(true, 15.0f);
//					this.btnOk.UserInteractionEnabled = true;
//				}
//
//				return true;
//			};
		}

		private void configureView()
		{
			this.viewFeedback.Layer.CornerRadius = 7;
			this.viewFeedback.Layer.MasksToBounds = true;

			this.tvMessage.Layer.CornerRadius = 4;
			this.tvMessage.Layer.BorderWidth = 1.0f;
			this.tvMessage.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
		}
		 
		public UITextView getTextView()
		{
			return this.tvMessage;
		}

		public int getNumberRating()
		{
			int numRate = this.ratingBar.getcurrentRatings ();
			double temp = numRate / 2.00 + 0.01;

			return (int)Math.Round (temp);
		}

		partial void cancelClicked (NSObject sender)
		{
			if (this.pDelegate != null)
				this.pDelegate.buttonOkClicked(this, 1);
		}

		partial void oKClicked (NSObject sender)
		{
			if (this.getNumberRating() == 0) { 
				MUtils.showAlert(this, TCLocalizabled.getText("TitleAlertSendFeedback"), TCLocalizabled.getText("TextMessageNeedRating"));
			} else if (this.pDelegate != null)
				this.pDelegate.buttonOkClicked(this, 0);
		}
			
//		// Implement TCRatingBarDelegate
//		public void ratingBarClicked()
//		{
//			this.btnOk.Font = MUtils.getFontWithSize (true, 15.0f);
//			this.btnOk.UserInteractionEnabled = true;
//		}
	}

	[CLSCompliant (false)]
	public interface TCFeedbackViewControllerDelegate
	{
		void buttonOkClicked(TCFeedbackViewController sender, int index);
	}
}

