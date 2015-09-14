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
using System.Net.Http;
using System.Globalization;
using CoreSystem;
using Android.Locations;
using Android.Views.InputMethods;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "Home", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class HomeActivity : BaseActivity, OnActionNoticeDelegate
	{
		LocationManager locMgr;
		InputMethodManager inputManager;
		EditText edInputSearchName;


		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			RequestWindowFeature (WindowFeatures.NoTitle);
			SetContentView (Resource.Layout.home_layout);

			getScreenSize ();

			var btnSignIn = FindViewById<Button> (Resource.Id.btn_sigin_home);
			btnSignIn.Click += delegate {
				Intent intent = new Intent(this, typeof(LoginActivity));
				StartActivity(intent);
			};

			var btnRegister = FindViewById<Button> (Resource.Id.btn_registry_home);
			btnRegister.Click += (sender, e) => {
				utilsAndroid.onStartRegistry(this);
			};

			inputManager = (InputMethodManager)this.GetSystemService (Context.InputMethodService);

			edInputSearchName = FindViewById<EditText> (Resource.Id.edit_Search);
			var btnSearch = FindViewById<Button> (Resource.Id.btn_Search);
			btnSearch.Click += delegate{
				searchEvent();
			};	

			// Ask for use GPS
			if (!Utils.getAskedFirstTimeGPS ()) {
				InitializeLocationManager ();
			}
		}

		private void getScreenSize(){
			var metrics = Resources.DisplayMetrics;
			var widthInDp = metrics.WidthPixels;
			var heightInDp = metrics.HeightPixels;
			Utils.keepScreenSize (widthInDp, heightInDp);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			if (constants.isLoginByAnother) {
				constants.isLoginByAnother = false;
				PopupNoticeInfomation popup = new PopupNoticeInfomation (this);
				popup.noticeDelegate = this;
				popup.showNoticeDialog (GetString(Resource.String.title_notice), GetString(Resource.String.expired_session));
			}

			if (constants.network == null) {
				constants.network = new NetworkStatusMonitor ();
				constants.network.Start ();
			}

			//Reset value
			PastBookingActivity.pastBookingActivity = null;
			MApplication.getInstance ().sEmailAddress = "";
			MApplication.getInstance ().isLogedIn = false;
			MApplication.getInstance ().isLoginAfterSearch = false;
			MApplication.getInstance ().isConsultant = false;
			constants.currentActivity = null;
			constants.currentActivityNotLogIn = this;
			constants.specialistInfo = null;
			constants.bookingInfo = null;
			constants.eventInfo = null;
			constants.durationInfo = null;
			constants.deferInfo = null;
			constants.isSearchHome = false;
			Utils.keepAccessToken ("");
		}			

		protected override void OnDestroy ()
		{
			base.OnDestroy ();
			if (constants.network != null) {
				constants.network.Stop ();
				constants.network = null;
			}
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Back) {
				Intent intent = new Intent(Intent.ActionMain);
				intent.AddCategory(Intent.CategoryHome);
				intent.SetFlags(ActivityFlags.NewTask);
				StartActivity(intent);
			} else if (keyCode == Keycode.Enter) {
				searchEvent ();
			}
			return true;
		}

		void InitializeLocationManager()
		{
			locMgr = GetSystemService (Context.LocationService) as LocationManager;

			if (!(locMgr.AllProviders.Contains (LocationManager.NetworkProvider) && locMgr.IsProviderEnabled (LocationManager.NetworkProvider))) {
				ShowDialog (1);
				Utils.keepAskedFirstTimeGPS (true);
			}
		}

		private void searchEvent(){
			inputManager.HideSoftInputFromWindow (edInputSearchName.WindowToken, 0);
			constants.isSearchHome = true;
			Intent intent = new Intent(this, typeof(SearchResultActivity));
			intent.PutExtra(constants.pKeyWordSearch, edInputSearchName.Text.ToString());
			StartActivity(intent);
		}
		AlertDialog dialog;
		protected override Dialog OnCreateDialog (int id, Bundle args)
		{
			AlertDialog.Builder builder;
			builder = new AlertDialog.Builder (this);
			builder.SetInverseBackgroundForced (true);
			switch (id) {
			case 1:
				{
					builder.SetTitle (GetString(Resource.String.gps_request));
					builder.SetPositiveButton (GetString(Resource.String.gps_enable), EnableClicked);
					builder.SetNegativeButton (GetString(Resource.String.gps_cancel), CancelClicked);
					dialog = builder.Create ();
					break;
				}
			}

			if (dialog != null) {
				dialog.SetCanceledOnTouchOutside (false);
				dialog.SetCancelable (false);
			}
			return dialog;
		}

		private void EnableClicked (object sender, DialogClickEventArgs e)
		{
			Intent dialogIntent = new Intent(global::Android.Provider.Settings.ActionLocationSourceSettings);
			dialogIntent.AddFlags(Intent.Flags);
			StartActivityForResult(dialogIntent, 0);
		}

		private void CancelClicked (object sender, DialogClickEventArgs e)
		{
			RemoveDialog (1);
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

