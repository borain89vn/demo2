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
	[Register ("TCSearchSpecialistViewController")]
	partial class TCSearchSpecialistViewController
	{
		[Outlet]
		UIKit.UILabel lbWarningSearch { get; set; }

		[Outlet]
		UIKit.UIView lineWarning { get; set; }

		[Outlet]
		UIKit.UISearchBar searchBar { get; set; }

		[Outlet]
		UIKit.UITableView tableView { get; set; }

		[Outlet]
		UIKit.UIView viewResult { get; set; }

		[Outlet]
		UIKit.UIView viewSearchBar { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (searchBar != null) {
				searchBar.Dispose ();
				searchBar = null;
			}

			if (tableView != null) {
				tableView.Dispose ();
				tableView = null;
			}

			if (viewResult != null) {
				viewResult.Dispose ();
				viewResult = null;
			}

			if (viewSearchBar != null) {
				viewSearchBar.Dispose ();
				viewSearchBar = null;
			}

			if (lbWarningSearch != null) {
				lbWarningSearch.Dispose ();
				lbWarningSearch = null;
			}

			if (lineWarning != null) {
				lineWarning.Dispose ();
				lineWarning = null;
			}
		}
	}
}
