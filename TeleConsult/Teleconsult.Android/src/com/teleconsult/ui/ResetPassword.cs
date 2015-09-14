
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CoreSystem;
using Java.Util;
using Android.Views.InputMethods;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "ResetPass", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]					
	public class ResetPassword : BaseActivity, OnActionNoticeDelegate
	{
		EditText edEmail;
		TextView tvError;
		InputMethodManager inputManager;
		LinearLayout llProgress;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.reset_password_layout);
			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle(Resource.String.reset_pass_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (Resource.String.reset_pass_title);

			inputManager = (InputMethodManager)this.GetSystemService (Context.InputMethodService);

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			edEmail = FindViewById<EditText> (Resource.Id.edit_username_login);
			var btnSend = FindViewById<Button> (Resource.Id.btnSendForgotPass);
			tvError = FindViewById<TextView> (Resource.Id.tvErrorEmailResetPass);
			tvError.Visibility = ViewStates.Gone;

			btnSend.Enabled = false;

			edEmail.TextChanged += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				if(edEmail.Text.Count() <= 0) {
					btnSend.Enabled = false;
				} else {
					btnSend.Enabled = true;
				}
			};

			btnSend.Click += (sender, e) => {
				onSendForgotPass();
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

		private void onSendForgotPass (){
			inputManager.HideSoftInputFromWindow (edEmail.WindowToken, 0);
			if(Utils.checkValidateEmail(edEmail.Text.Trim())){
				sendForgotPass(edEmail.Text.Trim());
			} else{
				tvError.Visibility = ViewStates.Visible;
			}
		}

		private void sendForgotPass (string email)
		{
			llProgress.Visibility = ViewStates.Visible;
			PopupNoticeInfomation popupNotice = new PopupNoticeInfomation (this);
			popupNotice.noticeDelegate = this;
			Action<String> successful = (response => {
				this.RunOnUiThread (() => {
					Dictionary<string, object> dictionResult = ParseDataHelper.parseDataForgotPass(response);
					llProgress.Visibility = ViewStates.Gone;
					if(dictionResult.ContainsKey(Constants.kStatus)){
						bool b = (bool)dictionResult[Constants.kStatus];
						if(b){
							popupNotice.showNoticeDialog(this.GetString(Resource.String.reset_pass_title), string.Format(this.GetString(Resource.String.reset_pass_success), email.Trim()));
						} else{
							popupNotice.showNoticeDialog(this.GetString(Resource.String.reset_pass_title), (string)dictionResult[Constants.kMessage]);
						}
					} else{
						popupNotice.showNoticeDialog(this.GetString(Resource.String.reset_pass_title), this.GetString(Resource.String.request_fail));
					}
				});
			});

			Action<String> failure = (response => {
				this.RunOnUiThread (() => {
					llProgress.Visibility = ViewStates.Gone;
					popupNotice.showNoticeDialog(this.GetString(Resource.String.reset_pass_title), this.GetString(Resource.String.connection_fail));
				});
			});				
			DataHelperRequest.getInstance ().sendForgetPassword (email, successful, failure);
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Enter) {
				onSendForgotPass ();
			}
			return base.OnKeyUp (keyCode, e);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			if (MApplication.getInstance ().isLogedIn) {
				constants.currentActivity = this;
			} else {
				constants.currentActivity = null;
				constants.currentActivityNotLogIn = this;
			}
		}

		#region OnActionNoticeDelegate implementation

		public void onOkClick ()
		{
		}
		public void onOkClickToDestroy ()
		{
		}
		#endregion
	}
}

