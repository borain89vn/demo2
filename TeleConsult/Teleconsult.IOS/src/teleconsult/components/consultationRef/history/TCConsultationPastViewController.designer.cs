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
	[Register ("TCConsultationPastViewController")]
	partial class TCConsultationPastViewController
	{
		[Outlet]
		UIKit.UIImageView imageRating { get; set; }

		[Outlet]
		UIKit.UILabel lbDateEndCall { get; set; }

		[Outlet]
		UIKit.UILabel lbDateStartCall { get; set; }

		[Outlet]
		UIKit.UILabel lbTimeEndCall { get; set; }

		[Outlet]
		UIKit.UILabel lbTimeStartCall { get; set; }

		[Outlet]
		UIKit.UILabel lbTotalCost { get; set; }

		[Outlet]
		UIKit.UILabel lbTotalTime { get; set; }

		[Outlet]
		UIKit.UILabel lbWaiveFee { get; set; }

		[Outlet]
		UIKit.UILabel lbWaiveFeeCost { get; set; }

		[Outlet]
		UIKit.UILabel lbWarningWaiveFee { get; set; }

		[Outlet]
		UIKit.UIView viewActionBook { get; set; }

		[Outlet]
		UIKit.UIView viewActionSend { get; set; }

		[Outlet]
		UIKit.UIView viewAttachment { get; set; }

		[Outlet]
		UIKit.UIView viewCostConsultation { get; set; }

		[Outlet]
		UIKit.UIView viewFiles { get; set; }

		[Outlet]
		UIKit.UIView viewInformation { get; set; }

		[Outlet]
		UIKit.UIView viewTimeConsultation { get; set; }

		[Outlet]
		UIKit.UIView viewTimeDuration { get; set; }

		[Outlet]
		UIKit.UIView viewWaiveFee { get; set; }

		[Action ("waiveFeeClicked:")]
		partial void waiveFeeClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (imageRating != null) {
				imageRating.Dispose ();
				imageRating = null;
			}

			if (lbDateEndCall != null) {
				lbDateEndCall.Dispose ();
				lbDateEndCall = null;
			}

			if (lbDateStartCall != null) {
				lbDateStartCall.Dispose ();
				lbDateStartCall = null;
			}

			if (lbTimeEndCall != null) {
				lbTimeEndCall.Dispose ();
				lbTimeEndCall = null;
			}

			if (lbTimeStartCall != null) {
				lbTimeStartCall.Dispose ();
				lbTimeStartCall = null;
			}

			if (lbTotalCost != null) {
				lbTotalCost.Dispose ();
				lbTotalCost = null;
			}

			if (lbTotalTime != null) {
				lbTotalTime.Dispose ();
				lbTotalTime = null;
			}

			if (lbWaiveFee != null) {
				lbWaiveFee.Dispose ();
				lbWaiveFee = null;
			}

			if (lbWaiveFeeCost != null) {
				lbWaiveFeeCost.Dispose ();
				lbWaiveFeeCost = null;
			}

			if (lbWarningWaiveFee != null) {
				lbWarningWaiveFee.Dispose ();
				lbWarningWaiveFee = null;
			}

			if (viewActionBook != null) {
				viewActionBook.Dispose ();
				viewActionBook = null;
			}

			if (viewActionSend != null) {
				viewActionSend.Dispose ();
				viewActionSend = null;
			}

			if (viewAttachment != null) {
				viewAttachment.Dispose ();
				viewAttachment = null;
			}

			if (viewCostConsultation != null) {
				viewCostConsultation.Dispose ();
				viewCostConsultation = null;
			}

			if (viewFiles != null) {
				viewFiles.Dispose ();
				viewFiles = null;
			}

			if (viewInformation != null) {
				viewInformation.Dispose ();
				viewInformation = null;
			}

			if (viewTimeConsultation != null) {
				viewTimeConsultation.Dispose ();
				viewTimeConsultation = null;
			}

			if (viewTimeDuration != null) {
				viewTimeDuration.Dispose ();
				viewTimeDuration = null;
			}

			if (viewWaiveFee != null) {
				viewWaiveFee.Dispose ();
				viewWaiveFee = null;
			}
		}
	}
}
