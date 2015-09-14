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
	[Register ("TCBookingAlertCell")]
	partial class TCBookingAlertCell
	{
		[Outlet]
		UIKit.UILabel lbTimeMinute { get; set; }
		[Outlet]
		UIKit.UILabel lbTitleCreated { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (lbTimeMinute != null) {
				lbTimeMinute.Dispose ();
				lbTimeMinute = null;
			}

			if (lbTitleCreated != null) {
				lbTitleCreated.Dispose ();
				lbTitleCreated = null;
			}

		}
	}
}
