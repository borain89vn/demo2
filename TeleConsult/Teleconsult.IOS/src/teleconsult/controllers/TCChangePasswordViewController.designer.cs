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
	[Register ("TCChangePasswordViewController")]
	partial class TCChangePasswordViewController
	{
		[Outlet]
		UIKit.UIButton btnDismiss { get; set; }

		[Outlet]
		UIKit.UIButton btnForgotPass { get; set; }

		[Outlet]
		UIKit.UIButton btnSubmit { get; set; }

		[Outlet]
		UIKit.UILabel lbStatus { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UITextField tfConfirmPass { get; set; }

		[Outlet]
		UIKit.UITextField tfNewPass { get; set; }

		[Outlet]
		UIKit.UITextField tfOldPass { get; set; }

		[Outlet]
		UIKit.UIView viewConfirmPass { get; set; }

		[Outlet]
		UIKit.UIView viewNewPass { get; set; }

		[Outlet]
		UIKit.UIView viewOldPass { get; set; }

		[Action ("dismissKeyboard:")]
		partial void dismissKeyboard (Foundation.NSObject sender);

		[Action ("forgotPasswordClicked:")]
		partial void forgotPasswordClicked (Foundation.NSObject sender);

		[Action ("submitChangePassword:")]
		partial void submitChangePassword (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnForgotPass != null) {
				btnForgotPass.Dispose ();
				btnForgotPass = null;
			}

			if (btnSubmit != null) {
				btnSubmit.Dispose ();
				btnSubmit = null;
			}

			if (btnDismiss != null) {
				btnDismiss.Dispose ();
				btnDismiss = null;
			}

			if (lbStatus != null) {
				lbStatus.Dispose ();
				lbStatus = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (tfConfirmPass != null) {
				tfConfirmPass.Dispose ();
				tfConfirmPass = null;
			}

			if (tfNewPass != null) {
				tfNewPass.Dispose ();
				tfNewPass = null;
			}

			if (tfOldPass != null) {
				tfOldPass.Dispose ();
				tfOldPass = null;
			}

			if (viewConfirmPass != null) {
				viewConfirmPass.Dispose ();
				viewConfirmPass = null;
			}

			if (viewNewPass != null) {
				viewNewPass.Dispose ();
				viewNewPass = null;
			}

			if (viewOldPass != null) {
				viewOldPass.Dispose ();
				viewOldPass = null;
			}
		}
	}
}
