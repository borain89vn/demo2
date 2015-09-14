using Android.App;
using Android.OS;
using System.Threading;
using Android.Widget;
using CoreSystem;
using System;
using Android.Content;

namespace Teleconsult.Android
{
	[Activity(Label = "TeleConsult", Theme = "@style/Theme.Splash", MainLauncher = true, ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class SplashScreen : MyLocationManager, OnActionSignInDelegate, OnActionGetBookingInfo, OnActionDeferDelegate, OnActionNoticeDelegate
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			if (!IsTaskRoot)
			{
				Intent intent = Intent;
				String intentAction = intent.Action; 
				if (intent.HasCategory(Intent.CategoryLauncher) && intentAction != null && intentAction.Equals(Intent.ActionMain)) {
					Finish ();
					return;       
				}
			}

			constants.isSignInFromSplashScreen = false;
			constants.currentActivity = null;

			if (constants.network == null) {
				constants.network = new NetworkStatusMonitor ();
				constants.network.Start ();
			}

			// Check to auto login
			if (Utils.getRememberLogin ()) {
				if (Utils.getUserName () != null && Utils.getPassWord () != null) {
					LoginRequest loginRequest = new LoginRequest (this);
					loginRequest.signInDelegate = this;
					loginRequest.sendLoginRequest (Utils.getUserName (), Utils.getPassWord (), true, true);
				} else {
					startHomeActivity();
				}
			} else {
				startHomeActivity();
			}

			TCNotificationCenter.defaultCenter.observers.Clear ();
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeferOrRescheduleTalkNow, new TCSelector (onDefefTalkNow));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostCallDuration, new TCSelector (updateCallStart));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostNotifyDeclineConferrence, new TCSelector (onDeclineConferrence));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostNotifySignOut, new TCSelector (onNotifyLogout));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostNotifyCloseBalance, new TCSelector (onNotifyExpired));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostNotifyCloseBalanceCalling, new TCSelector (onNotifyInConference));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kNetworkNotAvailable, new TCSelector (onNetworkDisConnect));
		}
			
		public override void OnBackPressed ()
		{
			return;
		}

		public void onNetworkDisConnect(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					onShowPopUpNotice (GetString(Resource.String.network_title), GetString(Resource.String.network_disconnect));
				});
			} else {
				if (constants.currentActivityNotLogIn != null) {
					constants.currentActivityNotLogIn.RunOnUiThread (() => {
						PopupNoticeInfomation popup = new PopupNoticeInfomation (constants.currentActivityNotLogIn);
						popup.noticeDelegate = this;
						popup.showNoticeDialog (GetString (Resource.String.network_title), GetString (Resource.String.network_disconnect));
					});
				} else {
					Toast.MakeText (Application.Context, GetString (Resource.String.network_disconnect), ToastLength.Long).Show ();
				}
			}
		}

		public void onNotifyExpired(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					onShowPopUpNotice (GetString(Resource.String.expired_title), GetString(Resource.String.expired_content));
				});
			}
		}

		public void onNotifyInConference(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					onShowPopUpNotice (GetString(Resource.String.time_up_title), GetString(Resource.String.time_up_content));
				});
			}
		}

		public void onDeclineConferrence(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					MessageDTO messDecline = (MessageDTO)obj;
					onShowPopUpNotice(messDecline.title, messDecline.message);
				});
			}
		}

		public void updateCallStart(object callInfo){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					constants.durationInfo = (DurationInfo)callInfo;
					if(constants.durationInfo == null){
						return;
					}
					Intent intent = new Intent (this, typeof(CallingDurationActivity));
					StartActivity (intent);
				});
			}
		}


		public void onDefefTalkNow(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					constants.deferInfo = (DeferInfo)obj;
					if(constants.deferInfo == null) {
						return;
					}
					GetBookingInfo getBookingInfo = new GetBookingInfo (this);
					getBookingInfo.actionDelegate = this;
					getBookingInfo.getBookingInfo (constants.deferInfo.BookingId);
				});
			}
		}

		public void onNotifyLogout(object obj){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					constants.isLoginByAnother = true;
					utilsAndroid.onSignOutRequest(constants.currentActivity);
				});
			}
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			Finish ();
		}

		#region OnActionGetBookingInfo implementation

		public void onSendingGetBookingInfo ()
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					showProgressRootView (constants.currentActivity);
				});
			}
		}

		public void onSuccessGetBookingInfo (BookingInfo bookingInfo)
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					if (progressDialogParentRootView != null)
						progressDialogParentRootView.Hide ();
					if (bookingInfo != null) {
						if (bookingInfo.PastBooking != null) {
							DeferTalkNowUI deferDialog = new DeferTalkNowUI (constants.currentActivity);
							deferDialog.actionDeferDelegate = this;
							deferDialog.showPopupDefer (bookingInfo, constants.deferInfo);
						} else {
							onTimerSendCacelDeferTalkNow ();
						}
					} else {
						onTimerSendCacelDeferTalkNow ();
					}
				});
			}
		}

		public void onFailedGetBookingInfo()
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					if (progressDialogParentRootView != null)
						progressDialogParentRootView.Hide ();
					onTimerSendCacelDeferTalkNow ();
				});
			}
		}

		#endregion

		private void onTimerSendCacelDeferTalkNow(){
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					DeferTalkNowUI deferDialog = new DeferTalkNowUI (constants.currentActivity);
					deferDialog.actionDeferDelegate = this;
					deferDialog.OnTimerSendCancelDefer (constants.deferInfo.BookingId, constants.deferInfo, 60);
				});
			}
		}
		#region OnActionSignInDelegate implementation

		public void onSendingSignIn ()
		{
		}

		public void onSignInFail (string strNotice)
		{
			this.RunOnUiThread (() => {
				startHomeActivity();
			});
		}			

		public void onSignInSuccess ()
		{

		}
		public void onSignInSplashSuccess(){
			this.RunOnUiThread (() => {
				constants.isSignInFromSplashScreen = true;
				MApplication.getInstance ().isLoginAfterSearch = false;
				Intent intent = new Intent (this, typeof(UserDashBoardMain));
				this.StartActivityForResult (intent, constants.EXIT_ACTIVITY);
			});
		}

		#endregion

		#region OnActionDeferDelegate implementation

		public void onDeferSending ()
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					showProgressRootView (constants.currentActivity);
				});
			}
		}

		public void onDeferSuccess (DeferTalkNow deferTalkNowInfo, bool isCancelDefer)
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					if (progressDialogParentRootView != null)
						progressDialogParentRootView.Hide ();
					if (isCancelDefer == false) {
						TCNotificationCenter.defaultCenter.postNotification (constants.kDeferSuccess, deferTalkNowInfo);
						onShowPopUpNotice(GetString(Resource.String.accept_defer_title), GetString(Resource.String.request_success));
					} else {
						onShowPopUpNotice(GetString(Resource.String.cancel_defer_title), GetString(Resource.String.request_success));
					}
				});
			}
		}

		public void onDeferFail (string title, string mess)
		{
			if (constants.currentActivity != null) {
				constants.currentActivity.RunOnUiThread (() => {
					if (progressDialogParentRootView != null)
						progressDialogParentRootView.Hide ();
					onShowPopUpNotice(title, mess);
				});
			}
		}

		#endregion

		private void onShowPopUpNotice(string title, string mess){
			PopupNoticeInfomation popup = new PopupNoticeInfomation (constants.currentActivity);
			popup.noticeDelegate = this;
			popup.showNoticeDialog (title, mess);
		}

		private void startHomeActivity(){
			Intent intent = new Intent (this, typeof(HomeActivity));
			this.StartActivityForResult (intent, constants.EXIT_ACTIVITY);
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

