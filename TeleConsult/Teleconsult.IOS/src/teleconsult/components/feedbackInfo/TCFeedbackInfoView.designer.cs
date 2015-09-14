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
	partial class TCFeedbackInfoView
	{
		[Outlet]
		UIKit.UILabel lbTextFeedback { get; set; }

		[Outlet]
		UIKit.UIView viewRating { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (viewRating != null) {
				viewRating.Dispose ();
				viewRating = null;
			}

			if (lbTextFeedback != null) {
				lbTextFeedback.Dispose ();
				lbTextFeedback = null;
			}
		}
	}
}
