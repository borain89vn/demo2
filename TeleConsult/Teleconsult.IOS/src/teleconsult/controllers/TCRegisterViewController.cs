using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public partial class TCRegisterViewController : TCCommonTemplateViewController
	{
		public string url { get; set; }
		public string title { get; set; }
		public TCRegisterViewController (IntPtr handle) : base (handle)
		{
		}
			
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
		
			// Perform any additional setup after loading the view, typically from a nib.
			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			this.webViewRegister.Delegate = new TCWebViewDelegate (this);
			this.webViewRegister.LoadRequest(new NSUrlRequest(new NSUrl(this.url))); 
		}

		public override void createNavigationBar()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, title, true);
		}
	}
}

