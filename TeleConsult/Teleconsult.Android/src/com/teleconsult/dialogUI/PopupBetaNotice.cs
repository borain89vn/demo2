using System;
using Android.App;
using Android.Widget;

namespace Teleconsult.Android
{
	public class PopupBetaNotice : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;

		public OnNoticeBetaDelegate noticeBeta{ get; set; }

		public PopupBetaNotice (Activity _activity)  : base(_activity)
		{
			this._activity = _activity;
		}

		public void showNoticeDialog(string title, string content){
			var noticeASAPTimeView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticeASAPTimeView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvTitle.Text = title;
			tvNotice.Text = content;
			btnOk.Click += (sender, e) => {
				dialog.Dismiss ();
				if(noticeBeta != null){
					noticeBeta.onOK();
				}
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticeASAPTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.SetCancelable (false);
			try {
				dialog.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}
	}
}

