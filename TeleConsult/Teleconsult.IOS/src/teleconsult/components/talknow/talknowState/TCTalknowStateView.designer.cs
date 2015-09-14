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
	partial class TCTalknowStateView
	{
		[Outlet]
		UIKit.UIImageView imageStep1 { get; set; }

		[Outlet]
		UIKit.UIImageView imageStep2 { get; set; }

		[Outlet]
		UIKit.UILabel lbTextStep1 { get; set; }

		[Outlet]
		UIKit.UILabel lbTextStep2 { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (imageStep1 != null) {
				imageStep1.Dispose ();
				imageStep1 = null;
			}

			if (imageStep2 != null) {
				imageStep2.Dispose ();
				imageStep2 = null;
			}

			if (lbTextStep2 != null) {
				lbTextStep2.Dispose ();
				lbTextStep2 = null;
			}

			if (lbTextStep1 != null) {
				lbTextStep1.Dispose ();
				lbTextStep1 = null;
			}
		}
	}
}
