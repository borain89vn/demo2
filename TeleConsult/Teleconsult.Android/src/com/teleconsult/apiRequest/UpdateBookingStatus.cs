using System;
using Android.App;
using CoreSystem;
using Android.Widget;
using Android.Views;
using Android.Text;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class UpdateBookingStatus : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnUpdateBookingStatusDelegate actionUpdateBookingStatus { set; get; }

		public UpdateBookingStatus (Activity _activity) : base (_activity)
		{
			this._activity = _activity;
		}

		public void showDeclineBookingConfirm(){
			var confirmDeclineView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);

			var tvTitle = confirmDeclineView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvInfo = confirmDeclineView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirm = confirmDeclineView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnCancel = confirmDeclineView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvTitle.Text = "Confirm Cancellation";
			btnConfirm.Text = "Yes";
			btnCancel.Text = "No";

			if (MApplication.getInstance().isConsultant) {
				tvInfo.TextFormatted = Html.FromHtml (System.String.Format(_activity.GetString(Resource.String.confirm_decline_info), Utils.getCost(constants.bookingInfo.SpecialistMinCharge)));
				if (constants.bookingInfo.IsApplyNoMinimumCharge) {
					//tvInfo.TextFormatted = Html.FromHtml (System.String.Format (_activity.GetString (Resource.String.confirm_decline_info), Utils.getCost (constants.bookingInfo.CustomerMinCharge)));
					tvInfo.Text = _activity.GetString (Resource.String.confirm_decline_no_fee_expert);
				}
			} else {
				tvInfo.TextFormatted = Html.FromHtml (System.String.Format (_activity.GetString (Resource.String.confirm_decline_fee_info), Utils.getCost (constants.bookingInfo.CustomerMinCharge)));
			}

			btnConfirm.Click += (sender, e) => {
				updateBookingStatusRequest((int)Constants.STATUS.Cancel);
				dialog.Dismiss();
			};

			btnCancel.Click += (sender, e) => {
				dialog.Dismiss();
			};				

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (confirmDeclineView);
			dialog = builder.Create ();
			dialog.Show ();

		}

		public void updateBookingStatusRequest(int istatus){
			actionUpdateBookingStatus.onUpdateBookingStatusSending ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread(()=>{
				ResultDTO result = ParseDataHelper.parseDataUpdateBookingStatus(response);
					actionUpdateBookingStatus.onUpdateBookingStatusSuccess(result);
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread(()=>{
					actionUpdateBookingStatus.onUpdateBookingStatusFail();
				});
			});

			DataHelperRequest.getInstance ().sendUpdateBookingStatus (constants.bookingInfo.Id, istatus, successful, failure);
		}
	}
}

