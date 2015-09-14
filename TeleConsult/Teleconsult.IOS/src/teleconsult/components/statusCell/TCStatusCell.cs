
using System;
using System.Drawing;

using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCStatusCell : UITableViewCell
	{
		public static readonly NSString Key = new NSString ("TCStatusCell");
		public static readonly UINib Nib;
		public NSDictionary data { get; set; }
		static TCStatusCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCStatusCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCStatusCell_iPhone", NSBundle.MainBundle);
		}

		public TCStatusCell (IntPtr handle) : base (handle)
		{
		}

		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();
			this.lbStatus.Text = data.Values [0].ToString();

			int index = int.Parse (data.Keys [0].ToString ());

			if (index == CoreSystem.MApplication.getInstance ().iExpertStatus) {
				check (); 
			}

			setImageStatus (index);
		}

		private void setImageStatus (int index)
		{
			if (index == (int)CoreSystem.Constants.STATUS_CONSULTANT.Available) {
				this.imageStatus.Image = UIImage.FromBundle ("available_icon");
			} else if (index == (int)CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable) {
				this.imageStatus.Image = UIImage.FromBundle ("maybe_available_icon");
			} else if (index == (int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable) {
				this.imageStatus.Image = UIImage.FromBundle ("not_available_icon");
			}
		}

		public void unCheck()
		{
			this.checkImage.Hidden = true;
		}

		public void check()
		{
			this.checkImage.Hidden = false;
		}

		public static TCStatusCell Create ()
		{
			return (TCStatusCell)Nib.Instantiate (null, null) [0];
		}
	}
}

