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
	[Register ("TCBookingCell")]
	partial class TCBookingCell
	{
		[Outlet]
		public UIKit.UILabel lbASAP { get; private set; }

		[Outlet]
		public UIKit.UILabel lbCreatedDate { get; private set; }

		[Outlet]
		public UIKit.UILabel lbDate { get; private set; }

		[Outlet]
		public UIKit.UILabel lbFullname { get; private set; }

		[Outlet]
		public UIKit.UILabel lbReference { get; private set; }

		[Outlet]
		public UIKit.UILabel lbStatus { get; private set; }

		[Outlet]
		public UIKit.UILabel lbTime { get; private set; }

		[Outlet]
		public UIKit.UIView viewDescription { get; private set; }

		[Outlet]
		public UIKit.UIView viewStatus { get; private set; }

		[Action ("showInfo:")]
		partial void showInfo (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lbASAP != null) {
				lbASAP.Dispose ();
				lbASAP = null;
			}

			if (lbCreatedDate != null) {
				lbCreatedDate.Dispose ();
				lbCreatedDate = null;
			}

			if (lbDate != null) {
				lbDate.Dispose ();
				lbDate = null;
			}

			if (lbFullname != null) {
				lbFullname.Dispose ();
				lbFullname = null;
			}

			if (lbReference != null) {
				lbReference.Dispose ();
				lbReference = null;
			}

			if (lbStatus != null) {
				lbStatus.Dispose ();
				lbStatus = null;
			}

			if (lbTime != null) {
				lbTime.Dispose ();
				lbTime = null;
			}

			if (viewDescription != null) {
				viewDescription.Dispose ();
				viewDescription = null;
			}

			if (viewStatus != null) {
				viewStatus.Dispose ();
				viewStatus = null;
			}
		}
	}
}
