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
	[Register ("TCActiveCodeViewController")]
	partial class TCActiveCodeViewController
	{
		[Outlet]
		UIKit.UIButton btnActive { get; set; }

		[Outlet]
		UIKit.UITextField tfCode { get; set; }

		[Outlet]
		UIKit.UIView viewCode { get; set; }

		[Action ("activeClicked:")]
		partial void activeClicked (Foundation.NSObject sender);

		[Action ("dismissKeyboard:")]
		partial void dismissKeyboard (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnActive != null) {
				btnActive.Dispose ();
				btnActive = null;
			}

			if (tfCode != null) {
				tfCode.Dispose ();
				tfCode = null;
			}

			if (viewCode != null) {
				viewCode.Dispose ();
				viewCode = null;
			}
		}
	}
}
