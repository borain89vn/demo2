using System;
using Android.App;
using CoreSystem;
using System.Collections.Generic;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetSystemConfig : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnGetSystemConfigDelegate actionGetConfigDelegate { set; get; }

		public GetSystemConfig (Activity _activity) : base(_activity)
		{
			this._activity = _activity;
		}

		public void getSysConfig()
		{
			actionGetConfigDelegate.onSendingGetConfig ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread(() => {
					MApplication.getInstance().systemConfig = ParseDataHelper.parseResponseSystemConfig(response);
					if(MApplication.getInstance().systemConfig == null) {
						showNotice(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.cannot_get_data));
						actionGetConfigDelegate.ondFailGetConfig();
					} else {
						actionGetConfigDelegate.onSuccessGetConfig();
					}
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					showNotice(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.cannot_get_data));
					actionGetConfigDelegate.ondFailGetConfig();
				});
			});

			DataHelperRequest.getInstance ().getSystemConfig (successful, failure);
		}

		private void showNotice(string title, string mess){
			var noticeView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticeView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticeView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticeView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvTitle.Text = title;
			tvNotice.Text = mess;
			btnOk.Click += (sender, e) => {
				dialog.Dismiss();
				_activity.Finish();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.SetOnCancelListener (new OnCancelDialogListener (_activity));
			dialog.Show ();
		}
	}
}

