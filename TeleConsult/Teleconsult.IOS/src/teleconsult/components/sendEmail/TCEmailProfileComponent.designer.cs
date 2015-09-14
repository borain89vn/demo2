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
	[Register ("TCEmailProfileComponent")]
	partial class TCEmailProfileComponent
	{
		[Outlet]
		UIKit.UIButton btnCancel { get; set; }

		[Outlet]
		UIKit.UIButton btnSend { get; set; }

		[Outlet]
		UIKit.UIView emailView { get; set; }

		[Outlet]
		UIKit.UILabel lbPrompt { get; set; }

		[Outlet]
		UIKit.UILabel lbTitle { get; set; }

		[Outlet]
		UIKit.UITextField tfYourEmail { get; set; }

		[Outlet]
		UIKit.UITextView tvEmail { get; set; }

		[Outlet]
		UIKit.UITextView tvMessage { get; set; }

		[Outlet]
		UIKit.UIView viewYourEmail { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("oKClicked:")]
		partial void oKClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (emailView != null) {
				emailView.Dispose ();
				emailView = null;
			}

			if (viewYourEmail != null) {
				viewYourEmail.Dispose ();
				viewYourEmail = null;
			}

			if (tfYourEmail != null) {
				tfYourEmail.Dispose ();
				tfYourEmail = null;
			}

			if (btnCancel != null) {
				btnCancel.Dispose ();
				btnCancel = null;
			}

			if (btnSend != null) {
				btnSend.Dispose ();
				btnSend = null;
			}

			if (lbPrompt != null) {
				lbPrompt.Dispose ();
				lbPrompt = null;
			}

			if (lbTitle != null) {
				lbTitle.Dispose ();
				lbTitle = null;
			}

			if (tvEmail != null) {
				tvEmail.Dispose ();
				tvEmail = null;
			}

			if (tvMessage != null) {
				tvMessage.Dispose ();
				tvMessage = null;
			}
		}
	}
}
