using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingConfirmCell : TCBookingCell
	{
		public static readonly NSString Key = new NSString ("TCBookingConfirmCell");
		public static readonly UINib Nib;

		public TCBookingTemplateViewController controller { get; set; }

		static TCBookingConfirmCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookingConfirmCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCBookingConfirmCell_iPhone", NSBundle.MainBundle);
		}

		public TCBookingConfirmCell (IntPtr handle) : base (handle)
		{
		}

		public static TCBookingConfirmCell Create ()
		{
			return (TCBookingConfirmCell)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();

			string fullname = info.SpecialistName;
			if (MApplication.getInstance ().isConsultant)
				fullname = info.CustomerName;

			this.lbFullname.Text = fullname;
			this.lbReference.Text = info.ReferenceNo == null ? "N/A" : info.ReferenceNo;

			DateTime startTime = MUtils.stringToDateTime (info.StartTime);
			String dateDisplay = MUtils.dateTimeToString (startTime, MUtils.kFormatDate);
			String timeDisplay = MUtils.dateTimeToString (startTime, MUtils.kFormatDefaultTime);
			this.lbCreatedDate.Text = info.CreatedDate  == null ? "N/A" : MUtils.stringDateToString (info.CreatedDate, MUtils.kFormatNSDateTime);

			if (startTime.Date == DateTime.Today.Date)
				lbDate.Text = "TODAY\n";
			else
				lbDate.Text = dateDisplay;

			lbTime.Text = timeDisplay;
		}
	}
}

