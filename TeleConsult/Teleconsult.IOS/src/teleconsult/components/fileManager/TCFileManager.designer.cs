// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace Teleconsult.IOS
{
	partial class TCFileManager
	{
		[Outlet]
		UIKit.UIActivityIndicatorView activityIndicatorView { get; set; }

		[Outlet]
		UIKit.UIImageView imageView { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UIWebView webViewFile { get; set; }

		[Action ("close:")]
		partial void close (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (activityIndicatorView != null) {
				activityIndicatorView.Dispose ();
				activityIndicatorView = null;
			}

			if (imageView != null) {
				imageView.Dispose ();
				imageView = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (webViewFile != null) {
				webViewFile.Dispose ();
				webViewFile = null;
			}
		}
	}
}
