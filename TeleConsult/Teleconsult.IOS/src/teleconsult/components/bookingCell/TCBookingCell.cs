using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingCell : UITableViewCell
	{
		public static readonly NSString Key = new NSString ("TCBookingCell");
		public static readonly UINib Nib;
		public TCBookingTemplateViewController controller { get; set; }
		public Action<NSObject, NSIndexPath> deleteBlock { get; set; }

		public BookingInfo info { get; set; }
		public BookingEvent _event { get; set; }

		static TCBookingCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookingCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCBookingCell_iPhone", NSBundle.MainBundle);
		}

		public TCBookingCell (IntPtr handle) : base (handle)
		{

		}

		public static TCBookingCell Create ()
		{
			return (TCBookingCell)Nib.Instantiate (null, null) [0];
		}
			
		public void hightLightStatus(string status)
		{
			CGRect frameViewStatus = this.viewStatus.Frame;

			MTextAttributeDTO sizeText2 = MUtils.getSizeTextAttribute (status, MUtils.getFontWithSize(false, 13.0f), 0, this.lbStatus.Frame.Size);

			frameViewStatus.Width = sizeText2.size.Width + 17.0f;

			this.viewStatus.Frame = frameViewStatus;
			this.viewStatus.Layer.CornerRadius = 13;
			this.viewStatus.Layer.MasksToBounds = true;
			this.lbStatus.Text = status;
		}
			
	}
}

