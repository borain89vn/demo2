using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetStatusCurrentUser
	{
		Activity _activity;
		public GetStatusCurrentUser (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getStatus()
		{
			Action<string> successful = (response => {
				_activity.RunOnUiThread (()=>{					
					bool status = ParseDataHelper.parseResponseCommon(response);
					MApplication.getInstance().isCompleteProfile = status;
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().getStatusCurrentUser (successful, failure);
			});

		}
	}
}

