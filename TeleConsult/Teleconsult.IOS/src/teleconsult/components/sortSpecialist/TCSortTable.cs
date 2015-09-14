using System;
using Foundation;
using UIKit;
using CoreAnimation;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCSortTable")]
	public partial class TCSortTable : UIView
	{
		public static readonly UINib Nib;
		public TCSearchSpecialistViewController parentVC { get; set; }
		public static NSIndexPath currentIndexPath = NSIndexPath.FromRowSection(0,0);
		public NSIndexPath tempIndexPath { get; set; }

		static TCSortTable ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSortTable_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCSortTable_iPhone", NSBundle.MainBundle);
			}
		}
		public TCSortTable (IntPtr p) : base(p)
		{

		}

		public static TCSortTable Create ()
		{
			return (TCSortTable)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();
			decorateUI ();
			this.tempIndexPath = currentIndexPath;
			this.tableSort.Source = new TCSortTableViewSource (this);
		}
			
		private void decorateUI()
		{
			this.viewSort.Layer.CornerRadius = 6;
			this.btnCancel.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);
			this.btnDone.SetTitleColor (TCTheme.getInstance.getThemeColor (Theme.BarItem), UIControlState.Normal);
			this.Frame = this.parentVC.NavigationController.View.Frame;
			this.Center = this.parentVC.NavigationController.View.Center;
			this.viewSort.Center = this.Center;
		}

		private void setLayerCustom (UIView view)
		{
			UIBezierPath maskPath = UIBezierPath.FromRoundedRect ( view.Bounds, (UIRectCorner.BottomRight | UIRectCorner.BottomLeft), new CGSize(6.0f, 6.0f));

			CAShapeLayer maskLayer = new CAShapeLayer ();
			maskLayer.Frame = view.Bounds;
			maskLayer.Path = maskPath.CGPath;

			view.Layer.Mask = maskLayer;
		}
			
		partial void cancelClicked (NSObject sender)
		{
			this.RemoveFromSuperview();
		}

		partial void doneClicked (NSObject sender)
		{
			if (this.tempIndexPath != null && this.tempIndexPath.Row != currentIndexPath.Row) {
					currentIndexPath = this.tempIndexPath;
					this.parentVC.updateSortData(TCGlobals.getInstance.getSortTypes()[currentIndexPath.Row]);
			} 
				
			this.RemoveFromSuperview();
		}
			
		public void setTempIndex(NSIndexPath indexPath)
		{
			this.tempIndexPath = indexPath;
		}

	}
}

