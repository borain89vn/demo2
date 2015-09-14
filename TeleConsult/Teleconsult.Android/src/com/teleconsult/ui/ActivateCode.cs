using System;
using Android.App;
using Android.Widget;
using Android.OS;
using Android.Views;
using System.Linq;
using CoreSystem;
using Android.Views.InputMethods;
using Android.Content;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "ActivateCode", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class ActivateCode : BaseActivity
	{
		InputMethodManager inputManager;
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			// Create your application here
			SetContentView (Resource.Layout.active_code_layout);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = GetString(Resource.String.active_account_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (GetString(Resource.String.active_account_title));

			inputManager = (InputMethodManager)this.GetSystemService (Context.InputMethodService);

			var edInputCode = FindViewById<EditText> (Resource.Id.ed_code_active);
			var btnSend = FindViewById<Button> (Resource.Id.btnSendActiveCode);
			var tvError = FindViewById<TextView> (Resource.Id.tvErrorActiveCode);

			tvError.Visibility = ViewStates.Gone;
			btnSend.Enabled = false;
			edInputCode.TextChanged += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				if(edInputCode.Text.Count() <= 0) {
					btnSend.Enabled = false;
				} else {
					btnSend.Enabled = true;
				}
			};

			btnSend.Click += (sender, e) => {
				inputManager.HideSoftInputFromWindow (edInputCode.WindowToken, 0);
				if(edInputCode.Text.Trim().Count() <= 0) {
					tvError.Visibility = ViewStates.Visible;
				} else {
					activeCodeRequest(edInputCode.Text.Trim());
				}
			};
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		private void activeCodeRequest(string sActiveCode){
			var progressDialog = ProgressDialog.Show (this, "", "", true);
			progressDialog.SetContentView(new ProgressBar(this));
			Action<string> successful = (response => {
				this.RunOnUiThread(()=>{
					progressDialog.Dismiss();
					bool isSuccess = ParseDataHelper.parseResponseActiveCode(response);
					if(isSuccess){
						showNoticeActivation(GetString(Resource.String.active_account_title), GetString(Resource.String.active_account_successful), true);
					} else {
						showNoticeActivation(GetString(Resource.String.active_account_title), GetString(Resource.String.active_account_failed), false);
					}
				});
			});

			Action<string> failure = (response => {
				this.RunOnUiThread(()=>{
					progressDialog.Dismiss();
					showNoticeActivation(GetString(Resource.String.title_notice), GetString(Resource.String.connection_fail), false);
				});
			});

			DataHelperRequest.getInstance ().sendActiveAccountRequest (MApplication.getInstance ().userId,
				sActiveCode, successful, failure);
		}

		AlertDialog.Builder builder;
		Dialog dialog;
		private void showNoticeActivation(string title, string content, bool isSuccess){
			var noticeActivationView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticeActivationView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticeActivationView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticeActivationView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			btnOk.Click += (sender, e) => {
				dialog.Dismiss ();
				if(isSuccess)
					Finish();
			};

			tvTitle.Text = title;
			tvNotice.Text = content;

			builder = new AlertDialog.Builder (this);
			builder.SetView (noticeActivationView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.SetCancelable (false);
			dialog.Show ();

		}
	}
}

