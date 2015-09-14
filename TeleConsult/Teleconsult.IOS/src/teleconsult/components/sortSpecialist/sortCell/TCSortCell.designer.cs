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
	[Register ("TCSortCell")]
	partial class TCSortCell
	{
		[Outlet]
		UIKit.UIImageView checkImage { get; set; }

		[Outlet]
		UIKit.UILabel lbSortName { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (checkImage != null) {
				checkImage.Dispose ();
				checkImage = null;
			}

			if (lbSortName != null) {
				lbSortName.Dispose ();
				lbSortName = null;
			}
		}
	}
}
