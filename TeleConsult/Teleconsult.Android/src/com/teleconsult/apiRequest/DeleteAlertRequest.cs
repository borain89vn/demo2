using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class DeleteAlertRequest
	{
		Activity _activity;
		public OnDeleteAlertDelegate actionDeleteDelegate { set; get; }
		public DeleteAlertRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void deleteAlert(Guid bookingEvenId){
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					bool status = ParseDataHelper.parseResponseCommon(response);
					actionDeleteDelegate.onDeleteAlertSuccess(status);
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDeleteDelegate.onDeleteAlertFail();
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().deleteAlert(bookingEvenId, successful, failure);
			});
		}
	}
}

