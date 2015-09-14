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
	[Register ("TCHomeViewController")]
	partial class TCHomeViewController
	{
		[Outlet]
		UIKit.UIButton btnRegisterUser { get; set; }

		[Outlet]
		UIKit.UIButton btnSearch { get; set; }

		[Outlet]
		UIKit.UIButton btnSignIn { get; set; }

		[Outlet]
		UIKit.UITextField tfSearch { get; set; }

		[Outlet]
		UIKit.UIView viewSearch { get; set; }

		[Outlet]
		UIKit.UIView viewSubSearch { get; set; }

		[Action ("conditionsClicked:")]
		partial void conditionsClicked (Foundation.NSObject sender);

		[Action ("dismissKeyboard:")]
		partial void dismissKeyboard (Foundation.NSObject sender);

		[Action ("joinAsSpecialist:")]
		partial void joinAsSpecialist (Foundation.NSObject sender);

		[Action ("registerAsUser:")]
		partial void registerAsUser (Foundation.NSObject sender);

		[Action ("searchClicked:")]
		partial void searchClicked (Foundation.NSObject sender);

		[Action ("signIn:")]
		partial void signIn (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnRegisterUser != null) {
				btnRegisterUser.Dispose ();
				btnRegisterUser = null;
			}

			if (btnSearch != null) {
				btnSearch.Dispose ();
				btnSearch = null;
			}

			if (btnSignIn != null) {
				btnSignIn.Dispose ();
				btnSignIn = null;
			}

			if (tfSearch != null) {
				tfSearch.Dispose ();
				tfSearch = null;
			}

			if (viewSearch != null) {
				viewSearch.Dispose ();
				viewSearch = null;
			}

			if (viewSubSearch != null) {
				viewSubSearch.Dispose ();
				viewSubSearch = null;
			}
		}
	}
}
