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
	[Register ("TCLogoAlertViewController")]
	partial class TCLogoAlertViewController
	{
		[Outlet]
		UIKit.UIButton btnCancel { get; set; }

		[Outlet]
		UIKit.UIButton btnOk { get; set; }

		[Outlet]
		UIKit.UIButton btnOkOnly { get; set; }

		[Outlet]
		UIKit.UILabel lbTitle { get; set; }

		[Outlet]
		UIKit.UIView messageView { get; set; }

		[Outlet]
		UIKit.UIView viewAlert { get; set; }

		[Outlet]
		UIKit.UIView viewButton { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("okClicked:")]
		partial void okClicked (Foundation.NSObject sender);

		[Action ("okOnlyClicked:")]
		partial void okOnlyClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnCancel != null) {
				btnCancel.Dispose ();
				btnCancel = null;
			}

			if (btnOk != null) {
				btnOk.Dispose ();
				btnOk = null;
			}

			if (btnOkOnly != null) {
				btnOkOnly.Dispose ();
				btnOkOnly = null;
			}

			if (lbTitle != null) {
				lbTitle.Dispose ();
				lbTitle = null;
			}

			if (messageView != null) {
				messageView.Dispose ();
				messageView = null;
			}

			if (viewAlert != null) {
				viewAlert.Dispose ();
				viewAlert = null;
			}

			if (viewButton != null) {
				viewButton.Dispose ();
				viewButton = null;
			}
		}
	}
}
