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
	[Register ("TCConsultationRequestViewController")]
	partial class TCConsultationRequestViewController
	{
		[Outlet]
		UIKit.UILabel lbEndTime { get; set; }

		[Outlet]
		UIKit.UILabel lbEnquiry { get; set; }

		[Outlet]
		UIKit.UILabel lbStartTime { get; set; }

		[Outlet]
		UIKit.UILabel lbTimeExpired { get; set; }

		[Outlet]
		UIKit.UIView viewButtons { get; set; }

		[Outlet]
		UIKit.UIView viewConfirm_Decline { get; set; }

		[Outlet]
		UIKit.UIView viewDecline { get; set; }

		[Outlet]
		UIKit.UIView viewEnquiry { get; set; }

		[Outlet]
		UIKit.UIView viewFee { get; set; }

		[Outlet]
		UIKit.UIView viewOK_Cancel { get; set; }

		[Outlet]
		UIKit.UIView viewPreferred { get; set; }

		[Outlet]
		UIKit.UIView viewReschedule_Confirm_Decline { get; set; }

		[Outlet]
		UIKit.UIView viewReschedule_Decline { get; set; }

		[Outlet]
		UIKit.UIView viewSchedule_Decline { get; set; }

		[Outlet]
		UIKit.UIView viewTimeWindow { get; set; }

		[Action ("cancelClicked:")]
		partial void cancelClicked (Foundation.NSObject sender);

		[Action ("chooseEndTime:")]
		partial void chooseEndTime (Foundation.NSObject sender);

		[Action ("chooseStartTime:")]
		partial void chooseStartTime (Foundation.NSObject sender);

		[Action ("confirmClicked:")]
		partial void confirmClicked (Foundation.NSObject sender);

		[Action ("declineClicked:")]
		partial void declineClicked (Foundation.NSObject sender);

		[Action ("OKClicked:")]
		partial void OKClicked (Foundation.NSObject sender);

		[Action ("rescheduleClicked:")]
		partial void rescheduleClicked (Foundation.NSObject pSender);

		[Action ("scheduleClicked:")]
		partial void scheduleClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lbEndTime != null) {
				lbEndTime.Dispose ();
				lbEndTime = null;
			}

			if (lbEnquiry != null) {
				lbEnquiry.Dispose ();
				lbEnquiry = null;
			}

			if (lbStartTime != null) {
				lbStartTime.Dispose ();
				lbStartTime = null;
			}

			if (lbTimeExpired != null) {
				lbTimeExpired.Dispose ();
				lbTimeExpired = null;
			}

			if (viewButtons != null) {
				viewButtons.Dispose ();
				viewButtons = null;
			}

			if (viewConfirm_Decline != null) {
				viewConfirm_Decline.Dispose ();
				viewConfirm_Decline = null;
			}

			if (viewDecline != null) {
				viewDecline.Dispose ();
				viewDecline = null;
			}

			if (viewEnquiry != null) {
				viewEnquiry.Dispose ();
				viewEnquiry = null;
			}

			if (viewFee != null) {
				viewFee.Dispose ();
				viewFee = null;
			}

			if (viewOK_Cancel != null) {
				viewOK_Cancel.Dispose ();
				viewOK_Cancel = null;
			}

			if (viewPreferred != null) {
				viewPreferred.Dispose ();
				viewPreferred = null;
			}

			if (viewReschedule_Confirm_Decline != null) {
				viewReschedule_Confirm_Decline.Dispose ();
				viewReschedule_Confirm_Decline = null;
			}

			if (viewReschedule_Decline != null) {
				viewReschedule_Decline.Dispose ();
				viewReschedule_Decline = null;
			}

			if (viewSchedule_Decline != null) {
				viewSchedule_Decline.Dispose ();
				viewSchedule_Decline = null;
			}

			if (viewTimeWindow != null) {
				viewTimeWindow.Dispose ();
				viewTimeWindow = null;
			}
		}
	}
}
