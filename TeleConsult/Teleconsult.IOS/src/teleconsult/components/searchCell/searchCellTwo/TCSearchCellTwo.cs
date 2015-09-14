
using System;
using System.Drawing;

using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchCellTwo : TCSearchCellTemplate
	{
		public static readonly NSString Key = new NSString ("TCSearchCellTwo");
		public static readonly UINib Nib;

		static TCSearchCellTwo ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSearchCellTwo_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSearchCellTwo_iPhone", NSBundle.MainBundle);
		}

		public TCSearchCellTwo (IntPtr handle) : base (handle)
		{
		}

		public static TCSearchCellTwo Create ()
		{
			return (TCSearchCellTwo)Nib.Instantiate (null, null) [0];
		}
	}
}

