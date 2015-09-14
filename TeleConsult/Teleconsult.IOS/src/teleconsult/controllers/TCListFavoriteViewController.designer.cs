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
	[Register ("TCListFavoriteViewController")]
	partial class TCListFavoriteViewController
	{
		[Outlet]
		UIKit.UITableView tableView { get; set; }

		[Outlet]
		UIKit.UIView viewResult { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (viewResult != null) {
				viewResult.Dispose ();
				viewResult = null;
			}

			if (tableView != null) {
				tableView.Dispose ();
				tableView = null;
			}
		}
	}
}
