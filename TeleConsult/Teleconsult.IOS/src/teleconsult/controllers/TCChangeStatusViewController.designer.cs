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
	[Register ("TCChangeStatusViewController")]
	partial class TCChangeStatusViewController
	{
		[Outlet]
		UIKit.UIButton btnCancel { get; set; }

		[Outlet]
		UIKit.UIButton btnDone { get; set; }

		[Outlet]
		UIKit.UITableView tableStatus { get; set; }

		[Outlet]
		UIKit.UIView viewStatus { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("doneClicked:")]
		partial void doneClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnCancel != null) {
				btnCancel.Dispose ();
				btnCancel = null;
			}

			if (btnDone != null) {
				btnDone.Dispose ();
				btnDone = null;
			}

			if (tableStatus != null) {
				tableStatus.Dispose ();
				tableStatus = null;
			}

			if (viewStatus != null) {
				viewStatus.Dispose ();
				viewStatus = null;
			}
		}
	}
}
