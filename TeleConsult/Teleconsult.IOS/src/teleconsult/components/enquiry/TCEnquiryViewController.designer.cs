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
	[Register ("TCEnquiryViewController")]
	partial class TCEnquiryViewController
	{
		[Outlet]
		UIKit.UIView alertView { get; set; }

		[Outlet]
		UIKit.UIButton btnCancel { get; set; }

		[Outlet]
		UIKit.UIButton btnOk { get; set; }

		[Outlet]
		UIKit.UILabel lbTitle { get; set; }

		[Outlet]
		UIKit.UITextView tvMessage { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("oKClicked:")]
		partial void oKClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (alertView != null) {
				alertView.Dispose ();
				alertView = null;
			}

			if (btnCancel != null) {
				btnCancel.Dispose ();
				btnCancel = null;
			}

			if (btnOk != null) {
				btnOk.Dispose ();
				btnOk = null;
			}

			if (lbTitle != null) {
				lbTitle.Dispose ();
				lbTitle = null;
			}

			if (tvMessage != null) {
				tvMessage.Dispose ();
				tvMessage = null;
			}
		}
	}
}
