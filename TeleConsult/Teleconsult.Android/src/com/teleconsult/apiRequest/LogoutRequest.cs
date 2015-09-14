using System;
using Android.App;
using CoreSystem;
namespace Teleconsult.Android
{
	[CLSCompliant (false)]
	public class LogoutRequest
	{
		Activity _activity;
		public LogoutRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void sendLogOut()
		{
			Action<string> successful = (response => {
				_activity.RunOnUiThread(() => {

				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{

				});
			});

			DataHelperRequest.getInstance ().sendLogOutRequest ( successful, failure);
		}
	}
}

