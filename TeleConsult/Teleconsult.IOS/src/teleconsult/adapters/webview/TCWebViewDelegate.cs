using System;
using UIKit;
using Foundation;
using System.Runtime.CompilerServices;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCWebViewDelegate : UIWebViewDelegate
	{
		public TCCommonTemplateViewController controller { get; set; }

		public TCWebViewDelegate (TCCommonTemplateViewController vc)
		{
			this.controller = vc;
		}

		public override void LoadFailed (UIWebView webView, NSError error)
		{
			if (this.controller != null)
				this.controller.loadingView.dismiss ();
		}

		public override void LoadingFinished (UIWebView webView)
		{
			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostLoadFileCompleted, null);
			if (this.controller != null)
				this.controller.loadingView.dismiss ();
		}

		public override void LoadStarted (UIWebView webView)
		{
			if (this.controller != null)
				this.controller.loadingView.show ();
		}

		public override bool ShouldStartLoad (UIWebView webView, NSUrlRequest request, UIWebViewNavigationType navigationType)
		{
			if (this.controller != null && this.controller is TCRegisterViewController) {
				if (request.Url.ToString ().Equals (CoreSystem.HttpConstants.BASE_URL + "Account/Login")) {
					this.controller.NavigationController.PopViewController (true);
					this.controller.loadingView.dismiss ();
				} 
			} else if (this.controller != null && this.controller is TCUpdateProfileViewController) {
				if (request.Url.ToString ().Contains ("/Booking/ListBooking")) {
					TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostUpdateStatusCurrentUser, null);
					MApplication.getInstance ().isCompleteProfile = true;
					this.controller.NavigationController.PopViewController (true);
					this.controller.loadingView.dismiss ();
				} 
			}

			return true;
		
		}

	}
}

