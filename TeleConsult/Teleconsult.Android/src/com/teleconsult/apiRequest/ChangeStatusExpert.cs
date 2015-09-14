using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class ChangeStatusExpert
	{
		Activity _activity;
		public OnUpdateStatusDelegate actionUpdateStatusDelegate { set; get; }

		public ChangeStatusExpert (Activity _activity)
		{
			this._activity = _activity;
		}

		public void changeStatus(Guid userId, int istatus){
			actionUpdateStatusDelegate.onSendingUpdateStatus ();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					ResultDTO result = ParseDataHelper.parseDataChangeStatus (response);
					actionUpdateStatusDelegate.onSuccessUpdateStatus (result, istatus);
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionUpdateStatusDelegate.onFailUpdateStatus ();
				});
			});

			_activity.RunOnUiThread (() => {
				DataHelperRequest.getInstance ().changeStatusExpert (userId, istatus, successful, failure);
			});
		}
	}
}

