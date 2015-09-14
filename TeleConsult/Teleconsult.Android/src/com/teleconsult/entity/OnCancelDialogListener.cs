using System;
using Android.Content;
using Android.App;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class OnCancelDialogListener : Java.Lang.Object, IDialogInterfaceOnCancelListener
	{
		Activity _activity;
		int iDialog;
		public OnCancelDialogListener(Activity _activity, int iDialog)
		{
			this._activity = _activity;
			this.iDialog = iDialog;
		}

		public OnCancelDialogListener(Activity _activity)
		{
			this._activity = _activity;
		}

		public void OnCancel(IDialogInterface dialog)
		{
			//_activity.RemoveDialog (iDialog);
			_activity.Finish ();
		}
	}
}

