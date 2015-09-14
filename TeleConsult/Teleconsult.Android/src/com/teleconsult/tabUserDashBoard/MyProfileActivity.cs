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

namespace Teleconsult.Android
{
	[Activity(Theme = "@style/ActionBarTheme", Label = "MyProfile", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class MyProfileActivity : BaseActivity, OnActionConfirmDelegate
	{
		PopUpConfirm popupConfirm;
		Button btnUpdateProfile;
		public static MyProfileActivity myProfileActivity;
		bool isLoadStatusCurrentUser = false;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.my_profile);
			var btnChangePass = FindViewById<Button> (Resource.Id.btnChangePass);
			var btnSignOut = FindViewById<Button> (Resource.Id.btnSignOut);
			btnUpdateProfile = FindViewById<Button> (Resource.Id.btnUpdateProfile);

			myProfileActivity = this;

			btnUpdateProfile.Click += (sender, e) => {
				utilsAndroid.onStartUserProfile(this);
				isLoadStatusCurrentUser = true;
			};

			btnChangePass.Click += (sender, e) => {
				Intent intent = new Intent(this, typeof(ChangePasswordActivity));
				StartActivity(intent);
			};

			btnSignOut.Click += (sender, e) => {
				if(popupConfirm == null){
					popupConfirm = new PopUpConfirm(this);
					popupConfirm.actionConfirmDelegate = this;
				}
				popupConfirm.showConfirmDialog(GetString(Resource.String.sign_out_title), GetString(Resource.String.signout_confirm), "Yes", "No");
			};

			TCNotificationCenter.defaultCenter.addObserver (this, constants.kGetStatusCurrentUser, new TCSelector(onGetStatusCurrentUser));
		}

		public void onGetStatusCurrentUser(object obj){
			if(!MApplication.getInstance().isConsultant){
				if (isLoadStatusCurrentUser && !MApplication.getInstance ().isCompleteProfile) {
					isLoadStatusCurrentUser = false;
					GetStatusCurrentUser getStatus = new GetStatusCurrentUser (this);
					getStatus.getStatus ();
				}
			}
		}
			
		#region OnActionConfirmedDelegate implementation

		public void onOkConfirmClick ()
		{
			MApplication.getInstance ().isConnectedSignalR = false;
			utilsAndroid.onSignOutRequest (this);
			LogoutRequest logout = new LogoutRequest (this);
			TCNotificationCenter.defaultCenter.removeObserver ((UserDashBoardMain)myProfileActivity.Parent, Constants.kPushAvailabilityStatus);

			logout.sendLogOut ();
		}

		#endregion

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Back) {
				Intent intent = new Intent(Intent.ActionMain);
				intent.AddCategory(Intent.CategoryHome);
				intent.SetFlags(ActivityFlags.NewTask);
				StartActivity(intent);
			}
			return true;
		}
	}
}

