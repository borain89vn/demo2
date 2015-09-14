using System;
using Android.App;
using CoreSystem;
namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class WaiveFeeRequest
	{
		Activity _activity;
		public OnWaiveFeeDelegate waiveFeeDelegate {get; set;}
		public WaiveFeeRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void sendWaiveFeeRequest(Guid bookingID)
		{
			waiveFeeDelegate.onSendingWaiveFee ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread(() => {
					bool status = ParseDataHelper.parseResponseWaiveFee(response);
					waiveFeeDelegate.onSuccessWaiveFee(status);
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					waiveFeeDelegate.ondFailWaiveFee();
				});
			});

			DataHelperRequest.getInstance ().updateWaiveFee (bookingID, successful, failure);
		}
	}
}

