using System;
using UIKit;
using CoreGraphics;
using System.Drawing;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCLoadingOverlay : UIView
	{
		public const float paddingLeftRight = 10;
		public const float paddingTopBottom = 10;
		public float heightLoading = 70;
		public const float heighNavigationBar = 64;
		public const float heighKeyboard = 216.0f;
		public UIViewController vc;
		private UIActivityIndicatorView ac;
		private bool isHaveKeyboard;
		private bool hide;



		public TCLoadingOverlay (UIViewController inView, bool overlayFullscreen, bool haveNavigationBar, bool haveKeyboard) : this (inView, overlayFullscreen, haveKeyboard)
		{
			if (!haveNavigationBar) {
				this.Frame = new CGRect (this.Frame.X, this.Frame.Y - heighNavigationBar, this.Frame.Width, this.Frame.Height);
			}
		}

		public TCLoadingOverlay (UIViewController inView, bool overlayFullscreen, bool haveKeyboard)
		{
			this.vc = inView;
			this.isHaveKeyboard = haveKeyboard;
			this.BackgroundColor = UIColor.Clear;
			AutoresizingMask = UIViewAutoresizing.FlexibleDimensions;

			if (this.vc == null) {
				UIViewController rootVC = UIApplication.SharedApplication.Delegate.GetWindow ().RootViewController;
				this.vc = rootVC;
			}

			CGRect tFrame = this.vc.View.Frame;

			if (!overlayFullscreen)
				tFrame.Y += heighNavigationBar;
				
			this.Frame = tFrame;
		}

		public void build (string text)
		{
			SizeF size = SizeF.Empty;
			if (text == null || text.Equals ("")) {
				text = "";
				size = new SizeF (paddingTopBottom * 2, paddingLeftRight * 2);
				heightLoading = 40;
			} else {
			
				NSString nsString = new NSString (text);
				UIStringAttributes attribs = new UIStringAttributes { Font = UIFont.BoldSystemFontOfSize (17) };
				size = (SizeF)nsString.GetSizeUsingAttributes (attribs);
			}
	
			UIView facade = new UIView ();
			facade.BackgroundColor = UIColor.Black;
			facade.Alpha = 0.8f;
			facade.Layer.CornerRadius = 5;
			facade.Layer.MasksToBounds = true;

			float xFacade = (float)this.Center.X - (size.Width + paddingLeftRight * 2) / 2;

			float yFacade = 0.0f;

			if (isHaveKeyboard)
				yFacade = ((float)this.Frame.Height - heighKeyboard - heightLoading ) / 2 ;
			else 
				yFacade = ((float)this.Frame.Height  - heightLoading ) / 2;

			facade.Frame = new RectangleF (xFacade , yFacade, (float)size.Width + paddingLeftRight * 2, heightLoading);

			this.ac = new UIActivityIndicatorView (UIActivityIndicatorViewStyle.White);
			this.ac.Center = new CGPoint ((size.Width + paddingLeftRight * 2) / 2, paddingLeftRight * 2);

			UILabel lbText = new UILabel();
			lbText.Frame = new RectangleF (0, (float)this.ac.Center.Y + 15, size.Width + paddingLeftRight * 2, size.Height);
			lbText.TextAlignment = UITextAlignment.Center;
			lbText.Font = UIFont.BoldSystemFontOfSize (17);
			lbText.Text = text;
			lbText.TextColor = UIColor.White;

			facade.AddSubview (lbText);
			facade.AddSubview (this.ac);
			this.AddSubview (facade);

			this.Hidden = true;
			this.vc.View.AddSubview (this);
		}

		public void build ()
		{
			build (null);
		}

		public bool isHide()
		{
			return hide;
		}

		public void show ()
		{
			hide = false;
			UIApplication.SharedApplication.NetworkActivityIndicatorVisible = true;
			this.Hidden = false;
			if(this.ac != null)
				this.ac.StartAnimating ();
		}

		public void dismiss ()
		{
			hide = true;
			UIApplication.SharedApplication.NetworkActivityIndicatorVisible = false;
			this.Hidden = true;
			if(this.ac != null)
				this.ac.StopAnimating ();
		}
	}
}

