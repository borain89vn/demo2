
using System;
using System.Drawing;

using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchCellThree : TCSearchCellTemplate
	{
		public static readonly NSString Key = new NSString ("TCSearchCellThree");
		public static readonly UINib Nib;

		static TCSearchCellThree ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSearchCellThree_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSearchCellThree_iPhone", NSBundle.MainBundle);
		}

		public TCSearchCellThree (IntPtr handle) : base (handle)
		{
		}

		public static TCSearchCellThree Create ()
		{
			return (TCSearchCellThree)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()  
		{
			base.LayoutSubviews ();
		}
	}
}

