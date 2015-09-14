using System;
using Android.App;
using CoreSystem;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetBookingInfo
	{
		Activity _activity;
		public OnActionGetBookingInfo actionDelegate { set; get; }
		public GetBookingInfo (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getBookingInfo(Guid bookingId){
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					BookingInfo bookingInfo = ParseDataHelper.parseDataBookingInfo(response);
					actionDelegate.onSuccessGetBookingInfo(bookingInfo);
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDelegate.onFailedGetBookingInfo();
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().getBookingInfo(bookingId, successful, failure);
			});
		}
	}
}

