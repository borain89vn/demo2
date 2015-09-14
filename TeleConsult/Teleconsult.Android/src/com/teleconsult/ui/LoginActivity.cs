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
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Android.Preferences;
using RestSharp;
using System.Runtime.Serialization.Json;
using System.IO;
using Android.Views.InputMethods;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "LogIn", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class LoginActivity : BaseActivity, OnActionSignInDelegate, OnNoticeBetaDelegate
	{
		LoginActivity loginActivity;
		TextView tvErrorLogin;
		CheckBox cbRememberPass;
		CheckBox cbShowPass;
		Button btnLogin;
		TextView tvForgotPass;
		TextView tvRegister;
		EditText edUserName;
		EditText edPass;
		InputMethodManager inputManager;
		LoginRequest loginRequest;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.sign_in_layout);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle(Resource.String.signin_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			inputManager = (InputMethodManager)this.GetSystemService (Context.InputMethodService);
			loginActivity = this;

			edUserName = FindViewById<EditText> (Resource.Id.edit_username_login);
			edPass = FindViewById<EditText> (Resource.Id.edit_pass_login);
			tvForgotPass = FindViewById<TextView> (Resource.Id.tv_forgotpass);
			tvRegister = FindViewById<TextView> (Resource.Id.tv_registry);
			cbRememberPass = FindViewById<CheckBox> (Resource.Id.checkbox_remember);
			cbShowPass =  FindViewById<CheckBox>(Resource.Id.checkbox_showpassword);
			btnLogin = FindViewById<Button> (Resource.Id.btn_sigin);
			tvErrorLogin = FindViewById<TextView> (Resource.Id.tv_error_login);
			btnLogin.Enabled = false;

			btnLogin.Click += (sender, e) => {
				inputManager.HideSoftInputFromWindow (edUserName.WindowToken, 0);
				inputManager.HideSoftInputFromWindow (edPass.WindowToken, 0);
				sendLogin();
			};
			cbShowPass.CheckedChange+=(sender, e) => {
				Boolean isch =cbShowPass.Checked;
				if(cbShowPass.Checked){
					

					edPass.TransformationMethod=global::Android.Text.Method.HideReturnsTransformationMethod.Instance;
					Utils.keepShowPassWord(true);

				}else{
					
				
					edPass.TransformationMethod=global::Android.Text.Method.PasswordTransformationMethod.Instance;
					Utils.keepShowPassWord(false);
				}


			};

			edUserName.TextChanged += (sender, e) => {
				tvErrorLogin.Visibility = ViewStates.Gone;
				if(edUserName.Text.Count() <= 0) {
					btnLogin.Enabled = false;
				} else {
					btnLogin.Enabled = true;
				}
			};

			edPass.TextChanged += (sender, e) => {
				tvErrorLogin.Visibility = ViewStates.Gone;
				if(edPass.Text.Count() <= 0) {
					btnLogin.Enabled = false;
				} else {
					btnLogin.Enabled = true;
				}
			};

			tvForgotPass.Click += (sender, e) => {
				Intent intent  = new Intent(this, typeof(ResetPassword));
				StartActivity(intent);
			};

			tvRegister.Click += (sender, e) => {
				utilsAndroid.onStartRegistry(this);
			};

			if (Utils.getRememberLogin ()) {
				if (Utils.getUserName () != null && Utils.getPassWord () != null) {
					edUserName.Text = Utils.getUserName ();
					edPass.Text = Utils.getPassWord ();
					cbRememberPass.Checked = true;
				}
			}
			if (Utils.getShowPassWord ()) {
				cbShowPass.Checked = true;

				edPass.TransformationMethod=global::Android.Text.Method.HideReturnsTransformationMethod.Instance;
			} else {
				cbShowPass.Checked = false;
				edPass.TransformationMethod=global::Android.Text.Method.PasswordTransformationMethod.Instance;
			}
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				MApplication.getInstance ().isLoginAfterSearch = false;
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		private void sendLogin(){
			if(edUserName.Text.Count() > 0 && edPass.Text.Count() > 0) {
				if (loginRequest == null) {
					loginRequest = new LoginRequest (this);
					loginRequest.signInDelegate = this;
				}
				loginRequest.sendLoginRequest (edUserName.Text.Trim (), edPass.Text.Trim (), cbRememberPass.Checked, false);
				tvErrorLogin.Visibility = ViewStates.Gone;
				//btnLogin.Enabled = false;
			} else {
				btnLogin.Enabled = false;
				if(edUserName.Text.Count() <= 0) {
					tvErrorLogin.SetText(Android.Resource.String.userNameRequired);
				} else {
					tvErrorLogin.SetText(Android.Resource.String.passRequired);
				}
				tvErrorLogin.Visibility = ViewStates.Visible;
			}
		}

		#region OnActionSignInDelegate implementation

		public void onSendingSignIn ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show();
			});
		}

		public void onSignInFail (string strNotice)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				btnLogin.Enabled = true;
				MApplication.getInstance ().isLoginAfterSearch = false;
				tvErrorLogin.Text = strNotice;
				tvErrorLogin.Visibility = ViewStates.Visible;
			});
		}			

		public void onSignInSuccess ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				btnLogin.Enabled = true;
				if(MApplication.getInstance().isBetaMode){
					PopupBetaNotice dialog = new PopupBetaNotice(this);
					dialog.noticeBeta = this;
					dialog.showNoticeDialog(Resources.GetString(Resource.String.title_notice), Resources.GetString(Resource.String.beta_notice));
				} else {
					actionOnSignInSuccess();
				}
			});
		}

		public void onSignInSplashSuccess(){}
		#endregion

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if (resultCode == Result.Ok && requestCode == constants.EXIT_ACTIVITY) {
				MApplication.getInstance ().isLogedIn = false;
				Finish ();
			}
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			//Reset value
			MApplication.getInstance ().isLogedIn = false;
			constants.currentActivityNotLogIn = this;
		}
		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Enter) {
				sendLogin ();
			}
			return base.OnKeyUp (keyCode, e);
		}

		public override void OnBackPressed ()
		{
			base.OnBackPressed ();
			MApplication.getInstance ().isLoginAfterSearch = false;
		}

		#region OnNoticeBetaDelegate implementation

		public void onOK ()
		{
			actionOnSignInSuccess ();
		}

		#endregion

		private void actionOnSignInSuccess(){
			if (MApplication.getInstance ().isLoginAfterSearch) {
				if(MApplication.getInstance().isConsultant){
					MApplication.getInstance ().isLoginAfterSearch = false;
					Intent intent = new Intent (this, typeof(UserDashBoardMain));
					StartActivityForResult (intent, constants.EXIT_ACTIVITY);
					try {
						SpecialistDetailActivity.specDetailActivity.Finish();
						SearchResultActivity.searchActivity.Finish();
					} catch(Exception e) {
						Console.Write(e.Message);
					}
				}
			} else {
				this.RunOnUiThread (() => {
					MApplication.getInstance ().isLoginAfterSearch = false;
					Intent intent = new Intent (this, typeof(UserDashBoardMain));
					this.StartActivityForResult (intent, constants.EXIT_ACTIVITY);
				});
			}
			this.Finish ();
		}
	}
}

