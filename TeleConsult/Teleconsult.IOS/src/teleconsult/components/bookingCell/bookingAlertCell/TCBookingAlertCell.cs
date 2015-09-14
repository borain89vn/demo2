using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingAlertCell : TCBookingCell
	{
		public static readonly NSString Key = new NSString ("TCBookingAlertCell");
		public static readonly UINib Nib;
		private bool isRead;

		static TCBookingAlertCell ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCBookingAlertCell_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCBookingAlertCell_iPhone", NSBundle.MainBundle);
		}

		public TCBookingAlertCell (IntPtr handle) : base (handle)
		{
		}

		public static TCBookingAlertCell Create ()
		{
			return (TCBookingAlertCell)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();

			if (_event != null) {
				BookingInfo bookInfo = _event.Booking;
				if (bookInfo != null) {
					string fullname = bookInfo.SpecialistName;
					if (MApplication.getInstance ().isConsultant)
						fullname = bookInfo.CustomerName;

					this.lbFullname.Text = fullname;
					this.lbReference.Text =  (bookInfo.ReferenceNo == null ? "N/A" : bookInfo.ReferenceNo);

					DateTime createDate = MUtils.stringToDateTime (_event.CreatedDate);
					TimeSpan timeSub = CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName) - createDate;

					if (timeSub.Days > 0) {
						lbTimeMinute.Text = timeSub.Days.ToString () + "d";
					} else if (timeSub.Hours > 0) {
						lbTimeMinute.Text = timeSub.Hours.ToString () + "h";
					} else {
						lbTimeMinute.Text = timeSub.Minutes.ToString () + "m";
					}

					string status = _event.ShortDescription;

					if (status == null || status.Equals("")) {
						this.viewStatus.Hidden = true;
					} else {
						if (_event.ShortDescription.Equals (CoreSystem.Constants.BookingRequestMade) || _event.ShortDescription.Equals (CoreSystem.Constants.RequiredOnBookingRequest))
							this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBookingStatusRed);
						else
							this.viewStatus.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBookingStatusBlue);

						hightLightStatus (status);
					}
//					if (!_event.IsRead) 
//						setBold (false);
				}
			}
		}

		public void refreshRow()
		{
			_event.IsRead = true;
			setBold(isRead);
		}

		private void setBold(bool isRead)
		{
			UIFont font = isRead ? MUtils.getFontWithSize (false, 13.0f) : MUtils.getFontWithSize (true, 13.0f);
			UIFont fontStatus = isRead ? MUtils.getFontWithSize (false, 12.0f) : MUtils.getFontWithSize (true, 12.0f);

			this.lbStatus.Font = fontStatus;	
			this.lbCreatedDate.Font = font;
			this.lbTitleCreated.Font = font;
			this.lbTimeMinute.Font = font;
		}

	}
}

