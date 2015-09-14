using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;
using System.Collections.Generic;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingAlertViewController : TCBookingTemplateViewController, TCDeleteBookingHelperDelegate
	{
		private int rowDeleted;

		public TCBookingAlertViewController (IntPtr handle) : base (handle)
		{

		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
			this.bookingSource.setDeleteCallback (deleteBooking);
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostDeleteFileSuccess, deletedFileReload);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostRefreshAlertFileDeleted, deletedFileReload);
		}

		public override Constants.LISTTYPE typeBooking ()
		{
			return Constants.LISTTYPE.ALERTS;
		}

		public override void updateUI ()
		{
			this.tableView.ReloadData ();
		}

		private void deleteBooking (NSObject tableView, NSIndexPath indexPath)
		{
			this.rowDeleted = indexPath.Row;
			TCDeleteBookingHelper deleteHelper = new TCDeleteBookingHelper (this);
			deleteHelper.Delegate = this;
			deleteHelper.delete (this.bookingEvents [indexPath.Row].Id);
		
		}

		#region Notificaiton Local

		public void deletedFileReload (object notification)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto documentDto = (BookingDocumentDto)notification;
				List<BookingEvent> _bookingEvents = this.bookingEvents.FindAll (x => x.Booking.Id == documentDto.BookingId);

				if (_bookingEvents != null && _bookingEvents.Count > 0) {

					foreach (BookingEvent _bookingEvent in _bookingEvents) {
						BookingInfo _bookingInfo = _bookingEvent.Booking;
						BookingDocumentDto _documentDto = null;
						if (_bookingInfo != null && _bookingInfo.BookingDocuments != null) {
							_documentDto = _bookingInfo.BookingDocuments.Find (x => x.Id == documentDto.Id) as BookingDocumentDto;

							if (_documentDto != null) {
								_bookingInfo.BookingDocuments.Remove (_documentDto);
							}
						}
					}
				}
			});
		}


		#endregion

		#region TCDeleteHelperDelegate

		public void deleteBookingSuccess (TCDeleteBookingHelper helper)
		{
			this.bookingEvents.RemoveAt (this.rowDeleted);
			this.parentVC.setBadgeValue (this, this.bookingEvents.Count.ToString ());
			updateUI ();
		}

		public void deleteBookingFail (TCDeleteBookingHelper helper)
		{
			MUtils.showRequestFail (this);
		}

		public void beginDeleteBookingRequest (TCDeleteBookingHelper helper)
		{
			this.loadingView.show ();
		}

		public  void finishDeleteBookingRequest (TCDeleteBookingHelper helper)
		{
			this.loadingView.dismiss ();
		}

		#endregion
	}
}

