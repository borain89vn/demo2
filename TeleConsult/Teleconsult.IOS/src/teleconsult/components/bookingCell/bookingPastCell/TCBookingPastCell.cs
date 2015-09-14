using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingPastCell : TCBookingCell
	{
		public static readonly NSString Key = new NSString ("TCBookingPastCell");
		public static readonly UINib Nib;

		static TCBookingPastCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookingPastCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCBookingPastCell_iPhone", NSBundle.MainBundle);
		}

		public TCBookingPastCell (IntPtr handle) : base (handle)
		{
		}

		public static TCBookingPastCell Create ()
		{
			return (TCBookingPastCell)Nib.Instantiate (null, null) [0];
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

			if (info.StartTime == null || startTime == DateTime.MinValue) {
				startTime = MUtils.stringToDateTime (info.CreatedDate);
			}

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

