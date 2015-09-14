using System;
using Android.App;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class PopUpConfirm : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnActionConfirmDelegate actionConfirmDelegate { get; set; }

		public PopUpConfirm (Activity _activity):base(_activity)
		{
			this._activity = _activity;
		}

		public void showConfirmDialog(string title, string content, string possitiveTitle, string negativeTitle){
			var confirmDeferView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);
			var tvTitle = confirmDeferView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvConfirm = confirmDeferView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirmTalknow = confirmDeferView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnDecline = confirmDeferView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvTitle.Text = title;
			tvConfirm.Text = content;
			btnDecline.Text = negativeTitle;
			btnConfirmTalknow.Text = possitiveTitle;
			btnConfirmTalknow.Click += (sender, e) => {
				dialog.Dismiss ();
				actionConfirmDelegate.onOkConfirmClick ();
			};

			btnDecline.Click += (sender, e) => {
				dialog.Dismiss ();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetInverseBackgroundForced (true);
			builder.SetView (confirmDeferView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			try {
				dialog.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}
	}
}

