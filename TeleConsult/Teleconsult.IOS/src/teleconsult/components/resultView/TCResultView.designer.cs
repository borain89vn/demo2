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
	partial class TCResultView
	{
		[Outlet]
		UIKit.UIButton btnDismiss { get; set; }

		[Outlet]
		UIKit.UILabel lbTextResult { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (lbTextResult != null) {
				lbTextResult.Dispose ();
				lbTextResult = null;
			}

			if (btnDismiss != null) {
				btnDismiss.Dispose ();
				btnDismiss = null;
			}
		}
	}
}
