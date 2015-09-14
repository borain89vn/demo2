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
using Java.Interop;

namespace Teleconsult.Android
{
	[Activity (Label = "AlertActivity"), CLSCompliant(false)]			
	public class AlertActivity : Activity, OnDeleteAlertDelegate
	{
		static ListView eventListView;
		static List<BookingEvent> eventInfos = new List<BookingEvent> ();
		static EventsAdapter eventAdapter;
		static LinearLayout llProgressBar;
		public static AlertActivity eventActivity;
		DeleteAlertRequest deleteRequest;
		PopupNoticeInfomation popupNoticeDeleteAlert;
		int posSelected = -1;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			LayoutInflater.Factory = new TextFactoryManager();
			SetContentView (Resource.Layout.user_dashboard_list_result);

			eventActivity = this;
			eventListView = FindViewById<ListView> (Resource.Id.user_dashboard_list_result);
			eventListView.ItemClick += OnListItemClick;
			RegisterForContextMenu(eventListView);
			llProgressBar = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgressBar.Visibility = ViewStates.Gone;
			setDataToListView ();

			deleteRequest = new DeleteAlertRequest (this);
			deleteRequest.actionDeleteDelegate = this;

			popupNoticeDeleteAlert = new PopupNoticeInfomation ((HomeDashBoard)eventActivity.Parent);
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteImageOwn));
			TCNotificationCenter.defaultCenter.addObserver (this, constants.kUpdateAlertWhenDeleteFileLocal, new TCSelector(onDeleteImageOwn));
		}

		public void onDeleteImageOwn(object document) {
			this.RunOnUiThread (() => {
				var doc = (BookingDocumentDto)document;
				List<BookingEvent> _bookingEvents = eventInfos.FindAll (x => x.Booking.Id == doc.BookingId);

				if (_bookingEvents != null && _bookingEvents.Count > 0) {
					foreach (BookingEvent _bookingEvent in _bookingEvents) {
						BookingInfo _bookingInfo = _bookingEvent.Booking;
						BookingDocumentDto _documentDto = null;
						if (_bookingInfo != null && _bookingInfo.BookingDocuments != null) {
							_documentDto = _bookingInfo.BookingDocuments.Find (x => x.Id == doc.Id) as BookingDocumentDto;

							if (_documentDto != null) {
								_bookingInfo.BookingDocuments.Remove (_documentDto);
							}
						}
					}
				}
			});
		}

		void OnListItemClick (object sender, AdapterView.ItemClickEventArgs e)
		{
			constants.eventInfo = eventInfos [e.Position];
			switch(constants.eventInfo.Status){
			case (int)Constants.ALERT_EVENT_TYPE.PHOTO:
				if (constants.eventInfo.UploadedDocument != null && !constants.eventInfo.UploadedDocument.Trim ().Equals ("")) {
					var bookingDocumentDto = constants.eventInfo.Booking.BookingDocuments.Find (x => x.S3FileName.Equals(constants.eventInfo.UploadedDocument)) as BookingDocumentDto;
					if (bookingDocumentDto != null) {
						utilsAndroid.onViewFile (this, constants.eventInfo.UploadedDocument);
					} else {
						popupNoticeDeleteAlert.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.file_not_exist));
					}
				} else {
					popupNoticeDeleteAlert.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.file_not_exist));
				}
				break;
			case (int)Constants.ALERT_EVENT_TYPE.REQUEST:
				constants.bookingInfo = eventInfos [e.Position].Booking;
				Intent iRequest = new Intent (this, typeof(RequestDetail));
				StartActivity (iRequest);
				break;
			case (int)Constants.ALERT_EVENT_TYPE.CONFIRMED:
				constants.bookingInfo = eventInfos [e.Position].Booking;
				Intent iConfirm = new Intent (this, typeof(ConfirmDetail));
				StartActivity (iConfirm);
				break;
			case (int)Constants.ALERT_EVENT_TYPE.PAST:
				constants.bookingInfo = eventInfos [e.Position].Booking;
				MApplication.getInstance ().specialistID = constants.bookingInfo.SpecialistId;
				Intent iPastBooking = new Intent (this, typeof(PastHistoryDetail));
				StartActivity (iPastBooking);
				break;
			default:
				break;
			}

		} 			

		public override void OnCreateContextMenu (IContextMenu menu, View v, IContextMenuContextMenuInfo menuInfo)
		{
			base.OnCreateContextMenu (menu, v, menuInfo);
			if (v.Id == Resource.Id.user_dashboard_list_result)
			{
				var info = (AdapterView.AdapterContextMenuInfo) menuInfo;
				menu.SetHeaderTitle("Ref " + eventInfos[info.Position].Booking.ReferenceNo);

				var menuItems = Resources.GetStringArray(Resource.Array.context_menu);
				for (var i = 0; i < menuItems.Length; i++)
					menu.Add(Menu.None, i, i, menuItems[i]);
			}
		}

		public override bool OnContextItemSelected(IMenuItem item)
		{
			var info = (AdapterView.AdapterContextMenuInfo) item.MenuInfo;
			var menuItemIndex = item.ItemId;
			//var menuItems = Resources.GetStringArray(Resource.Array.context_menu);
			//var menuItemName = menuItems[menuItemIndex];

			if (menuItemIndex == 0) {
				onDeleteAlertAction (info.Position);
			}
			return true;
		}

		private void onDeleteAlertAction(int pos){
			posSelected = pos;
			llProgressBar.Visibility = ViewStates.Visible;
			deleteRequest.deleteAlert (eventInfos [pos].Id);
		}

		public static void setDataToListView ()
		{
			getListAlertsRequest ();
		}

		private static void getListAlertsRequest ()
		{
			llProgressBar.Visibility = ViewStates.Visible;
			Action<string> successful = (response => {
				eventActivity.RunOnUiThread (() => {
					llProgressBar.Visibility = ViewStates.Gone;
					if(eventInfos != null)
						eventInfos.Clear ();
					eventInfos = ParseDataHelper.parseDataListEvents(response);
					if(eventInfos != null){
						((HomeDashBoard)eventActivity.Parent).changeTabTitle (0, eventActivity.GetString(Resource.String.alerts_title)+ "\n("+eventInfos.Count+")");
					} else {
						((HomeDashBoard)eventActivity.Parent).changeTabTitle (0, eventActivity.GetString(Resource.String.alerts_title)+ "\n(0)");
						((HomeDashBoard)eventActivity.Parent).popupNoticeAlert.showNoticeDialog(eventActivity.GetString(Resource.String.alerts_title_popup), eventActivity.GetString(Resource.String.cannot_get_data));
					}
					eventAdapter = new EventsAdapter (eventActivity, eventInfos);
					eventListView.Adapter = eventAdapter;
				});
			});

			Action<string> failure = (response => {
				eventActivity.RunOnUiThread (() => {
					llProgressBar.Visibility = ViewStates.Gone;
					Toast.MakeText(eventActivity, eventActivity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
				});
			});

			DataHelperRequest.getInstance ().getListBookingInfos (MApplication.getInstance ().userId,
				MApplication.getInstance ().isConsultant, (int)Constants.LISTTYPE.ALERTS, successful, failure);
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

		#region OnDeleteAlertDelegate implementation

		public void onDeleteAlertSuccess (bool status)
		{
			this.RunOnUiThread (() => {
				llProgressBar.Visibility = ViewStates.Gone;
				if(status){
					try {
						eventInfos.RemoveAt(posSelected);
						eventAdapter = new EventsAdapter (eventActivity, eventInfos);
						eventListView.Adapter = eventAdapter;
						((HomeDashBoard)eventActivity.Parent).changeTabTitle (0, eventActivity.GetString(Resource.String.alerts_title)+ "\n("+eventInfos.Count+")");
					} catch (Exception e){
						Console.WriteLine(e.Message);
						popupNoticeDeleteAlert.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
					}
				} else {
					popupNoticeDeleteAlert.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
				}
			});
		}

		public void onDeleteAlertFail ()
		{
			this.RunOnUiThread (() => {
				llProgressBar.Visibility = ViewStates.Gone;
				popupNoticeDeleteAlert.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.connection_fail));
			});
		}

		#endregion
	}
}

