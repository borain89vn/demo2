using System;
using System.Drawing;
using Foundation;
using UIKit;
using Newtonsoft.Json.Linq;
using CoreSystem;
using RestSharp;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingConfirmedViewController : TCBookingTemplateViewController
	{
		public TCBookingConfirmedViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostRefreshConfirmBooking, new
				TCSelector (refreshBooking));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, updateFileDeleted);
		}

		public override Constants.LISTTYPE typeBooking()
		{
			return Constants.LISTTYPE.CONFIRMEDBOOKINGS;
		}

		public override void updateUI()
		{
			this.tableView.ReloadData();
		}


		#region Notificaiton Local

		public void updateFileDeleted (object fileDto)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto document = (BookingDocumentDto)fileDto;
				if (this.bookingInfos != null) {
					BookingInfo _bookingInfo = this.bookingInfos.Find (x => x.Id == document.BookingId);
					if (_bookingInfo != null) {
						BookingDocumentDto documentDto = _bookingInfo.BookingDocuments.Find (x => x.Id == document.Id);
						if (documentDto != null) {
							_bookingInfo.BookingDocuments.Remove (documentDto);
						}
					}
				}
			});
		}
			
		#endregion
	
	}
}

