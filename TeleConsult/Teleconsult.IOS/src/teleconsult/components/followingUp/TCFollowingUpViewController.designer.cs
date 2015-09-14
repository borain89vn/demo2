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
	[Register ("TCFollowingUpViewController")]
	partial class TCFollowingUpViewController
	{
		[Outlet]
		UIKit.UIActivityIndicatorView acIndicator { get; set; }

		[Outlet]
		UIKit.UIImageView avatarView { get; set; }

		[Outlet]
		UIKit.UIButton btnCamera { get; set; }

		[Outlet]
		UIKit.UIButton btnCameraCustomer { get; set; }

		[Outlet]
		UIKit.UIButton btnCameraSpecialist { get; set; }

		[Outlet]
		UIKit.UIButton btnEmail { get; set; }

		[Outlet]
		UIKit.UIButton btnFavorite { get; set; }

		[Outlet]
		UIKit.UIButton btnFeedback { get; set; }

		[Outlet]
		UIKit.UIButton btnReplayCustomer { get; set; }

		[Outlet]
		UIKit.UIButton btnReplaySpecialist { get; set; }

		[Outlet]
		UIKit.UIButton btnTranscriptCustomer { get; set; }

		[Outlet]
		UIKit.UIButton btnTranscriptSpecialist { get; set; }

		[Outlet]
		UIKit.UIButton btnWaiveFee { get; set; }

		[Outlet]
		UIKit.UILabel lbCost { get; set; }

		[Outlet]
		UIKit.UILabel lbFullname { get; set; }

		[Outlet]
		UIKit.UILabel lbHours { get; set; }

		[Outlet]
		UIKit.UILabel lbTitle { get; set; }

		[Outlet]
		UIKit.UILabel lbTitleCost { get; set; }

		[Outlet]
		UIKit.UILabel lbTitleTime { get; set; }

		[Outlet]
		UIKit.UILabel lbWarningWaiveFee { get; set; }

		[Outlet]
		UIKit.UIView lineFiles { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UIView viewActionCustomer { get; set; }

		[Outlet]
		UIKit.UIView viewActionSpecialist { get; set; }

		[Outlet]
		UIKit.UIView viewFiles { get; set; }

		[Outlet]
		UIKit.UIView viewTimeCost { get; set; }

		[Action ("backClicked:")]
		partial void backClicked (Foundation.NSObject sender);

		[Action ("emailClicked:")]
		partial void emailClicked (Foundation.NSObject sender);

		[Action ("favoriteClicked:")]
		partial void favoriteClicked (Foundation.NSObject sender);

		[Action ("feedbackClicked:")]
		partial void feedbackClicked (Foundation.NSObject sender);

		[Action ("replayClicked:")]
		partial void replayClicked (Foundation.NSObject sender);

		[Action ("transcribeClicked:")]
		partial void transcribeClicked (Foundation.NSObject sender);

		[Action ("uploadPhoto:")]
		partial void uploadPhoto (Foundation.NSObject sender);

		[Action ("waiveFeeClicked:")]
		partial void waiveFeeClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (acIndicator != null) {
				acIndicator.Dispose ();
				acIndicator = null;
			}

			if (avatarView != null) {
				avatarView.Dispose ();
				avatarView = null;
			}

			if (btnCamera != null) {
				btnCamera.Dispose ();
				btnCamera = null;
			}

			if (btnCameraCustomer != null) {
				btnCameraCustomer.Dispose ();
				btnCameraCustomer = null;
			}

			if (btnCameraSpecialist != null) {
				btnCameraSpecialist.Dispose ();
				btnCameraSpecialist = null;
			}

			if (btnEmail != null) {
				btnEmail.Dispose ();
				btnEmail = null;
			}

			if (btnFavorite != null) {
				btnFavorite.Dispose ();
				btnFavorite = null;
			}

			if (btnFeedback != null) {
				btnFeedback.Dispose ();
				btnFeedback = null;
			}

			if (btnReplayCustomer != null) {
				btnReplayCustomer.Dispose ();
				btnReplayCustomer = null;
			}

			if (btnReplaySpecialist != null) {
				btnReplaySpecialist.Dispose ();
				btnReplaySpecialist = null;
			}

			if (btnTranscriptCustomer != null) {
				btnTranscriptCustomer.Dispose ();
				btnTranscriptCustomer = null;
			}

			if (btnTranscriptSpecialist != null) {
				btnTranscriptSpecialist.Dispose ();
				btnTranscriptSpecialist = null;
			}

			if (btnWaiveFee != null) {
				btnWaiveFee.Dispose ();
				btnWaiveFee = null;
			}

			if (lbCost != null) {
				lbCost.Dispose ();
				lbCost = null;
			}

			if (lbFullname != null) {
				lbFullname.Dispose ();
				lbFullname = null;
			}

			if (lbHours != null) {
				lbHours.Dispose ();
				lbHours = null;
			}

			if (lbTitle != null) {
				lbTitle.Dispose ();
				lbTitle = null;
			}

			if (lbTitleCost != null) {
				lbTitleCost.Dispose ();
				lbTitleCost = null;
			}

			if (lbTitleTime != null) {
				lbTitleTime.Dispose ();
				lbTitleTime = null;
			}

			if (lineFiles != null) {
				lineFiles.Dispose ();
				lineFiles = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (viewActionCustomer != null) {
				viewActionCustomer.Dispose ();
				viewActionCustomer = null;
			}

			if (viewActionSpecialist != null) {
				viewActionSpecialist.Dispose ();
				viewActionSpecialist = null;
			}

			if (viewFiles != null) {
				viewFiles.Dispose ();
				viewFiles = null;
			}

			if (viewTimeCost != null) {
				viewTimeCost.Dispose ();
				viewTimeCost = null;
			}

			if (lbWarningWaiveFee != null) {
				lbWarningWaiveFee.Dispose ();
				lbWarningWaiveFee = null;
			}
		}
	}
}
