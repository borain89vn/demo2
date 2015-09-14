using System;
using Android.App;
using Android.Widget;
using Android.Content.Res;
using Android.Views;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class ChangeStatusPopup : Dialog, OnUpdateStatusDelegate
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		int _iStatusIndex;
		ProgressDialog progress;
		PopupNoticeInfomation popupNotice;

		public OnChangeStatusDelegate changeStatusDelegate { get; set; }

		public ChangeStatusPopup (Activity _activity) : base (_activity)
		{
			this._activity = _activity;
			progress = ProgressDialog.Show (_activity, "", "", true);
			progress.SetContentView(new ProgressBar(_activity));
			progress.Hide ();
			popupNotice = new PopupNoticeInfomation (_activity);
		}

		public void ShowStatus(int iStatusIndex){
			_iStatusIndex = iStatusIndex;

			var statusView = LayoutInflater.Inflate (Resource.Layout.popup_priority_sort, null);
			var tvTitle = statusView.FindViewById<TextView> (Resource.Id.sort_title);
			tvTitle.Text = _activity.GetString (Resource.String.availability_title);
			ListView statusLV = statusView.FindViewById<ListView>(Resource.Id.lv_priority_sort);
			StatusAdapter statusAdapter;
			statusAdapter = new StatusAdapter (_activity, _activity.Resources.GetStringArray(Resource.Array.status_expert), iStatusIndex);
			statusLV.Adapter = statusAdapter;
			statusLV.ItemClick += OnListItemClick;

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (statusView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.Show ();
		}

		void OnListItemClick(object sender, AdapterView.ItemClickEventArgs e)
		{
			if (dialog != null) {
				dialog.Dismiss ();
			}
			int iStatus;
			if (e.Position == 0)
				iStatus = (int)Constants.STATUS_CONSULTANT.Available;
			else if (e.Position == 2)
				iStatus = (int)Constants.STATUS_CONSULTANT.NotAvailable;
			else
				iStatus = (int)Constants.STATUS_CONSULTANT.MaybeAvailable;
			if (iStatus == _iStatusIndex)
				return;

			ChangeStatusExpert changeStatusRequest = new ChangeStatusExpert (_activity);
			changeStatusRequest.actionUpdateStatusDelegate = this;
			changeStatusRequest.changeStatus (MApplication.getInstance().userId, iStatus);
		}

		#region OnUpdateStatusDelegate implementation

		public void onSendingUpdateStatus ()
		{
			_activity.RunOnUiThread (() => {
				progress.Show();
			});
		}

		public void onSuccessUpdateStatus (ResultDTO result, int iStatus)
		{
			_activity.RunOnUiThread (() => {
				progress.Hide();
				if(result != null) {
					if(result.status) {
						switch(iStatus){
						case (int)Constants.STATUS_CONSULTANT.Available:
							changeStatusDelegate.onSelectedStatus (Constants.STATUS_CONSULTANT.Available);
							break;
						case (int)Constants.STATUS_CONSULTANT.MaybeAvailable:
							changeStatusDelegate.onSelectedStatus (Constants.STATUS_CONSULTANT.MaybeAvailable);
							break;
						case (int)Constants.STATUS_CONSULTANT.NotAvailable:
							changeStatusDelegate.onSelectedStatus (Constants.STATUS_CONSULTANT.NotAvailable);
							break;
						}
					} else {
						popupNotice.showNoticeDialog(_activity.GetString(Resource.String.availability_title), _activity.GetString(Resource.String.request_fail));
					}
				} else {
					popupNotice.showNoticeDialog(_activity.GetString(Resource.String.availability_title), _activity.GetString(Resource.String.request_fail));
				}
			});
		}

		public void onFailUpdateStatus ()
		{
			_activity.RunOnUiThread (() => {
				progress.Hide();
				popupNotice.showNoticeDialog(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
			});
		}

		#endregion
	}
}

