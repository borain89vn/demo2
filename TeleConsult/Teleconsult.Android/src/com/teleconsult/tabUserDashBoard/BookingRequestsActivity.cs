using System;
using System.Collections.Generic;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CoreSystem;
using Java.Interop;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "BookingRequestsActivity"), CLSCompliant(false)]			
	public class BookingRequestsActivity : Activity
	{
		static ListView userDashBoardListView;
		static List<BookingInfo> userDashBoardInfos = new List<BookingInfo> ();
		static UserDashBoardListApdater userDashboardAdapter;
		static LinearLayout llProgressBar;
		public static BookingRequestsActivity bookingActivity;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			LayoutInflater.Factory = new TextFactoryManager();
			SetContentView (Resource.Layout.user_dashboard_list_result);

			bookingActivity = this;
			userDashBoardListView = FindViewById<ListView> (Resource.Id.user_dashboard_list_result);
			userDashBoardListView.ItemClick += OnListItemClick;
			llProgressBar = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgressBar.Visibility = ViewStates.Gone;

			setDataToListView ();
		}

		void OnListItemClick (object sender, AdapterView.ItemClickEventArgs e)
		{
			constants.bookingInfo = userDashBoardInfos [e.Position];
			Intent i = new Intent (this, typeof(RequestDetail));
			StartActivity (i);
		}

		public static void setDataToListView ()
		{
			getListBookingsRequest ();
		}

		private static void getListBookingsRequest ()
		{
			llProgressBar.Visibility = ViewStates.Visible;
			Action<string> successful = (response => {
				bookingActivity.RunOnUiThread (() => {
					llProgressBar.Visibility = ViewStates.Gone;
					if(userDashBoardInfos != null)
						userDashBoardInfos.Clear ();
					userDashBoardInfos = ParseDataHelper.parseDataListBookingInfos(response);
					if(userDashBoardInfos != null) {
						((HomeDashBoard)bookingActivity.Parent).changeTabTitle (1, bookingActivity.GetString(Resource.String.booking_requests_title)+ "\n("+userDashBoardInfos.Count+")");
					} else {
						((HomeDashBoard)bookingActivity.Parent).changeTabTitle (1, bookingActivity.GetString(Resource.String.booking_requests_title)+ "\n(0)");
						((HomeDashBoard)bookingActivity.Parent).popupNoticeRequest.showNoticeDialog(bookingActivity.GetString(Resource.String.booking_requests_title_popup), bookingActivity.GetString(Resource.String.cannot_get_data));
					}
					userDashboardAdapter = new UserDashBoardListApdater (bookingActivity, userDashBoardInfos);
					userDashBoardListView.Adapter = userDashboardAdapter;
				});
			});

			Action<string> failure = (response => {
				bookingActivity.RunOnUiThread (() => {
					Toast.MakeText(bookingActivity, bookingActivity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
					llProgressBar.Visibility = ViewStates.Gone;
				});
			});

			DataHelperRequest.getInstance ().getListBookingInfos (MApplication.getInstance ().userId,
				MApplication.getInstance ().isConsultant, (int)Constants.LISTTYPE.BOOKINGREQUESTS, successful, failure);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			setDataToListView ();
		}

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

		[Export("doNothing")]
		public void doNothing(View v){
			return;
		}
	}
}

