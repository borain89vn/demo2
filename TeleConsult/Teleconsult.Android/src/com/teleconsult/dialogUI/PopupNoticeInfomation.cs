using System;
using Android.App;
using Android.Widget;
using Android.Views;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class PopupNoticeInfomation : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnActionNoticeDelegate noticeDelegate{ get; set; }

		public PopupNoticeInfomation (Activity _activity)  : base(_activity)
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
				if(noticeDelegate != null){
					noticeDelegate.onOkClick();
				}
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticeASAPTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			try {
				dialog.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}

		public void showNoticeDialogToDestroy(string title, string content){
			var noticeASAPTimeView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticeASAPTimeView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvTitle.Text = title;
			tvNotice.Text = content;
			btnOk.Click += (sender, e) => {
				dialog.Dismiss ();
				if(noticeDelegate != null){
					noticeDelegate.onOkClickToDestroy();
				}
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticeASAPTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.SetOnCancelListener (new OnCancelDialogListener (_activity));
			try {
				dialog.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}
	}
}

