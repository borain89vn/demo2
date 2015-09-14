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
	[Register ("TCUpdateProfileViewController")]
	partial class TCUpdateProfileViewController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIKit.UIWebView webViewUpdateProfile { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (webViewUpdateProfile != null) {
				webViewUpdateProfile.Dispose ();
				webViewUpdateProfile = null;
			}
		}
	}
}
