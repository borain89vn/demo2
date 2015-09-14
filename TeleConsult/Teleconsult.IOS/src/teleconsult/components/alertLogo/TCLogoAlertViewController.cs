
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreGraphics;

namespace Teleconsult.IOS
{
	public partial class TCLogoAlertViewController : UIViewController
	{

		public TCLogoAlertViewControllerDelegate Delegate { get; set; } 
		private UIViewController parentController;
		private string title;
		private string message;
		private string cancelButtonTitle;
		private string okButtonTitle;
		private UIAlertController alert8;
		private UIAlertView alert7;
		private UIView customView;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCLogoAlertViewController (UIViewController parentController, string title, string message, UIView customView, string cancelButtonTitle, string okButtonTitle)
			: base (UserInterfaceIdiomIsPhone ? "TCLogoAlertViewController_iPhone" : "TCLogoAlertViewController_iPhone", null)
		{
			this.parentController = parentController;
			this.title = title;
			this.message = message;
			this.cancelButtonTitle = cancelButtonTitle;
			this.okButtonTitle = okButtonTitle;
			this.customView = customView;
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
			configureView ();
			createUI ();
		}

		private void configureView()
		{
			this.viewAlert.Layer.CornerRadius = 7;
			this.viewAlert.Layer.MasksToBounds = true;
		}

//		public void build (UIViewController parentController, string title, string message, UIView customView, string cancelButtonTitle, string okButtonTitle)
//		{
//			this.parentController = parentController;
//			this.title = title;
//			this.message = message;
//			this.cancelButtonTitle = cancelButtonTitle;
//			this.okButtonTitle = okButtonTitle;
//			this.customView = customView;
//
//			createUI ();
//		}

		private void createUI ()
		{
			this.btnOkOnly.Hidden = true;
			this.lbTitle.Text = this.title;

			if (this.cancelButtonTitle == null || this.cancelButtonTitle.Equals ("")) {
				this.btnCancel.Hidden = true;
			} else {
				this.btnCancel.SetTitle(this.cancelButtonTitle, UIControlState.Normal);
			}

			if (this.okButtonTitle == null || this.okButtonTitle.Equals ("")) {
				this.btnOk.Hidden = true;

			} else {
				this.btnOk.SetTitle(this.okButtonTitle, UIControlState.Normal);
				if (this.cancelButtonTitle == null || this.cancelButtonTitle.Equals ("")) {
					this.btnOk.Frame = this.btnOkOnly.Frame;
				}
			}

			if (customView != null) {
				this.messageView.BackgroundColor = UIColor.Clear;
				this.messageView.AddSubview (this.customView);
				this.messageView.Frame = new CGRect (this.messageView.Frame.X, this.messageView.Frame.Y, this.messageView.Frame.Width,this.customView.Frame.Height );
				this.viewButton.Frame = new CGRect (this.viewButton.Frame.X, this.messageView.Frame.Y + this.messageView.Frame.Height , this.viewButton.Frame.Width, this.viewButton.Frame.Height);
				this.viewAlert.Frame = new CGRect (this.viewAlert.Frame.X, this.viewAlert.Frame.Y, this.viewAlert.Frame.Width, this.viewButton.Frame.Y + this.viewButton.Frame.Height);
			}

			this.viewAlert.Center = this.View.Center;
		}

		public void display ()
		{
			this.parentController.View.AddSubview (this.View);
			this.parentController.AddChildViewController (this);

		}

		partial void cancelClicked (NSObject sender)
		{
			if (this.Delegate != null) {
				this.Delegate.alertLogoCancelClicked (this);
			}


			this.View.RemoveFromSuperview();
			this.RemoveFromParentViewController();
		}

		partial void okClicked (NSObject sender)
		{
			if (this.Delegate != null) {
				this.Delegate.alertLogoOkClicked (this);
			}
				
			this.View.RemoveFromSuperview();
			this.RemoveFromParentViewController();
		}

	}

	[CLSCompliant (false)]
	public interface TCLogoAlertViewControllerDelegate
	{
		void alertLogoOkClicked (TCLogoAlertViewController alert);
		void alertLogoCancelClicked (TCLogoAlertViewController alert);
	}
}

