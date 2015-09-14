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
	[Register ("TCConsultationTemplateViewController")]
	partial class TCConsultationTemplateViewController
	{
		[Outlet]
		public UIKit.UIActivityIndicatorView acIndicator { get; set; }

		[Outlet]
		public UIKit.UIButton btnCancelBooking { get; private set; }

		[Outlet]
		public UIKit.UIButton btnConfirm1 { get; private set; }

		[Outlet]
		public UIKit.UIButton btnConfirm2 { get; private set; }

		[Outlet]
		public UIKit.UIButton btnOK { get; private set; }

		[Outlet]
		public UIKit.UIButton btnReschedule1 { get; private set; }

		[Outlet]
		public UIKit.UIButton btnReschedule2 { get; private set; }

		[Outlet]
		public UIKit.UIButton btnScheduleRequest { get; private set; }

		[Outlet]
		public UIKit.UILabel lbApplicableFee { get; private set; }

		[Outlet]
		public UIKit.UILabel lbFullname { get; private set; }

		[Outlet]
		public UIKit.UILabel lbProposedTime { get; private set; }

		[Outlet]
		public UIKit.UILabel lbTitleApplicableCost { get; set; }

		[Outlet]
		public UIKit.UIScrollView scrollView { get; private set; }

		[Outlet]
		public UIKit.UIView viewAction { get; private set; }

		[Outlet]
		public UIKit.UIImageView viewAvatar { get; private set; }

		[Outlet]
		public UIKit.UIView viewFacade { get; private set; }

		[Outlet]
		public UIKit.UIView viewTime { get; private set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (acIndicator != null) {
				acIndicator.Dispose ();
				acIndicator = null;
			}

			if (btnCancelBooking != null) {
				btnCancelBooking.Dispose ();
				btnCancelBooking = null;
			}

			if (btnConfirm1 != null) {
				btnConfirm1.Dispose ();
				btnConfirm1 = null;
			}

			if (btnConfirm2 != null) {
				btnConfirm2.Dispose ();
				btnConfirm2 = null;
			}

			if (btnOK != null) {
				btnOK.Dispose ();
				btnOK = null;
			}

			if (btnReschedule1 != null) {
				btnReschedule1.Dispose ();
				btnReschedule1 = null;
			}

			if (btnReschedule2 != null) {
				btnReschedule2.Dispose ();
				btnReschedule2 = null;
			}

			if (btnScheduleRequest != null) {
				btnScheduleRequest.Dispose ();
				btnScheduleRequest = null;
			}

			if (lbApplicableFee != null) {
				lbApplicableFee.Dispose ();
				lbApplicableFee = null;
			}

			if (lbFullname != null) {
				lbFullname.Dispose ();
				lbFullname = null;
			}

			if (lbProposedTime != null) {
				lbProposedTime.Dispose ();
				lbProposedTime = null;
			}

			if (scrollView != null) {
				scrollView.Dispose ();
				scrollView = null;
			}

			if (viewAction != null) {
				viewAction.Dispose ();
				viewAction = null;
			}

			if (viewAvatar != null) {
				viewAvatar.Dispose ();
				viewAvatar = null;
			}

			if (viewFacade != null) {
				viewFacade.Dispose ();
				viewFacade = null;
			}

			if (lbTitleApplicableCost != null) {
				lbTitleApplicableCost.Dispose ();
				lbTitleApplicableCost = null;
			}

			if (viewTime != null) {
				viewTime.Dispose ();
				viewTime = null;
			}
		}
	}
}
