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
	[Register ("TCMyProfileViewController")]
	partial class TCMyProfileViewController
	{
		[Outlet]
		UIKit.UIButton btnChangePass { get; set; }

		[Outlet]
		UIKit.UIButton btnSignOut { get; set; }

		[Outlet]
		UIKit.UIButton btnUpdateProfile { get; set; }

		[Action ("changPasswordClicked:")]
		partial void changPasswordClicked (Foundation.NSObject sender);

		[Action ("signOutClicked:")]
		partial void signOutClicked (Foundation.NSObject sender);

		[Action ("updateProfileClicked:")]
		partial void updateProfileClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnChangePass != null) {
				btnChangePass.Dispose ();
				btnChangePass = null;
			}

			if (btnSignOut != null) {
				btnSignOut.Dispose ();
				btnSignOut = null;
			}
		}
	}
}
