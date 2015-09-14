// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using System;
using Foundation;
using UIKit;
using System.CodeDom.Compiler;

namespace Teleconsult.IOS
{
	[Register ("TCRegisterViewController")]
	partial class TCRegisterViewController
	{
		[Outlet]
		[GeneratedCode ("iOS Designer", "1.0")]
		UIWebView webViewRegister { get; set; }

		void ReleaseDesignerOutlets ()
		{
			if (webViewRegister != null) {
				webViewRegister.Dispose ();
				webViewRegister = null;
			}
		}
	}
}
