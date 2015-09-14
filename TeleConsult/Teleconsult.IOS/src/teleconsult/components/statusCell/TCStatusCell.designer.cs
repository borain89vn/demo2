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
	[Register ("TCStatusCell")]
	partial class TCStatusCell
	{
		[Outlet]
		UIKit.UIImageView checkImage { get; set; }

		[Outlet]
		UIKit.UIImageView imageStatus { get; set; }

		[Outlet]
		UIKit.UILabel lbStatus { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (checkImage != null) {
				checkImage.Dispose ();
				checkImage = null;
			}

			if (lbStatus != null) {
				lbStatus.Dispose ();
				lbStatus = null;
			}

			if (imageStatus != null) {
				imageStatus.Dispose ();
				imageStatus = null;
			}
		}
	}
}
