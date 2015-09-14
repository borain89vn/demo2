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
	[Register ("TCReplayViewController")]
	partial class TCReplayViewController
	{
		[Outlet]
		UIKit.UIView viewPlay { get; set; }

		[Action ("backClicked:")]
		partial void backClicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (viewPlay != null) {
				viewPlay.Dispose ();
				viewPlay = null;
			}
		}
	}
}
