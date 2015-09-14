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
using System.Linq;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "PastBookingActivity"), CLSCompliant(false)]			
	public class PastBookingActivity : Activity, AbsListView.IOnScrollListener
	{
		public static PastBookingActivity pastBookingActivity;
		static ListView userDashBoardListView;
		static List<BookingInfo> userDashBoardInfos = new List<BookingInfo> ();
		static List<BookingInfo> userDashBoardInfosComplete = new List<BookingInfo> ();
		static UserDashBoardListApdater userDashboardAdapter;
		static UserDashBoardListApdater userDashboardAdapterCompleted;
		static LinearLayout llProgressBar;
		int iPosSelected = 0;
		static bool isBtnAllSelected;
		static int iCurrentPosAll = 0;
		static int iCurrentPosCompleted = 0;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			LayoutInflater.Factory = new TextFactoryManager();
			SetContentView (Resource.Layout.user_dashboard_list_result);

			pastBookingActivity = this;
			userDashBoardListView = FindViewById<ListView> (Resource.Id.user_dashboard_list_result);
			userDashBoardListView.ItemClick += OnListItemClick;
			userDashBoardListView.SetOnScrollListener (this);

			llProgressBar = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgressBar.Visibility = ViewStates.Gone;

			var llButtonSegmented = FindViewById<LinearLayout> (Resource.Id.llButtonSegmented);
			var vLine = FindViewById<View> (Resource.Id.viewSegmented);
			var btnAll = FindViewById<Button> (Resource.Id.btnAll);
			var btnCompleted = FindViewById<Button> (Resource.Id.btnComplete);

			llButtonSegmented.Visibility = ViewStates.Visible;
			vLine.Visibility = ViewStates.Visible;
			btnAll.FocusableInTouchMode = true;
			isBtnAllSelected = true;

			btnAll.Click += (sender, e) => {
				if(btnAll.FocusableInTouchMode)
					return;
				isBtnAllSelected = true;
				btnAll.FocusableInTouchMode = true;
				btnAll.RequestFocus();
				btnAll.RequestFocusFromTouch();
				btnAll.SetTextColor(Resources.GetColor(Resource.Color.white));

				btnCompleted.FocusableInTouchMode = false;
				btnCompleted.SetTextColor(Resources.GetColor(Resource.Color.green_sky_landing));

				setDataOnSegmentButton();
				userDashBoardListView.SetSelection(iCurrentPosAll);
			};

			btnCompleted.Click += (sender, e) => {
				if(btnCompleted.FocusableInTouchMode)
					return;
				isBtnAllSelected = false;
				btnAll.FocusableInTouchMode = false;
				btnAll.SetTextColor(Resources.GetColor(Resource.Color.green_sky_landing));

				btnCompleted.RequestFocus();
				btnCompleted.RequestFocusFromTouch();
				btnCompleted.FocusableInTouchMode = true;
				btnCompleted.SetTextColor(Resources.GetColor(Resource.Color.white));

				setDataOnSegmentButton();
				userDashBoardListView.SetSelection(iCurrentPosCompleted);
			};

			setDataToListView ();
			TCNotificationCenter.defaultCenter.addObserver (this, constants.kDeleteFilePast, new TCSelector(onDeleteImagePast));
			TCNotificationCenter.defaultCenter.addObserver (this, constants.kNotifyUpdateBookingInfo, new TCSelector(onNotifyUpdateBookingInfo));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteImagePast));
		}	

		public void onDeleteImagePast(object document){
			this.RunOnUiThread (() => {
				var doc = (BookingDocumentDto)document;
				var bookingInfo = userDashBoardInfos.Find(x => x.Id == doc.BookingId) as BookingInfo;
				if(bookingInfo != null){
					var documentDto = bookingInfo.BookingDocuments.Find (x => x.Id == doc.Id) as BookingDocumentDto;
					if(documentDto != null) {
						bookingInfo.BookingDocuments.Remove((BookingDocumentDto)documentDto);
					}
				}
			});
		}

		public void onNotifyUpdateBookingInfo(object bookingInfo){
			userDashBoardInfos [iPosSelected] = constants.bookingInfo;
		}

		void OnListItemClick (object sender, AdapterView.ItemClickEventArgs e)
		{
			iPosSelected = e.Position;
			if (isBtnAllSelected) {
				constants.bookingInfo = userDashBoardInfos [e.Position];
			} else {
				constants.bookingInfo = userDashBoardInfosComplete [e.Position];
			}
			MApplication.getInstance().specialistID = constants.bookingInfo.SpecialistId;
			Intent intent = new Intent (this, typeof(PastHistoryDetail));
			StartActivity (intent);
		}

		public static void setDataToListView ()
		{
			getListPastHistory ();
		}

		private static void getListPastHistory ()
		{
			llProgressBar.Visibility = ViewStates.Visible;
			iCurrentPosAll = 0;
			iCurrentPosCompleted = 0;
			Action<string> successful = (response => {
				if(pastBookingActivity == null)
					return;
				pastBookingActivity.RunOnUiThread (() => {
					llProgressBar.Visibility = ViewStates.Gone;
					if(userDashBoardInfos != null)
						userDashBoardInfos.Clear ();
					userDashBoardInfos = ParseDataHelper.parseDataListBookingInfos(response);
					userDashBoardInfosComplete = getCompletedBooking();
					setDataOnSegmentButton();
				});
			});

			Action<string> failure = (response => {
				if(pastBookingActivity == null)
					return;
				pastBookingActivity.RunOnUiThread (() => {
					Toast.MakeText(pastBookingActivity, pastBookingActivity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
					llProgressBar.Visibility = ViewStates.Gone;
				});
			});

			DataHelperRequest.getInstance ().getListBookingInfos (MApplication.getInstance ().userId,
				MApplication.getInstance ().isConsultant, (int)Constants.LISTTYPE.PASTHISTORY, successful, failure);
		}

		private static List<BookingInfo> getCompletedBooking()
		{
			List<BookingInfo> bookingTemps = new List<BookingInfo> ();
			if (userDashBoardInfos != null && userDashBoardInfos.Count > 0) {
				bookingTemps = userDashBoardInfos.Where (x => x.Status == (int)CoreSystem.Constants.STATUS.Finish).ToList();
			} 

			return bookingTemps;
		}

		private static void setDataOnSegmentButton(){
			userDashboardAdapter = new UserDashBoardListApdater (pastBookingActivity, userDashBoardInfos);
			userDashboardAdapterCompleted = new UserDashBoardListApdater (pastBookingActivity, userDashBoardInfosComplete);

			if(isBtnAllSelected){
				if(userDashBoardInfos != null){
					((HomeDashBoard)pastBookingActivity.Parent).changeTabTitle (3, pastBookingActivity.GetString(Resource.String.past_booking_title)+ "\n("+userDashBoardInfos.Count +")");
				} else {
					((HomeDashBoard)pastBookingActivity.Parent).changeTabTitle (3, pastBookingActivity.GetString(Resource.String.past_booking_title)+ "\n(0)");
					((HomeDashBoard)pastBookingActivity.Parent).popupNoticePast.showNoticeDialog(pastBookingActivity.GetString(Resource.String.past_booking_title_popup), pastBookingActivity.GetString(Resource.String.cannot_get_data));
				}
				userDashBoardListView.Adapter = userDashboardAdapter;
			} else {
				if(userDashBoardInfosComplete != null){
					((HomeDashBoard)pastBookingActivity.Parent).changeTabTitle (3, pastBookingActivity.GetString(Resource.String.past_booking_title)+ "\n("+userDashBoardInfosComplete.Count +")");
				} else {
					((HomeDashBoard)pastBookingActivity.Parent).changeTabTitle (3, pastBookingActivity.GetString(Resource.String.past_booking_title)+ "\n(0)");
					((HomeDashBoard)pastBookingActivity.Parent).popupNoticePast.showNoticeDialog(pastBookingActivity.GetString(Resource.String.past_booking_title_popup), pastBookingActivity.GetString(Resource.String.cannot_get_data));
				}
				userDashBoardListView.Adapter = userDashboardAdapterCompleted;
			}

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

		public void OnScroll (AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount)
		{
			if (isBtnAllSelected) {
				iCurrentPosAll = firstVisibleItem;
			} else {
				iCurrentPosCompleted = firstVisibleItem;
			}
		}

		public void OnScrollStateChanged (AbsListView view, ScrollState scrollState)
		{

		}
	}
}

