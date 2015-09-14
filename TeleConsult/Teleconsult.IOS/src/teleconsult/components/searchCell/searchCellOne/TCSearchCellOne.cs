
using System;
using System.Drawing;

using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchCellOne : TCSearchCellTemplate
	{
		public static readonly NSString Key = new NSString ("TCSearchCellOne");
		public static readonly UINib Nib;

		static TCSearchCellOne ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSearchCellOne_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSearchCellOne_iPhone", NSBundle.MainBundle);
		}

		public TCSearchCellOne (IntPtr handle) : base (handle)
		{

		}

		public static TCSearchCellOne Create ()
		{
			return (TCSearchCellOne)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()  
		{
			base.LayoutSubviews ();
		}
	}
}

