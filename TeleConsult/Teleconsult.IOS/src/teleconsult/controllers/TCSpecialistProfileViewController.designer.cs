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
	[Register ("TCSpecialistProfileViewController")]
	partial class TCSpecialistProfileViewController
	{
		[Outlet]
		UIKit.UIActivityIndicatorView acIndicator { get; set; }

		[Outlet]
		UIKit.UIImageView avatar { get; set; }

		[Outlet]
		UIKit.UIImageView imageLicense { get; set; }

		[Outlet]
		UIKit.UIImageView imageRate { get; set; }

		[Outlet]
		UIKit.UILabel lbDistance { get; set; }

		[Outlet]
		UIKit.UILabel lbLicense { get; set; }

		[Outlet]
		UIKit.UILabel lbMiniCharge { get; set; }

		[Outlet]
		UIKit.UILabel lbOnTime { get; set; }

		[Outlet]
		UIKit.UILabel lbStatusConsultant { get; set; }

		[Outlet]
		UIKit.UIScrollView scrollView { get; set; }

		[Outlet]
		UIKit.UIImageView starIcon { get; set; }

		[Outlet]
		UIKit.UIView viewAction { get; set; }

		[Outlet]
		UIKit.UIView viewButtons { get; set; }

		[Outlet]
		UIKit.UIView viewDescription { get; set; }

		[Outlet]
		UIKit.UIView viewHead { get; set; }

		[Outlet]
		UIKit.UIView viewSubInfo { get; set; }

		[Action ("emailProfileClicked:")]
		partial void emailProfileClicked (UIKit.UIButton sender);

		[Action ("favouriteClicked:")]
		partial void favouriteClicked (UIKit.UIButton sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (starIcon != null) {
				starIcon.Dispose ();
				starIcon = null;
			}

			if (acIndicator != null) {
				acIndicator.Dispose ();
				acIndicator = null;
			}

			if (avatar != null) {
				avatar.Dispose ();
				avatar = null;
			}

			if (imageLicense != null) {
				imageLicense.Dispose ();
				imageLicense = null;
			}

			if (imageRate != null) {
				imageRate.Dispose ();
				imageRate = null;
			}

			if (lbDistance != null) {
				lbDistance.Dispose ();
				lbDistance = null;
			}

			if (lbLicense != null) {
				lbLicense.Dispose ();
				lbLicense = null;
			}

			if (lbMiniCharge != null) {
				lbMiniCharge.Dispose ();
				lbMiniCharge = null;
			}

			if (lbOnTime != null) {
				lbOnTime.Dispose ();
				lbOnTime = null;
			}

			if (lbStatusConsultant != null) {
				lbStatusConsultant.Dispose ();
				lbStatusConsultant = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (viewAction != null) {
				viewAction.Dispose ();
				viewAction = null;
			}

			if (viewButtons != null) {
				viewButtons.Dispose ();
				viewButtons = null;
			}

			if (viewDescription != null) {
				viewDescription.Dispose ();
				viewDescription = null;
			}

			if (viewHead != null) {
				viewHead.Dispose ();
				viewHead = null;
			}

			if (viewSubInfo != null) {
				viewSubInfo.Dispose ();
				viewSubInfo = null;
			}
		}
	}
}
