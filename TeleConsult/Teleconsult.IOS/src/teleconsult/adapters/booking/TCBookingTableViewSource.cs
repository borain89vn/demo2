using System;
using UIKit;
using Foundation;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCBookingTableViewSource : TCTableViewSource
	{
		private TCBookingTemplateViewController controller;
		private Action<NSObject, NSIndexPath> deleteCallback;

		public TCBookingTableViewSource (TCBookingTemplateViewController vc) : base (vc, vc.refreshHeaderView, vc.tableView)
		{
			this.controller = vc;
		}

		public void setDeleteCallback (Action<NSObject, NSIndexPath> deleteCallback)
		{
			this.deleteCallback = deleteCallback;
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			if (typeof(TCBookingRequestViewController) == this.controller.GetType ()) {
				key = TCBookingRequestCell.Key;
			} else if (typeof(TCBookingConfirmedViewController) == this.controller.GetType ()) {
				key = TCBookingConfirmCell.Key;
			} else if (typeof(TCBookingPastViewController) == this.controller.GetType ()) {
				key = TCBookingPastCell.Key;
			} else if (typeof(TCBookingAlertViewController) == this.controller.GetType ()) {
				key = TCBookingAlertCell.Key;
			}
				
			TCBookingCell cell = tableView.DequeueReusableCell (key) as TCBookingCell;

			if (cell == null) {
				if (typeof(TCBookingRequestViewController) == this.controller.GetType ()) {
					cell = TCBookingRequestCell.Create ();
				} else if (typeof(TCBookingConfirmedViewController) == this.controller.GetType ()) {
					cell = TCBookingConfirmCell.Create ();
				} else if (typeof(TCBookingAlertViewController) == this.controller.GetType ()) {
					cell = TCBookingAlertCell.Create ();
				} else if (typeof(TCBookingPastViewController) == this.controller.GetType ()) {
					cell = TCBookingPastCell.Create ();
				}
				cell.controller = this.controller;
				cell.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
			}

			// TODO: populate the cell with the appropriate data based on the indexPath
			if (this.controller is TCBookingAlertViewController) {
				cell._event = this.controller.bookingEvents [indexPath.Row];
				cell.deleteBlock = this.deleteCallback;
			} else {
				cell.info = this.controller.bookingInfos [indexPath.Row];
			}

			return cell;
		}

		public override nint NumberOfSections (UITableView tableView)
		{
			// TODO: return the actual number of sections
			return 1;
		}

		public override nint RowsInSection (UITableView tableview, nint section)
		{
			// TODO: return the actual number of items in the section
			nint numb = 0;

			if (this.controller is TCBookingAlertViewController) {
				if (this.controller.bookingEvents != null)
					numb = this.controller.bookingEvents.Count;
				else
					numb = 0;
			} else {
				if (this.controller.bookingInfos != null)
					numb = this.controller.bookingInfos.Count;
				else
					numb = 0;
			}

			return numb;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			int i = 0;

			if (this.controller is TCBookingRequestViewController || this.controller is TCBookingAlertViewController) {
				i = 95;
			} else {
				i = 55;
			}
				
			return i;
		}

		public override bool CanEditRow (UITableView tableView, NSIndexPath indexPath)
		{
			bool status = false;
			if (this.parentController is TCBookingAlertViewController) {
				status = true;
			}
			return status;
		}

		public override bool CanMoveRow (UITableView tableView, NSIndexPath indexPath)
		{ 
			return true; 
		}

		public override UITableViewCellEditingStyle EditingStyleForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return UITableViewCellEditingStyle.Delete; 
		}

		public override void CommitEditingStyle (UITableView tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath indexPath)
		{
			if (this.deleteCallback != null) {
				this.deleteCallback (tableView, indexPath);
			}
		}

		private void sendRequestReadBooking (Guid bookingId)
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.InvokeOnMainThread (delegate {
				
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");

			});
			DataHelperRequest.getInstance ().updateReadBookingEvent (bookingId, successful, failure);
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			TCConsultationTemplateViewController consultationVC = null;
			BookingInfo bookInfo;

			if (this.controller.typeBooking () == Constants.LISTTYPE.ALERTS) {

				BookingEvent bookEvent = (BookingEvent)this.controller.bookingEvents [indexPath.Row];
			
				switch (bookEvent.Status) {
				case (int)CoreSystem.Constants.ALERT_EVENT_TYPE.PHOTO:
					showAlertImage (bookEvent);
					tableView.DeselectRow (indexPath, true);
					return;
				case (int)CoreSystem.Constants.ALERT_EVENT_TYPE.REQUEST:
					consultationVC = new TCConsultationRequestViewController ();
					break;
				case (int)CoreSystem.Constants.ALERT_EVENT_TYPE.CONFIRMED:
					consultationVC = new TCConsultationConfirmViewController ();
					break;
				case (int)CoreSystem.Constants.ALERT_EVENT_TYPE.PAST:
					consultationVC = new TCConsultationPastViewController ();
					break;
				default:
					tableView.DeselectRow (indexPath, true);
					return;
					break;
				}
					
				consultationVC.description = bookEvent.Description;
				consultationVC.parentVC = this.parentController;
				bookInfo = bookEvent.Booking;
			} else {
				bookInfo = this.controller.bookingInfos [indexPath.Row];
				if (this.controller.typeBooking () == Constants.LISTTYPE.BOOKINGREQUESTS) {
					consultationVC = new TCConsultationRequestViewController ();
				} else if (this.controller.typeBooking () == Constants.LISTTYPE.CONFIRMEDBOOKINGS) {
					consultationVC = new TCConsultationConfirmViewController ();
				} else if (this.controller.typeBooking () == Constants.LISTTYPE.PASTHISTORY) {
					consultationVC = new TCConsultationPastViewController ();
				}
			}
		
			consultationVC.bookingInfo = bookInfo;
			consultationVC.View.Frame = this.controller.View.Frame;
			this.controller.NavigationController.PushViewController (consultationVC, true);
	
			tableView.DeselectRow (indexPath, true);
		}

		private void showAlertImage (BookingEvent bookingEvent)
		{
			if (bookingEvent.Booking != null && bookingEvent.Booking.BookingDocuments != null && bookingEvent.Booking.BookingDocuments.Count > 0 && bookingEvent.UploadedDocument != null) {
				var bookingDocumentDto = bookingEvent.Booking.BookingDocuments.Find (x => x.S3FileName.Equals(bookingEvent.UploadedDocument)) as BookingDocumentDto;
				if (bookingDocumentDto != null) {
					TCFileManager fileManager = TCFileManager.Create ();
					fileManager.showFile (bookingEvent.UploadedDocument);
					fileManager.parentController = this.controller;
					fileManager.Frame = this.controller.NavigationController.View.Frame;
					fileManager.Center = this.controller.parentVC.NavigationController.View.Center;
					this.controller.NavigationController.View.AddSubview (fileManager);
				} else {
					MUtils.showAlert (this.parentController, TCLocalizabled.getText("MessageAlertFileNoLonger"));
				}
			} else {
				MUtils.showAlert (this.parentController, TCLocalizabled.getText("MessageAlertFileNoLonger"));
			}

		}
	}
}
