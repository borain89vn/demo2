using System;
using Android.App;
using Android.Widget;
using Android.Views;
using System.Linq;
using Android.Text;
using CoreSystem;
using Android.Content;
using System.Globalization;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class BookPreTimeUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		string strEnquiry = "";
		double costPerMinute = 0.0;
		double ratePerMinute = 0.0;
		bool isStartDatepicker;
		DateTime datetimeStart;
		DateTime datetimeEnd;
		bool isStandardHour;
		public OnActionDelegate actionDelegate { set; get; }

		public BookPreTimeUI (Activity _activity, bool isStandard) : base(_activity)
		{
			this._activity = _activity;
			this.isStandardHour = isStandard;
		}

		public void showPreTimeEnquiry(bool isStandard){
			var bookPreTimeRequestView = LayoutInflater.Inflate (Resource.Layout.popup_request_layout, null);
			var tvTitle = bookPreTimeRequestView.FindViewById<TextView> (Resource.Id.tv_title_request_popup);
			var editDescription = bookPreTimeRequestView.FindViewById<EditText> (Resource.Id.edit_entertext_popup);
			var btnConfirm = bookPreTimeRequestView.FindViewById<Button> (Resource.Id.btn_confirm_entertext_popup);
			var btnCancel = bookPreTimeRequestView.FindViewById<Button> (Resource.Id.btn_cancel_entertext_popup);
			var tvError = bookPreTimeRequestView.FindViewById<TextView> (Resource.Id.tv_enquiry_error);

			this.isStandardHour = isStandard;
			btnConfirm.Enabled = false;

			tvTitle.SetText (Android.Resource.String.titleTalknowRequest);
			btnConfirm.Click += (sender, e) => {
				if (editDescription.Text.Trim().Length <= 0) {
					btnConfirm.Enabled = false;
					tvError.Visibility = ViewStates.Visible;
				} else {
					strEnquiry = editDescription.Text.ToString ();
					dialog.Dismiss();

					Intent intent = new Intent(_activity, typeof(BookPreTimeActivity));
					intent.PutExtra(constants.pIsStandard, isStandardHour);
					intent.PutExtra(constants.pEnquiry, strEnquiry);
					_activity.StartActivity(intent);
				}
			};
			btnCancel.Click += (sender, e) => {
				dialog.Dismiss();
			};
			editDescription.TextChanged += (sender, e) => {
				if(editDescription.Text.Count() <= 0){
					btnConfirm.Enabled = false;
				}else{
					btnConfirm.Enabled = true;
				}
				tvError.Visibility = ViewStates.Gone;
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (bookPreTimeRequestView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		AlertDialog.Builder builderSelectTime;
		Dialog dialogSelectTime;
		DatePicker datepicker;
		TimePicker timepicker;

		public void showSelectPreTime(bool isStartTime, DateTime dateTime){
			this.isStartDatepicker = isStartTime;
			if (dialogSelectTime == null) {
				var customDatetimeView = LayoutInflater.Inflate (Resource.Layout.popup_date_time_picker, null);
				datepicker = customDatetimeView.FindViewById<DatePicker> (Resource.Id.datepicker_popup);
				timepicker = customDatetimeView.FindViewById<TimePicker> (Resource.Id.timepicker_popup);
				var btnSet = customDatetimeView.FindViewById<Button> (Resource.Id.btn_set_datetime);

				btnSet.Click += (sender, e) => {
					if (isStartDatepicker) {
						datetimeStart = new DateTime (datepicker.DateTime.Year, datepicker.DateTime.Month, datepicker.DateTime.Day, (int)timepicker.CurrentHour, (int)timepicker.CurrentMinute, 0, DateTimeKind.Utc);
						actionDelegate.onSelectTime (datetimeStart);
					} else {
						datetimeEnd = new DateTime (datepicker.DateTime.Year, datepicker.DateTime.Month, datepicker.DateTime.Day, (int)timepicker.CurrentHour, (int)timepicker.CurrentMinute, 0, DateTimeKind.Utc);
						actionDelegate.onSelectTime (datetimeEnd);
					}
					dialogSelectTime.Hide();
				};

				builderSelectTime = new AlertDialog.Builder (_activity);
				builderSelectTime.SetView (customDatetimeView);
				dialogSelectTime = builderSelectTime.Create ();
				dialogSelectTime.SetCanceledOnTouchOutside (false);
			}

			// Set new date & time from User_Info API
			datepicker.UpdateDate (dateTime.Year, dateTime.Month - 1, dateTime.Day);

			datepicker.MinDate = utilsAndroid.getMinDateMilliSeconds ();

			timepicker.CurrentHour = (Java.Lang.Integer)dateTime.Hour;
			timepicker.CurrentMinute = (Java.Lang.Integer)dateTime.Minute;
			dialogSelectTime.Show ();
		}

		public void showPreTimeConfirm(string strEnquiry, DateTime dtStart, DateTime dtEnd){
			var confirmPreTimeView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);
			var tvTitle = confirmPreTimeView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvConfirm = confirmPreTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirm = confirmPreTimeView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnDecline = confirmPreTimeView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvConfirm.Gravity = GravityFlags.Left;
			this.datetimeStart = dtStart;
			this.datetimeEnd = dtEnd;
			this.strEnquiry = strEnquiry;

			if (isStandardHour) {
				tvTitle.SetText (Android.Resource.String.pre_time_confirm_standard_title);
				costPerMinute = (double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard;
				ratePerMinute = (double)constants.specialistInfo.SpecialistDetail.Specializations [0].StandardRate;
			} else {
				tvTitle.SetText (Android.Resource.String.pre_time_confirm_outof_title);
				costPerMinute = (double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour;
				ratePerMinute = (double)constants.specialistInfo.SpecialistDetail.Specializations [0].OutOfHourRate;
			}
			string sEndtime;
			sEndtime = datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			tvConfirm.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_confirm),
				datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(),
				sEndtime, constants.specialistInfo.Account.Name, Utils.getCost(costPerMinute),
				Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum)));
//			if (constants.specialistInfo.SpecialistDetail.Specializations [0].IsApplyNoMinimumCharge) {
//				tvConfirm.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_confirm),
//					datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(),
//					sEndtime, constants.specialistInfo.Account.Name, Utils.getCost(costPerMinute),
//					Utils.getCost(MApplication.getInstance().systemConfig.basicFee)));
//			}

			btnConfirm.Click += (sender, e) => {
				actionDelegate.onSending();
				if(isStandardHour)
					bookTimeRequest ((int)Constants.TALKNOWTYPE.STANDARD);
				else
					bookTimeRequest ((int)Constants.TALKNOWTYPE.OUTOFF);
				dialog.Dismiss();
			};

			btnDecline.Click += (sender, e) => {
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (confirmPreTimeView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		private void showPreTimeNotice(){
			var noticePreTimeView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);
			var tvTitle = noticePreTimeView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvNotice = noticePreTimeView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = noticePreTimeView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvNotice.Gravity = GravityFlags.Left;
			tvTitle.SetText(Resource.String.pre_time_notice_end_title);

			if (datetimeStart.Date == datetimeEnd.Date) {
				if (datetimeStart.Date == Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).Date) {
					tvNotice.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_notice_end1), datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(), datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper()));
				} else {
					tvNotice.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_notice_end3), datetimeStart.ToString (constants.sDateFormat), datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(), datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper()));
				}
			} else {
				if (datetimeStart.Date == Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).Date) {
					tvNotice.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_notice_end2), datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(), datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper()));
				} else {
					tvNotice.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.pre_time_notice_end4), datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper(), datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper()));
				}
			}

			btnOk.Click += (sender, e) => {
				_activity.Finish ();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (noticePreTimeView);
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
					if(isSuccess) {
						actionDelegate.onSuccess();
						showPreTimeNotice();
					} else {
						Toast.MakeText(_activity, _activity.GetString(Resource.String.request_fail), ToastLength.Long).Show();
						actionDelegate.onFail();
					}
				});
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDelegate.onFail();
					Toast.MakeText(_activity, _activity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
				});
			});				
			DataHelperRequest.getInstance ().sendBookTimeRequest (MApplication.getInstance ().specialistID,
				MApplication.getInstance ().customerID,
				strEnquiry.Trim(), datetimeStart, datetimeEnd, costPerMinute, ratePerMinute,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum,
				(double)constants.specialistInfo.SpecialistDetail.Specializations [0].MinimumCharge,
				itype, (int)Constants.STATUS.Requested, successful, failure);
		}
	}
}

