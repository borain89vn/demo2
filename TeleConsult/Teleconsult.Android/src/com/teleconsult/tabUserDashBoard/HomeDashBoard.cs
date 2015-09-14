using System;
using Android.App;
using Android.Content;
using Android.Graphics.Drawables;
using Android.OS;
using Android.Widget;
using CoreSystem;
using Android.Views.InputMethods;
using Android.Graphics;
using Android.Views;

namespace Teleconsult.Android
{
	[Activity(Theme = "@android:style/Theme.Holo.Light", Label = "HomeDashBoard", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class HomeDashBoard : Activity, TabHost.IOnTabChangeListener, OnGetNumBookingDelegate, OnActionNoticeDelegate
	{
		public TabHost tabHost;
		GetNumberBooking getNumBooking;
		public static HomeDashBoard homeDashBoardActivity;
		public PopupNoticeInfomation popupNoticeAlert;
		public PopupNoticeInfomation popupNoticeRequest;
		public PopupNoticeInfomation popupNoticeConfirm;
		public PopupNoticeInfomation popupNoticePast;

		protected override void OnCreate(Bundle bundle)
		{
			base.OnCreate(bundle);
			SetContentView(Resource.Layout.home_dashboard);

			LocalActivityManager localActMgr = new LocalActivityManager (this, false);
			localActMgr.DispatchCreate (bundle);
			tabHost = FindViewById<TabHost> (Resource.Id.tabhost);
			tabHost.Setup (localActMgr);

			MApplication.getInstance().userDashboardType = (int)Constants.LISTTYPE.ALERTS;
			CreateTab(typeof(AlertActivity), "alerts", GetString(Resource.String.alerts_title), Resource.Drawable.ic_tab_alerts, 0);
			CreateTab(typeof(BookingRequestsActivity), "bookingrequests", GetString(Resource.String.booking_requests_title), Resource.Drawable.ic_tab_bookingrequests, 1);
			CreateTab(typeof(ConfirmedRequestsActivity), "confirmedbookings", GetString(Resource.String.confirmed_booking_title), Resource.Drawable.ic_tab_confirmedbookings, 2);
			CreateTab(typeof(PastBookingActivity), "pastbookings", GetString(Resource.String.past_booking_title), Resource.Drawable.ic_tab_pasthistory, 3);

			getNumBooking = new GetNumberBooking (this);
			getNumBooking.actionGetNumBooking = this;
			getNumBooking.getNumBookingRequest ();

			homeDashBoardActivity = this;
			popupNoticeAlert = new PopupNoticeInfomation (this);
			popupNoticeAlert.noticeDelegate = this;

			popupNoticeRequest = new PopupNoticeInfomation (this);
			popupNoticeRequest.noticeDelegate = this;

			popupNoticeConfirm = new PopupNoticeInfomation (this);
			popupNoticeConfirm.noticeDelegate = this;

			popupNoticePast = new PopupNoticeInfomation (this);
			popupNoticePast.noticeDelegate = this;

			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostNotifyAlertChange, new TCSelector (reloadDashBoard));
		}

		protected override void OnResume(){
			base.OnResume();
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if (resultCode == Result.Ok && requestCode == constants.EXIT_ACTIVITY) {
				SetResult (Result.Ok);
				Finish ();
			}
		}

		public void reloadDashBoard(object obj){
			this.RunOnUiThread (() => {
				if(AlertActivity.eventActivity == null || BookingRequestsActivity.bookingActivity == null || ConfirmedRequestsActivity.confirmedActivity == null || PastBookingActivity.pastBookingActivity == null){
					if(getNumBooking == null){
						getNumBooking = new GetNumberBooking(this);
						getNumBooking.actionGetNumBooking = this;
					}
					getNumBooking.getNumBookingRequest();

					if(AlertActivity.eventActivity != null)
						AlertActivity.setDataToListView ();
					if(BookingRequestsActivity.bookingActivity != null)
						BookingRequestsActivity.setDataToListView();
					if(ConfirmedRequestsActivity.confirmedActivity != null)
						ConfirmedRequestsActivity.setDataToListView ();
					if(PastBookingActivity.pastBookingActivity != null)
						PastBookingActivity.setDataToListView ();
				} else {
					AlertActivity.setDataToListView ();
					BookingRequestsActivity.setDataToListView();
					ConfirmedRequestsActivity.setDataToListView ();
					PastBookingActivity.setDataToListView ();
				}
			});
		}

		void TabHost.IOnTabChangeListener.OnTabChanged (string tabId)
		{
			switch (tabId) {
			case "alerts":
				MApplication.getInstance ().userDashboardType = (int)Constants.LISTTYPE.ALERTS;
				//AlertActivity.setDataToListView ();
				break;
			case "bookingrequests":
				MApplication.getInstance().userDashboardType = (int)Constants.LISTTYPE.BOOKINGREQUESTS;
				//BookingRequestsActivity.setDataToListView();
				break;
			case "confirmedbookings":
				MApplication.getInstance().userDashboardType = (int)Constants.LISTTYPE.CONFIRMEDBOOKINGS;
				//ConfirmedRequestsActivity.setDataToListView ();
				break;
			case "pastbookings":
				MApplication.getInstance ().userDashboardType = (int)Constants.LISTTYPE.PASTHISTORY;
				//PastBookingActivity.setDataToListView ();
				break;
			}
		}
			
		private void CreateTab(Type activityType, string tag, string label, int drawableId, int idTab )
		{
//			TabHost.TabSpec tabSpec = null;
//			var intent = new Intent(this, activityType);
//			intent.AddFlags(ActivityFlags.NewTask);
//			tabSpec = tabHost.NewTabSpec (tag);
//			var drawableIcon = Resources.GetDrawable(drawableId);
//
//			var view = LayoutInflater.Inflate (Resource.Layout.tab_dashboard, null, false);
//			var icon = view.FindViewById<ImageView> (Resource.Id.imgTab);
//			var tvTitle = view.FindViewById<TextView> (Resource.Id.tvTabTitle);
//			var tvNumberItems = view.FindViewById<TextView> (Resource.Id.tvNumberItemsTab);
//			tvTitle.Text = label;
//			switch (idTab) {
//			case 0:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_alerts);
//				break;
//			case 1:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_bookingrequests);
//				//icon.LayoutParameters =  (new LinearLayout.LayoutParams(75,125));
//				break;
//			case 2:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_confirmedbookings);
//				break;
//			case 3:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_pasthistory);
//				break;
//			}
//
//			tabSpec.SetIndicator (view);
//			tabSpec.SetContent (intent);
//			tabHost.AddTab (tabSpec);
//
//			tabHost.TabWidget.GetChildAt (idTab).SetBackgroundColor (Resources.GetColor (Resource.Color.green_sky_landing));
//
//			// Set event listener for TabHost
//			tabHost.SetOnTabChangedListener (this);

			TabHost.TabSpec tabSpec = null;
			var intent = new Intent(this, activityType);
			intent.AddFlags(ActivityFlags.NewTask);
			tabSpec = tabHost.NewTabSpec (tag);
				
			tabSpec.SetIndicator (label);
			tabSpec.SetContent (intent);
			tabHost.AddTab (tabSpec);
			tabHost.SetBackgroundColor (Resources.GetColor (Resource.Color.white));
			TextView tvTitle = (TextView)tabHost.TabWidget.GetChildAt (idTab).FindViewById (global::Android.Resource.Id.Title);
			tvTitle.TextSize = 9;
			tvTitle.Gravity = GravityFlags.Center;
			// Set event listener for TabHost
			tabHost.SetOnTabChangedListener (this);
		}

		public void changeTabTitle(int position, string newTitle) {
			TextView tvTitle = (TextView)tabHost.TabWidget.GetChildAt (position).FindViewById (global::Android.Resource.Id.Title);
			tvTitle.Text = newTitle;
			//RelativeLayout.LayoutParams rllp = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
			//rllp.AddRule (LayoutRules.CenterHorizontal);
			//tvTitle.LayoutParameters = rllp;

//			TextView tvNumItems = (TextView)tabHost.TabWidget.GetChildAt (position).FindViewById (Resource.Id.tvNumberItemsTab);
//			tvNumItems.Text = newTitle;
//			tvNumItems.Visibility = ViewStates.Visible;
		}

		#region OnGetNumBookingDelegate implementation

		public void onSuccessGetNumBooking (BookingNumber bookingNumber)
		{
			this.RunOnUiThread (() => {
				updateNumOfBooking(bookingNumber);
			});
		}

		#endregion

		#region OnActionNoticeDelegate implementation

		public void onOkClick ()
		{
		}
		public void onOkClickToDestroy ()
		{
		}
		#endregion

		private void updateNumOfBooking(BookingNumber bookingNumber){
			this.RunOnUiThread (() => {
				for (int i = 0; i < 4; i++) {
					switch (i) {
					case 0:
						changeTabTitle (i, GetString (Resource.String.alerts_title) + "\n(" + bookingNumber.alert + ")");
						break;
					case 1:
						changeTabTitle (i, GetString (Resource.String.booking_requests_title) + "\n(" + bookingNumber.request + ")");
						break;
					case 2:
						changeTabTitle (i, GetString (Resource.String.confirmed_booking_title) + "\n(" + bookingNumber.confirmed + ")");
						break;
					case 3:
						if(PastBookingActivity.pastBookingActivity == null) {
							changeTabTitle (i, GetString (Resource.String.past_booking_title) + "\n(" + bookingNumber.past + ")");
						}
						break;
					}
				}
			});
		}
	}
}

