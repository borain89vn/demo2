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
	[Register ("TCDashboardViewController")]
	partial class TCDashboardViewController
	{
		[Outlet]
		UIKit.UIView bodyView { get; set; }

		[Outlet]
		UIKit.UIView lineAlert { get; set; }

		[Outlet]
		UIKit.UIView lineConfirm { get; set; }

		[Outlet]
		UIKit.UIView linePast { get; set; }

		[Outlet]
		UIKit.UIView lineRequest { get; set; }

		[Outlet]
		UIKit.UITabBar tabBar { get; set; }

		[Outlet]
		UIKit.UIView viewTabBar { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (bodyView != null) {
				bodyView.Dispose ();
				bodyView = null;
			}

			if (tabBar != null) {
				tabBar.Dispose ();
				tabBar = null;
			}

			if (lineAlert != null) {
				lineAlert.Dispose ();
				lineAlert = null;
			}

			if (lineRequest != null) {
				lineRequest.Dispose ();
				lineRequest = null;
			}

			if (lineConfirm != null) {
				lineConfirm.Dispose ();
				lineConfirm = null;
			}

			if (linePast != null) {
				linePast.Dispose ();
				linePast = null;
			}

			if (viewTabBar != null) {
				viewTabBar.Dispose ();
				viewTabBar = null;
			}
		}
	}
}
