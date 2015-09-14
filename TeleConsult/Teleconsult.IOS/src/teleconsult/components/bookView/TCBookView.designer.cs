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
	partial class TCBookView
	{
		[Outlet]
		UIKit.UIButton btnAnother { get; set; }

		[Outlet]
		UIKit.UIButton btnASAP { get; set; }

		[Outlet]
		UIKit.UIButton btnStandard { get; set; }

		[Outlet]
		UIKit.UIButton btnTalkNow { get; set; }

		[Outlet]
		UIKit.UILabel lbCostAnother { get; set; }

		[Outlet]
		UIKit.UILabel lbCostSoonest { get; set; }

		[Outlet]
		UIKit.UILabel lbCostStandard { get; set; }

		[Outlet]
		UIKit.UILabel lbCostTalknow { get; set; }

		[Outlet]
		UIKit.UILabel lbNoteExpire { get; set; }

		[Outlet]
		UIKit.UIView viewAnother { get; set; }

		[Outlet]
		UIKit.UIView viewASAP { get; set; }

		[Outlet]
		UIKit.UIView viewBook { get; set; }

		[Outlet]
		UIKit.UIView viewStandard { get; set; }

		[Outlet]
		UIKit.UIView viewTalkNow { get; set; }

		[Action ("anotherTimeClicked:")]
		partial void anotherTimeClicked (UIKit.UIButton sender);

		[Action ("soonestTimeClicked:")]
		partial void soonestTimeClicked (UIKit.UIButton sender);

		[Action ("standardTimeClicked:")]
		partial void standardTimeClicked (UIKit.UIButton sender);

		[Action ("talkNowClicked:")]
		partial void talkNowClicked (UIKit.UIButton sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lbCostAnother != null) {
				lbCostAnother.Dispose ();
				lbCostAnother = null;
			}

			if (lbCostSoonest != null) {
				lbCostSoonest.Dispose ();
				lbCostSoonest = null;
			}

			if (lbCostStandard != null) {
				lbCostStandard.Dispose ();
				lbCostStandard = null;
			}

			if (lbCostTalknow != null) {
				lbCostTalknow.Dispose ();
				lbCostTalknow = null;
			}

			if (viewAnother != null) {
				viewAnother.Dispose ();
				viewAnother = null;
			}

			if (viewASAP != null) {
				viewASAP.Dispose ();
				viewASAP = null;
			}

			if (viewBook != null) {
				viewBook.Dispose ();
				viewBook = null;
			}

			if (viewStandard != null) {
				viewStandard.Dispose ();
				viewStandard = null;
			}

			if (viewTalkNow != null) {
				viewTalkNow.Dispose ();
				viewTalkNow = null;
			}

			if (btnTalkNow != null) {
				btnTalkNow.Dispose ();
				btnTalkNow = null;
			}

			if (btnASAP != null) {
				btnASAP.Dispose ();
				btnASAP = null;
			}

			if (btnAnother != null) {
				btnAnother.Dispose ();
				btnAnother = null;
			}

			if (btnStandard != null) {
				btnStandard.Dispose ();
				btnStandard = null;
			}

			if (lbNoteExpire != null) {
				lbNoteExpire.Dispose ();
				lbNoteExpire = null;
			}
		}
	}
}
