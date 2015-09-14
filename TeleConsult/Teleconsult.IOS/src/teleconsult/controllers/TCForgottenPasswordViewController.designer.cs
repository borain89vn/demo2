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
	[Register ("TCForgottenPasswordViewController")]
	partial class TCForgottenPasswordViewController
	{
		[Outlet]
		UIKit.UIButton btnDismiss { get; set; }

		[Outlet]
		UIKit.UIButton btnSendEmail { get; set; }

		[Outlet]
		UIKit.UILabel lbNote { get; set; }

		[Outlet]
		UIKit.UILabel lbStatus { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UITextField tfEmail { get; set; }

		[Outlet]
		UIKit.UIView viewEmail { get; set; }

		[Action ("dismissKeyboard:")]
		partial void dismissKeyboard (Foundation.NSObject sender);

		[Action ("sendEmail:")]
		partial void sendEmail (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnSendEmail != null) {
				btnSendEmail.Dispose ();
				btnSendEmail = null;
			}

			if (btnDismiss != null) {
				btnDismiss.Dispose ();
				btnDismiss = null;
			}

			if (lbNote != null) {
				lbNote.Dispose ();
				lbNote = null;
			}

			if (lbStatus != null) {
				lbStatus.Dispose ();
				lbStatus = null;
			}

			if (tfEmail != null) {
				tfEmail.Dispose ();
				tfEmail = null;
			}

			if (viewEmail != null) {
				viewEmail.Dispose ();
				viewEmail = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}
		}
	}
}
