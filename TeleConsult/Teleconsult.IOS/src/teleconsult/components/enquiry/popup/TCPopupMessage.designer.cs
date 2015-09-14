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
	partial class TCPopupMessage
	{
		[Outlet]
		UIKit.UIImageView imageViewMessage { get; set; }

		[Outlet]
		UIKit.UILabel lbMessage { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (imageViewMessage != null) {
				imageViewMessage.Dispose ();
				imageViewMessage = null;
			}

			if (lbMessage != null) {
				lbMessage.Dispose ();
				lbMessage = null;
			}
		}
	}
}
