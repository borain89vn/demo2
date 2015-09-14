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
	[Register ("TCPreferredTimeViewController")]
	partial class TCPreferredTimeViewController
	{
		[Outlet]
		UIKit.UIButton btnEndTime { get; set; }

		[Outlet]
		UIKit.UIButton btnRequestBooking { get; set; }

		[Outlet]
		UIKit.UIButton btnStartTime { get; set; }

		[Outlet]
		UIKit.UIView contentView { get; set; }

		[Outlet]
		UIKit.UIDatePicker datePicker { get; set; }

		[Outlet]
		UIKit.UILabel lbEnd { get; set; }

		[Outlet]
		UIKit.UILabel lbEndTime { get; set; }

		[Outlet]
		UIKit.UILabel lbStart { get; set; }

		[Outlet]
		UIKit.UILabel lbStartTime { get; set; }

		[Outlet]
		UIKit.UIView viewEnd { get; set; }

		[Outlet]
		UIKit.UIView viewStart { get; set; }

		[Action ("bookOutOf:")]
		partial void bookOutOf (Foundation.NSObject sender);

		[Action ("bookStandard:")]
		partial void bookStandard (Foundation.NSObject sender);

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("chooseEndTime:")]
		partial void chooseEndTime (Foundation.NSObject sender);

		[Action ("chooseStartTime:")]
		partial void chooseStartTime (Foundation.NSObject sender);

		[Action ("close:")]
		partial void close (Foundation.NSObject sender);

		[Action ("doneClicked:")]
		partial void doneClicked (Foundation.NSObject sender);

		[Action ("sendRequestBooking:")]
		partial void sendRequestBooking (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnEndTime != null) {
				btnEndTime.Dispose ();
				btnEndTime = null;
			}

			if (btnRequestBooking != null) {
				btnRequestBooking.Dispose ();
				btnRequestBooking = null;
			}

			if (btnStartTime != null) {
				btnStartTime.Dispose ();
				btnStartTime = null;
			}

			if (contentView != null) {
				contentView.Dispose ();
				contentView = null;
			}

			if (datePicker != null) {
				datePicker.Dispose ();
				datePicker = null;
			}

			if (lbEnd != null) {
				lbEnd.Dispose ();
				lbEnd = null;
			}

			if (lbEndTime != null) {
				lbEndTime.Dispose ();
				lbEndTime = null;
			}

			if (lbStart != null) {
				lbStart.Dispose ();
				lbStart = null;
			}

			if (lbStartTime != null) {
				lbStartTime.Dispose ();
				lbStartTime = null;
			}

			if (viewEnd != null) {
				viewEnd.Dispose ();
				viewEnd = null;
			}

			if (viewStart != null) {
				viewStart.Dispose ();
				viewStart = null;
			}
		}
	}
}
