using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;
using System.Collections.Generic;
using System.Linq;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingPastViewController : TCBookingTemplateViewController
	{
		private List<BookingInfo> allBookings;
		private List<BookingInfo> completedBookings;

		public TCBookingPastViewController (IntPtr handle) : base (handle)
		{

		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
			TCNotificationCenter.defaultCenter.addObserver (this, MUtils.generateKeyPastBooking (this), updateInfoWaiveFee);

			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostChangeNumRate, updateBookingInfo);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostUpdateDocumentPast, updateDocumentInfo);
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, updateFileDeleted);
		
			this.tableView.Frame = new CGRect (this.View.Frame.X, this.View.Frame.Y + 44.0f, this.View.Frame.Width, this.View.Frame.Height - 44.0f);

			this.segmentBooking.ValueChanged += (object sender, EventArgs e) => {
				nint selectedIndex = (sender as UISegmentedControl).SelectedSegment;

				loadDataAtSegmentIndex (selectedIndex);
			};
		}

		public override Constants.LISTTYPE typeBooking ()
		{
			return Constants.LISTTYPE.PASTHISTORY;
		}

		public override void updateUI ()
		{
			this.allBookings = this.bookingInfos;
			getCompletedBooking ();

			loadDataAtSegmentIndex (this.segmentBooking.SelectedSegment);
		}

		private void getCompletedBooking ()
		{
			List<BookingInfo> bookingTemps = new List<BookingInfo> ();
			if (this.bookingInfos != null && this.bookingInfos.Count > 0) {
				bookingTemps = this.bookingInfos.Where (x => x.Status == (int)CoreSystem.Constants.STATUS.Finish).ToList ();
			} 
		
			this.completedBookings = bookingTemps;
		}

		private void loadDataAtSegmentIndex (nint index)
		{
			if (index == 0) {
				this.bookingInfos = this.allBookings;
			} else if (index == 1) {
				this.bookingInfos = this.completedBookings;
			}

			this.parentVC.setBadgeValue (this, "" + this.bookingInfos.Count);
			this.tableView.ReloadData ();
		}


		#region Notification Local

		public void updateInfoWaiveFee (object notification)
		{
			BookingInfo tBookingInfo = (BookingInfo)notification;
			if (this.bookingInfos != null && this.bookingInfos.Count > 0) {
				BookingInfo _bookingInfo = this.bookingInfos.Find (x => x.Id == tBookingInfo.Id);
				if (_bookingInfo != null && _bookingInfo.PastBooking != null) {
					_bookingInfo.PastBooking.CustomerTotalRate = tBookingInfo.PastBooking.CustomerTotalRate;
					_bookingInfo.PastBooking.SpecialistTotalRate = tBookingInfo.PastBooking.SpecialistTotalRate;
					_bookingInfo.IsWaiveFee = true;
				}
			}
		}

		public void updateBookingInfo (object notification)
		{
			MFeedbackDTO fDTO = (MFeedbackDTO)notification;
			if (this.bookingInfos != null && this.bookingInfos.Count > 0) {
				BookingInfo _bookingInfo = this.bookingInfos.Find (x => x.Id == fDTO.bookingId);
				if (_bookingInfo != null) {
					_bookingInfo.Rating = fDTO.numRate;
					_bookingInfo.Feedback = fDTO.feedback;
					_bookingInfo.IsFeedback = true;
				}
			}
		}

		public void updateDocumentInfo (object notification)
		{
			MDocumentDTO dDTO = (MDocumentDTO)notification;
			if (this.bookingInfos != null && this.bookingInfos.Count > 0) {
				BookingInfo _bookingInfo = this.bookingInfos.Find (x => x.Id == dDTO.bookingId);
				if (_bookingInfo != null) {
					_bookingInfo.BookingDocuments = dDTO.documents;
				}
			}
		}

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

