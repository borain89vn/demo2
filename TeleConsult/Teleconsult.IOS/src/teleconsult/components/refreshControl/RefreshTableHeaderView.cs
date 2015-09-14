using System;
using UIKit;
using Foundation;
using CoreAnimation;
using CoreGraphics;
using System.Drawing;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class RefreshTableHeaderView : UIView
	{
		public enum RefreshStatus
		{
			ReleaseToReloadStatus = 0,
			PullToReloadStatus = 1,
			LoadingStatus = 2
		}
				
		private UIViewController parrentVC { get; set; }
		private UILabel lastUpdatedLabel;
		private UILabel statusLabel;
		private UIImageView arrowImage;
		private UIActivityIndicatorView activityView;

		public bool isFlipped;

		public RefreshTableHeaderView (UIViewController controller) : base()
		{
			this.parrentVC = controller;
			this.BackgroundColor = new UIColor (226f, 231f, 237f, 1f);
			
			lastUpdatedLabel = new UILabel (new CGRect (0f, this.Frame.Height - 30f, 320f, 20f));
			lastUpdatedLabel.Font = UIFont.SystemFontOfSize (12f);
			lastUpdatedLabel.TextColor = UIColor.Black;
			lastUpdatedLabel.ShadowColor = UIColor.FromWhiteAlpha (0.9f, 1f);
			lastUpdatedLabel.ShadowOffset = new SizeF (0f, 1f);
			lastUpdatedLabel.BackgroundColor = UIColor.Clear;
			lastUpdatedLabel.TextAlignment = UITextAlignment.Center;

			string keySave = (this.parrentVC != null ? this.parrentVC.GetType ().ToString () : "") + "EGORefreshTableView_LastRefresh";
			if (NSUserDefaults.StandardUserDefaults[keySave] != null) {
				lastUpdatedLabel.Text = NSUserDefaults.StandardUserDefaults[keySave].ToString ();
			} else {
				SetCurrentDate ();
			}
			
			this.AddSubview (lastUpdatedLabel);
			
			statusLabel = new UILabel (new CGRect (0f, this.Frame.Height - 48f, 320f, 20f));
			statusLabel.Font = UIFont.BoldSystemFontOfSize (13f);
			statusLabel.TextColor = UIColor.Black;
			//new UIColor (87.0f,108.0f,137.0f,1.0f);
			statusLabel.ShadowColor = UIColor.FromWhiteAlpha (0.9f, 1f);
			statusLabel.ShadowOffset = new SizeF (0f, 1f);
			statusLabel.BackgroundColor = UIColor.Clear;
			statusLabel.TextAlignment = UITextAlignment.Center;
			SetStatus (RefreshTableHeaderView.RefreshStatus.PullToReloadStatus);
			this.AddSubview (statusLabel);
			
			arrowImage = new UIImageView (new CGRect (25f, this.Frame.Height - 65f, 30f, 55f));
			arrowImage.Image = UIImage.FromFile ("blueArrow.png");
			arrowImage.ContentMode = UIViewContentMode.ScaleAspectFit;
			arrowImage.Layer.Transform = CATransform3D.MakeRotation (3.141593f, 0f, 0f, 1f);
			this.AddSubview (arrowImage);
			
			activityView = new UIActivityIndicatorView (UIActivityIndicatorViewStyle.Gray);
			activityView.Frame = new CGRect (25f, this.Frame.Height - 38f, 20f, 20f);
			activityView.HidesWhenStopped = true;
			this.AddSubview (activityView);

			this.isFlipped = false;
		}

		public void SetStatus (RefreshStatus status)
		{
			switch (status) {
			case RefreshStatus.LoadingStatus:
				this.statusLabel.Text = "Loading...";
				break;
			
			case RefreshStatus.PullToReloadStatus:
				this.statusLabel.Text = "Pull down to refresh...";
				break;
			case RefreshStatus.ReleaseToReloadStatus:
				this.statusLabel.Text = "Release to refresh...";
				break;
			}
		}
			
		public void ToggleActivityView ()
		{
			if (activityView.IsAnimating) {
				activityView.StopAnimating ();
				arrowImage.Hidden = false;
			} else {
				activityView.StartAnimating ();
				arrowImage.Hidden = true;
				this.SetStatus (RefreshStatus.LoadingStatus);
			}
		}

		public void SetCurrentDate ()
		{
			string lastUpdate = String.Format ("Last Updated: {0}", MUtils.dateTimeToString(CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName), MUtils.kFormatDateTimeDefaultPlatform));
			lastUpdatedLabel.Text = lastUpdate;

			string keySave = (this.parrentVC != null ? this.parrentVC.GetType ().ToString () : "") + "EGORefreshTableView_LastRefresh";
			NSUserDefaults.StandardUserDefaults[keySave] = NSString.FromObject(lastUpdate);

			NSUserDefaults.StandardUserDefaults.Synchronize ();
		}

		public void FlipImageAnimated (bool animated)
		{
			UIView.BeginAnimations ("flipImage");
			UIView.SetAnimationDuration (animated ? 0.18f : 0f);
			arrowImage.Layer.Transform = isFlipped ? CATransform3D.MakeRotation (3.141593f, 0f, 0f, 1f) : CATransform3D.MakeRotation (3.141593f * 2, 0f, 0f, 1f);
			UIView.CommitAnimations ();
			isFlipped = !isFlipped;
		}
		
		public override void Draw (CGRect rect)
		{
			base.Draw (rect);
			
			CGContext context = UIGraphics.GetCurrentContext ();
			context.DrawPath (CGPathDrawingMode.FillStroke);
			//UIColor strokeColor = new UIColor (87.0f,108.0f,137.0f,1.0f)
			CGColor strokeColor = new CGColor (87f, 108f, 137f, 1f);
			context.SetStrokeColor (strokeColor);
			context.BeginPath ();
			context.MoveTo (0f, this.Bounds.Size.Height - 1);
			
			context.AddLineToPoint (this.Bounds.Size.Width, this.Bounds.Size.Height - 1);
			context.StrokePath ();
		}
	}
}
