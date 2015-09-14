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
	[Activity (Label = "ConfirmedRequestsActivity"), CLSCompliant(false)]			
	public class ConfirmedRequestsActivity : Activity
	{
		static ListView userDashBoardListView;
		static List<BookingInfo> userDashboardInfos = new List<BookingInfo> ();
		static UserDashBoardListApdater userDashboardAdapter;
		static LinearLayout llProgressBar;
		public static ConfirmedRequestsActivity confirmedActivity;
		int posSelected = 0;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			LayoutInflater.Factory = new TextFactoryManager();
			SetContentView (Resource.Layout.user_dashboard_list_result);

			confirmedActivity = this;
			userDashBoardListView = FindViewById<ListView> (Resource.Id.user_dashboard_list_result);
			userDashBoardListView.ItemClick += OnListItemClick;

			llProgressBar = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgressBar.Visibility = ViewStates.Gone;

			setDataToListView ();

			TCNotificationCenter.defaultCenter.addObserver (this, constants.kDeleteFileConfirmed, new TCSelector(onDeleteImageConfirmed));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteImageConfirmed));
		}

		public void onDeleteImageConfirmed(object document){
			this.RunOnUiThread (() => {
				var doc = (BookingDocumentDto)document;
				var bookingInfo = userDashboardInfos.Find(x => x.Id == doc.BookingId) as BookingInfo;
				if(bookingInfo != null){
					var documentDto = bookingInfo.BookingDocuments.Find (x => x.Id == doc.Id) as BookingDocumentDto;
					if(documentDto != null) {
						bookingInfo.BookingDocuments.Remove((BookingDocumentDto)documentDto);
					}
				}
			});
		}

		void OnListItemClick(object sender, AdapterView.ItemClickEventArgs e)
		{
			posSelected = e.Position;
			constants.bookingInfo = userDashboardInfos[e.Position];
			Intent intent = new Intent (this, typeof(ConfirmDetail));
			StartActivity (intent);
		}

		public static void setDataToListView(){
			getListConfirmedBookingsRequest ();
		}

		private static void getListConfirmedBookingsRequest(){
			llProgressBar.Visibility = ViewStates.Visible;
			Action<string> successful = (response => {
				confirmedActivity.RunOnUiThread(() => {
					llProgressBar.Visibility = ViewStates.Gone;
					if(userDashboardInfos != null)
						userDashboardInfos.Clear ();
					userDashboardInfos = ParseDataHelper.parseDataListBookingInfos(response);
					if(userDashboardInfos != null){
						((HomeDashBoard)confirmedActivity.Parent).changeTabTitle(2, confirmedActivity.GetString(Resource.String.confirmed_booking_title) +"\n("+userDashboardInfos.Count+")");
					} else {
						((HomeDashBoard)confirmedActivity.Parent).changeTabTitle(2, confirmedActivity.GetString(Resource.String.confirmed_booking_title) +"\n(0)");
						((HomeDashBoard)confirmedActivity.Parent).popupNoticeConfirm.showNoticeDialog(confirmedActivity.GetString(Resource.String.confirmed_booking_title_popup), confirmedActivity.GetString(Resource.String.cannot_get_data));
					}
					userDashboardAdapter = new UserDashBoardListApdater (confirmedActivity, userDashboardInfos);
					userDashBoardListView.Adapter = userDashboardAdapter;
				});
			});

			Action<string> failure = (response => {
				confirmedActivity.RunOnUiThread(()=>{
					Toast.MakeText(confirmedActivity, confirmedActivity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
					llProgressBar.Visibility = ViewStates.Gone;
				});
			});

			DataHelperRequest.getInstance ().getListBookingInfos (MApplication.getInstance ().userId,
				MApplication.getInstance ().isConsultant, (int)Constants.LISTTYPE.CONFIRMEDBOOKINGS, successful, failure);
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

