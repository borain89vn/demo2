using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetSpecialistProfile
	{
		Activity _activity;
		public OnActionGetSpecInfo actionDelegate { set; get; }

		public GetSpecialistProfile (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getSpecProfile(Guid specId)
		{
			_activity.RunOnUiThread (()=>{
				actionDelegate.onSendingGetSpecInfo ();
			});

			Action<string> successful = (response => {
				_activity.RunOnUiThread (()=>{
					SpecialistProfileInfos specInfo = ParseDataHelper.parseDataSpecialistInfo(response);
					actionDelegate.onSuccessGetSpecInfo(specInfo);
				});
			});
			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					actionDelegate.onFailGetSpecInfo();
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().getSpecialistProfile (specId, successful, failure);
			});

		}
	}
}

