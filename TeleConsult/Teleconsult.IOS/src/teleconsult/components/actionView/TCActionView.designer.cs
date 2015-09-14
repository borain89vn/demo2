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
	partial class TCActionView
	{
		[Outlet]
		UIKit.UIButton btnEmail { get; set; }

		[Outlet]
		UIKit.UIButton btnFavorite { get; set; }

		[Outlet]
		UIKit.UIButton btnFeedback { get; set; }

		[Outlet]
		UIKit.UIView viewAction { get; set; }

		[Action ("favoriteClicked:")]
		partial void favoriteClicked (Foundation.NSObject sender);

		[Action ("feedbackClicked:")]
		partial void feedbackClicked (Foundation.NSObject sender);

		[Action ("sendEmailClicked:")]
		partial void sendEmailClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (viewAction != null) {
				viewAction.Dispose ();
				viewAction = null;
			}

			if (btnFavorite != null) {
				btnFavorite.Dispose ();
				btnFavorite = null;
			}

			if (btnFeedback != null) {
				btnFeedback.Dispose ();
				btnFeedback = null;
			}

			if (btnEmail != null) {
				btnEmail.Dispose ();
				btnEmail = null;
			}
		}
	}
}
