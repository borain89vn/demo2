using System;
using System.Drawing;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSortCell : UITableViewCell
	{
		public static readonly NSString Key = new NSString ("TCSortCell");
		public static readonly UINib Nib;
		public NSDictionary data { get; set; }
		static TCSortCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSortCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSortCell_iPhone", NSBundle.MainBundle);
		}

		public TCSortCell (IntPtr handle) : base (handle)
		{
		}

		public static TCSortCell Create ()
		{
			return (TCSortCell)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();
			this.lbSortName.Text = data.Values [0].ToString();
		}

		public void unCheck()
		{
			this.checkImage.Hidden = true;
		}

		public void check()
		{
			this.checkImage.Hidden = false;
		}
	}
}

