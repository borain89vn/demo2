using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetNumberBooking
	{
		Activity _activity;
		public OnGetNumBookingDelegate actionGetNumBooking { set; get; }
		public GetNumberBooking (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getNumBookingRequest(){
			Action<string> successful = (response => {
				BookingNumber bookingNumber = ParseDataHelper.parseResponseBookingNumber(response);
				_activity.RunOnUiThread(() => {
					actionGetNumBooking.onSuccessGetNumBooking(bookingNumber);
				});
			});

			Action<string> failure = (response => {
			});

			DataHelperRequest.getInstance ().getBookingNumber (successful, failure);
		}
	}
}

