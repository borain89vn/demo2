
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreAnimation;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCChangeStatusViewController : UIViewController
	{
		public NSIndexPath currentIndexPath { get; set; }
		public NSIndexPath tempIndexPath { get; set; }

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}
			
		public TCChangeStatusViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCChangeStatusViewController_iPhone" : "TCChangeStatusViewController_iPhone", null)
		{
		}

		public TCChangeStatusViewController (IntPtr handle) : base (handle)
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
			decorateUI ();

			this.currentIndexPath = getCurrentIndex (MApplication.getInstance().iExpertStatus);
			this.tempIndexPath = this.currentIndexPath;

			this.tableStatus.Source = new TCStatusTableViewSource (this);
			this.tableStatus.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
		}
			
		private NSIndexPath getCurrentIndex(int status)
		{
			NSIndexPath indexPath = NSIndexPath.FromRowSection(0,0);
			if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.Available) {
				indexPath = NSIndexPath.FromRowSection (0, 0);
			} else if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable) {
				indexPath = NSIndexPath.FromRowSection (1, 0);
			} else if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable) {
				indexPath = NSIndexPath.FromRowSection(2, 0);
			}

			return indexPath;
		}

		private int getCurrentStatus(int index)
		{
			int currentStatus = 0;
			if (index == 0) {
				currentStatus = (int)CoreSystem.Constants.STATUS_CONSULTANT.Available;
			} else if (index == 1) {
				currentStatus = (int)CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable;
			} else if (index == 2) {
				currentStatus = (int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable;
			}

			return currentStatus;
		}

		private void decorateUI()
		{
			this.viewStatus.Layer.CornerRadius = 6;
			this.btnCancel.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);
			this.btnDone.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);

			setLayerCustom (this.tableStatus);
			this.viewStatus.Center = this.View.Center;
		}

		private void setLayerCustom (UIView view)
		{
			UIBezierPath maskPath = UIBezierPath.FromRoundedRect ( view.Bounds, (UIRectCorner.BottomRight | UIRectCorner.BottomLeft), new CGSize(6.0f, 6.0f));

			CAShapeLayer maskLayer = new CAShapeLayer ();
			maskLayer.Frame = view.Bounds;
			maskLayer.Path = maskPath.CGPath;

			view.Layer.Mask = maskLayer;
		}

		public void setTempIndex(NSIndexPath indexPath)
		{
			this.tempIndexPath = indexPath;
		}

		partial void cancelClicked (NSObject sender)
		{
			this.View.RemoveFromSuperview();
			this.RemoveFromParentViewController();
		}

		partial void doneClicked (NSObject sender)
		{
			this.View.RemoveFromSuperview();
			this.RemoveFromParentViewController();

			TCNotificationCenter.defaultCenter.postNotification(MConstants.kPostUpdateStatusExpert, getCurrentStatus(this.tempIndexPath.Row).ToString());
		}
	}
}

