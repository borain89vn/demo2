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
	partial class NotifyNetworkView
	{
		[Outlet]
		UIKit.UIButton btnClose { get; set; }

		[Action ("close:")]
		partial void close (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnClose != null) {
				btnClose.Dispose ();
				btnClose = null;
			}
		}
	}
}
