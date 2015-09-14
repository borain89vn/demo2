
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingRequestCell : TCBookingCell
	{
		public static readonly NSString Key = new NSString ("TCBookingRequestCell");
		public static readonly UINib Nib;

		static TCBookingRequestCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookingRequestCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCBookingRequestCell_iPhone", NSBundle.MainBundle);
		}

		public TCBookingRequestCell (IntPtr handle) : base (handle)
		{
		}

		public static TCBookingRequestCell Create ()
		{
			return (TCBookingRequestCell)Nib.Instantiate (null, null) [0];
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

			if (info.Type == (int)Constants.TALKNOWTYPE.ASAP && info.Status == (int)Constants.STATUS.Requested) {
				lbASAP.Text = "ASAP";
				lbTime.Hidden = true;
				lbDate.Hidden = true;
			} else {
				lbASAP.Hidden = true;
				lbTime.Hidden = false;
				if (startTime.Date == DateTime.Today.Date)
					lbDate.Text = "TODAY\n";
				else
					lbDate.Text = dateDisplay;

				lbTime.Text = timeDisplay;
			}

			string status = "";
			if (MApplication.getInstance ().isConsultant == true) {
				if (info.Status == (int)Constants.STATUS.SpecialistRescheduled) {
					this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor(Theme.BackgroundBookingStatusBlue);
					status = TCLocalizabled.getText ("TextCustomerToSchedule");
				} else {
					this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor(Theme.BackgroundBookingStatusRed);
					status = TCLocalizabled.getText ("TextAwaitingBookingSpecialist");
				}
			} else {
				if (info.Status == (int)Constants.STATUS.SpecialistRescheduled) {
					this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor(Theme.BackgroundBookingStatusRed);
					status = TCLocalizabled.getText ("TextAwaitingBookingCustomer");
				} else {
					this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor(Theme.BackgroundBookingStatusBlue);
					status = TCLocalizabled.getText ("TextSpecialistToReschedule");
				}
			}
				
			hightLightStatus (status);
		}
	}
}


