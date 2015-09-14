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
	[Register ("TCSplashScreenViewController")]
	partial class TCSplashScreenViewController
	{
		[Outlet]
		UIKit.UIActivityIndicatorView acIndicator { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (acIndicator != null) {
				acIndicator.Dispose ();
				acIndicator = null;
			}
		}
	}
}
