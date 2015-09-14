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
	[Register ("TCLoginViewController")]
	partial class TCLoginViewController
	{
		[Outlet]
		UIKit.UIButton btnDismiss { get; set; }

		[Outlet]
		UIKit.UIButton btnForgetPass { get; set; }

		[Outlet]
		UIKit.UIButton btnRegister { get; set; }

		[Outlet]
		UIKit.UIButton btnSignIn { get; set; }

		[Outlet]
		UIKit.UIButton cbRemember { get; set; }

		[Outlet]
		UIKit.UILabel lbRemember { get; set; }

		[Outlet]
		UIKit.UIButton cbShowPass { get; set; }

		[Outlet]
		UIKit.UILabel lbShowPass { get; set; }


		[Outlet]
		UIKit.UILabel lbStatus { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UITextField tfPassword { get; set; }

		[Outlet]
		UIKit.UITextField tfUsername { get; set; }

		[Outlet]
		UIKit.UIView viewPassword { get; set; }

		[Outlet]
		UIKit.UIView viewUsername { get; set; }

		[Action ("dismissKeyboard:")]
		partial void dismissKeyboard (UIKit.UIButton sender);

		[Action ("forgotPasswordClicked:")]
		partial void forgotPasswordClicked (UIKit.UIButton sender);

		[Action ("rememberMe:")]
		partial void rememberMe (UIKit.UIButton sender);

		[Action ("showpassClicked:")]
		partial void showPassClicked (UIKit.UIButton sender);

		[Action ("signIn:")]
		partial void signIn (UIKit.UIButton sender);

		[Action ("signUpClicked:")]
		partial void signUpClicked (UIKit.UIButton sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnDismiss != null) {
				btnDismiss.Dispose ();
				btnDismiss = null;
			}

			if (btnForgetPass != null) {
				btnForgetPass.Dispose ();
				btnForgetPass = null;
			}

			if (btnRegister != null) {
				btnRegister.Dispose ();
				btnRegister = null;
			}

			if (btnSignIn != null) {
				btnSignIn.Dispose ();
				btnSignIn = null;
			}

			if (cbRemember != null) {
				cbRemember.Dispose ();
				cbRemember = null;
			}

			if (lbRemember != null) {
				lbRemember.Dispose ();
				lbRemember = null;
			}

			if (cbShowPass != null) {
				cbShowPass.Dispose ();
				cbShowPass = null;
			}

			if (lbShowPass != null) {
				lbShowPass.Dispose ();
				lbShowPass = null;
			}

			if (lbStatus != null) {
				lbStatus.Dispose ();
				lbStatus = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (tfPassword != null) {
				tfPassword.Dispose ();
				tfPassword = null;
			}

			if (tfUsername != null) {
				tfUsername.Dispose ();
				tfUsername = null;
			}

			if (viewPassword != null) {
				viewPassword.Dispose ();
				viewPassword = null;
			}

			if (viewUsername != null) {
				viewUsername.Dispose ();
				viewUsername = null;
			}
		}
	}
}
