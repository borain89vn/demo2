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
	[Register ("TCConsultationConfirmViewController")]
	partial class TCConsultationConfirmViewController
	{
		[Outlet]
		UIKit.UIButton btnAddFile { get; set; }

		[Outlet]
		UIKit.UIButton btnBeginConsultation { get; set; }

		[Outlet]
		UIKit.UIButton btnDecline { get; set; }

		[Outlet]
		UIKit.UILabel lbEnquiry { get; set; }

		[Outlet]
		UIKit.UIView viewAttachment { get; set; }

		[Outlet]
		UIKit.UIView viewButtons { get; set; }

		[Outlet]
		UIKit.UIView viewdefaultButtons { get; set; }

		[Outlet]
		UIKit.UIView viewEnquiry { get; set; }

		[Outlet]
		UIKit.UIView viewFiles { get; set; }

		[Action ("addFileClicked:")]
		partial void addFileClicked (Foundation.NSObject sender);

		[Action ("beginConsultationClicked:")]
		partial void beginConsultationClicked (Foundation.NSObject sender);

		[Action ("declineClicked:")]
		partial void declineClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (btnBeginConsultation != null) {
				btnBeginConsultation.Dispose ();
				btnBeginConsultation = null;
			}

			if (btnAddFile != null) {
				btnAddFile.Dispose ();
				btnAddFile = null;
			}

			if (btnDecline != null) {
				btnDecline.Dispose ();
				btnDecline = null;
			}

			if (lbEnquiry != null) {
				lbEnquiry.Dispose ();
				lbEnquiry = null;
			}

			if (viewAttachment != null) {
				viewAttachment.Dispose ();
				viewAttachment = null;
			}

			if (viewButtons != null) {
				viewButtons.Dispose ();
				viewButtons = null;
			}

			if (viewdefaultButtons != null) {
				viewdefaultButtons.Dispose ();
				viewdefaultButtons = null;
			}

			if (viewEnquiry != null) {
				viewEnquiry.Dispose ();
				viewEnquiry = null;
			}

			if (viewFiles != null) {
				viewFiles.Dispose ();
				viewFiles = null;
			}
		}
	}
}
