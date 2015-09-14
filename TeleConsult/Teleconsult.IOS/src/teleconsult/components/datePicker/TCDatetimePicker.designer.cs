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
	partial class TCDatetimePicker
	{
		[Outlet]
		UIKit.UIDatePicker datePicker { get; set; }

		[Outlet]
		UIKit.UILabel lbTitleDatePicker { get; set; }

		[Outlet]
		UIKit.UILabel lbTitleTimePicker { get; set; }

		[Outlet]
		UIKit.UIDatePicker timePicker { get; set; }

		[Outlet]
		UIKit.UIView viewDatePicker { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("doneClicked:")]
		partial void doneClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lbTitleDatePicker != null) {
				lbTitleDatePicker.Dispose ();
				lbTitleDatePicker = null;
			}

			if (lbTitleTimePicker != null) {
				lbTitleTimePicker.Dispose ();
				lbTitleTimePicker = null;
			}

			if (timePicker != null) {
				timePicker.Dispose ();
				timePicker = null;
			}

			if (datePicker != null) {
				datePicker.Dispose ();
				datePicker = null;
			}

			if (viewDatePicker != null) {
				viewDatePicker.Dispose ();
				viewDatePicker = null;
			}
		}
	}
}
