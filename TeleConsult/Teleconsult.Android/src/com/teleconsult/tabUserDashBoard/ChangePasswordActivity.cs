using Android.App;
using Android.OS;
using System;
using Android.Views;
using Android.Widget;
using CoreSystem;
using Newtonsoft.Json.Linq;
using Android.Content;
using System.Linq;


namespace Teleconsult.Android
{
	[Activity(Theme = "@style/ActionBarTheme", Label = "ChangePasswordActivity", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class ChangePasswordActivity : BaseActivity, OnActionNoticeDelegate
	{
		EditText edOldPass;
		EditText edNewPass;
		EditText edNewPassConfirm;
		TextView tvError;
		public static ChangePasswordActivity changePassActivity;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.change_password);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle(Resource.String.change_pass_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (Resource.String.change_pass_title);

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			changePassActivity = this;

			edOldPass = FindViewById<EditText> (Resource.Id.edit_oldpass);
			edNewPass = FindViewById<EditText> (Resource.Id.edit_newpass);
			edNewPassConfirm = FindViewById<EditText> (Resource.Id.edit_confirm_newpass);
			tvError = FindViewById<TextView> (Resource.Id.tvErrorChangePass);
			var btnSend = FindViewById<Button> (Resource.Id.btn_change_pass);
			var tvForgotPass = FindViewById<TextView> (Resource.Id.tv_forgotpass_change);

			tvError.Visibility = ViewStates.Gone;
			btnSend.Enabled = false;

			btnSend.Click += (sender, e) => {
				onSendChange();
			};

			tvForgotPass.Click += (sender, e) => {
				Intent intent  = new Intent(this, typeof(ResetPassword));
				StartActivity(intent);
			};

			edOldPass.TextChanged += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				if(edOldPass.Text.Count() <= 0) {
					btnSend.Enabled = false;
				} else {
					btnSend.Enabled = true;
				}
			};
			edNewPass.TextChanged += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				if(edNewPass.Text.Count() <= 0) {
					btnSend.Enabled = false;
				} else {
					btnSend.Enabled = true;
				}
			};
			edNewPassConfirm.TextChanged += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				if(edNewPassConfirm.Text.Count() <= 0) {
					btnSend.Enabled = false;
				} else {
					btnSend.Enabled = true;
				}
			};
		}

		private void onSendChange(){
			if (!edOldPass.Text.Trim ().Equals ("")) {
				if (!edNewPass.Text.Trim ().Equals ("")) {
					if (!edNewPassConfirm.Text.Trim ().Equals ("")) {
						if (Utils.checkValidationPass (edNewPass.Text.Trim ())) {
							if (edNewPass.Text.Trim ().Equals (edNewPassConfirm.Text.Trim ())) {
								sendChangePassRequeset ();
							} else {
								tvError.Text = GetString (Resource.String.pass_confirm_error_content);
								tvError.Visibility = ViewStates.Visible;
							}
						} else {
							tvError.Text = GetString (Resource.String.pass_required_content);
							tvError.Visibility = ViewStates.Visible;
						}
					} else {
						tvError.Text = GetString (Resource.String.confirmPassRequired);
						tvError.Visibility = ViewStates.Visible;
					}
				}else {
					tvError.Text = GetString (Resource.String.newPassRequired);
					tvError.Visibility = ViewStates.Visible;
				}
			} else {
				tvError.Text = GetString (Resource.String.oldPassRequired);
				tvError.Visibility = ViewStates.Visible;
			}
		}

		private void sendChangePassRequeset(){
			PopupNoticeInfomation popupNotice = new PopupNoticeInfomation (this);
			popupNotice.noticeDelegate = this;
			llProgress.Visibility = ViewStates.Visible;
			Action<String> successful = (response => {
				this.RunOnUiThread (() => {
					try{
						JObject json = JObject.Parse (response.ToString ());
						bool status = (bool)json ["Success"];
						llProgress.Visibility = ViewStates.Gone;
						if(status){
							popupNotice.showNoticeDialog(this.GetString(Resource.String.change_pass_title), this.GetString(Resource.String.change_pass_success_notice));
						}
						else{
							string mess = (string)json["Error"];
							if(mess != null && !mess.Equals(""))
								popupNotice.showNoticeDialog(this.GetString(Resource.String.change_pass_title), mess);
							else
								popupNotice.showNoticeDialog(this.GetString(Resource.String.change_pass_title), this.GetString(Resource.String.connection_fail));
						}
					}catch(Exception e){
						popupNotice.showNoticeDialog(this.GetString(Resource.String.change_pass_title), this.GetString(Resource.String.connection_fail));
					}
				});
			});

			Action<String> failure = (response => {
				this.RunOnUiThread (() => {
					llProgress.Visibility = ViewStates.Gone;
					popupNotice.showNoticeDialog(this.GetString(Resource.String.change_pass_title), this.GetString(Resource.String.connection_fail));
				});
			});				
			DataHelperRequest.getInstance ().sendChangePassword(edOldPass.Text.Trim(), edNewPass.Text.Trim(), edNewPassConfirm.Text.Trim(), successful, failure);
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case Resource.Id.sort:
				ShowDialog (1);
				break;
			case global::Android.Resource.Id.Home:
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Enter) {
				onSendChange ();
			}
			return base.OnKeyUp (keyCode, e);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
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

