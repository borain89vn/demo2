using System;
using Android.App;
using Android.Widget;
using Android.Views;
using System.Linq;
using Android.Text;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class BookASAPUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		string strEnquiry = "";
		DateTime datetimeStart;
		DateTime datetimeEnd;

		public OnActionDelegate actionDelegate { set; get; }

		public BookASAPUI (Activity _activity):base(_activity)
		{
			this._activity = _activity;
		}

		public void showASAPEnquiry(){
			var bookASAPTimeRequestView = LayoutInflater.Inflate (Resource.Layout.popup_request_layout, null);
			var tvTitle = bookASAPTimeRequestView.FindViewById<TextView> (Resource.Id.tv_title_request_popup);
			var editDescription = bookASAPTimeRequestView.FindViewById<EditText> (Resource.Id.edit_entertext_popup);
			var btnConfirm = bookASAPTimeRequestView.FindViewById<Button> (Resource.Id.btn_confirm_entertext_popup);
			var btnCancel = bookASAPTimeRequestView.FindViewById<Button> (Resource.Id.btn_cancel_entertext_popup);
			var tvError = bookASAPTimeRequestView.FindViewById<TextView> (Resource.Id.tv_enquiry_error);

			btnConfirm.Enabled = false;
			tvTitle.SetText (Android.Resource.String.titleTalknowRequest);
			btnConfirm.Click += (sender, e) => {
				if (editDescription.Text.Trim().Length <= 0) {
					btnConfirm.Enabled = false;
					tvError.Visibility = ViewStates.Visible;
				} else {
					strEnquiry = editDescription.Text.ToString ();
					dialog.Dismiss();
					showASAPConfirm();
				}
			};
			btnCancel.Click += (sender, e) => {
				dialog.Dismiss();
			};
			editDescription.TextChanged += (sender, e) => {
				if(editDescription.Text.Count() <= 0){
					btnConfirm.Enabled = false;
				}else {
					btnConfirm.Enabled = true;
				}
				tvError.Visibility = ViewStates.Gone;
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (bookASAPTimeRequestView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		public void showASAPConfirm(){
			var confirmASAPTimeView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);
			var tvTitle = confirmASAPTimeView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvConfirm = confirmASAPTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirm = confirmASAPTimeView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnDecline = confirmASAPTimeView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvConfirm.Gravity = GravityFlags.Left;
			tvTitle.SetText (Android.Resource.String.asap_confirm_title);
			tvConfirm.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.asap_confirm), constants.specialistInfo.Account.Name, Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum)));
			btnConfirm.Click += (sender, e) => {
				actionDelegate.onSending();
				datetimeStart = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);
				datetimeEnd = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);
				bookTimeRequest ((int)Constants.TALKNOWTYPE.ASAP);
				dialog.Dismiss();
			};

			btnDecline.Click += (sender, e) => {
				dialog.Dismiss();
			};
			builder = new AlertDialog.Builder (_activity);
			builder.SetView (confirmASAPTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		public void showASAPNoticeEnd(){
			var noticeASAPTimeView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticeASAPTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticeASAPTimeView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvNotice.Gravity = GravityFlags.Left;
			tvTitle.SetText(Resource.String.asap_notice_end_title);
			tvNotice.Text = String.Format (_activity.GetString(Resource.String.asap_notice_end));
			btnOk.Click += (sender, e) => {
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticeASAPTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);

			try {
				dialog.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}

		private void bookTimeRequest (int itype)
		{
			Action<String> successful = (response => {
				bool isSuccess = ParseDataHelper.parseDataBooking(response);
				_activity.RunOnUiThread (() => {
					if(isSuccess){
						actionDelegate.onSuccess();
						showASAPNoticeEnd();
					} else {
						PopupNoticeInfomation notice = new PopupNoticeInfomation(_activity);
						notice.showNoticeDialog(_activity.GetString(Resource.String.book_time), _activity.GetString(Resource.String.request_fail));
						actionDelegate.onFail();
					}
				});
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDelegate.onFail();
					PopupNoticeInfomation notice = new PopupNoticeInfomation(_activity);
					notice.showNoticeDialog(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
				});
			});				
			DataHelperRequest.getInstance ().sendBookTimeRequest (MApplication.getInstance ().specialistID,
				MApplication.getInstance ().customerID,
				strEnquiry.Trim(), datetimeStart, datetimeEnd,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].StandardRate,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].MinimumCharge,
				itype, (int)Constants.STATUS.Requested, successful, failure);
		}
	}
}

