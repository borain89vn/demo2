
using System;
using System.Drawing;

using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchCellFour : TCSearchCellTemplate
	{
		public static readonly NSString Key = new NSString ("TCSearchCellFour");
		public static readonly UINib Nib;

		static TCSearchCellFour ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSearchCellFour_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSearchCellFour_iPhone", NSBundle.MainBundle);
		}

		public TCSearchCellFour (IntPtr handle) : base (handle)
		{
		}

		public static TCSearchCellFour Create ()
		{
			return (TCSearchCellFour)Nib.Instantiate (null, null) [0];
		}
	}
}

