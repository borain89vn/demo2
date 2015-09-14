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
using Java.Lang;
using System.Globalization;
using Android.Graphics.Drawables;
using UrlImageViewHelper;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "RequestDetail", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class RequestDetail : BaseActivity, IUrlImageViewCallback, OnUpdateBookingStatusDelegate, OnActionDelegate, OnGetSystemConfigDelegate, OnActionNoticeDelegate
	{
		DateTime datetimeStart;
		DateTime datetimeEnd;
		TextView tvStartTime;
		TextView tvEndTime;
		UpdateBookingStatus updateBookingStatus;
		BookPreTimeUI bookPreTimeDialog;
		PopupNoticeInfomation popupNotice;
		bool isStart = true;
		bool isLoadConfig = false;
		LinearLayout llProgress;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.popup_reschedule_booking);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo;
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo);

			bookPreTimeDialog = new BookPreTimeUI (this, false);
			bookPreTimeDialog.actionDelegate = this;

			popupNotice = new PopupNoticeInfomation(this);
			popupNotice.noticeDelegate = this;

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			var avatar = FindViewById<ImageView> (Resource.Id.avatar_request_booking);
			var tvName = FindViewById<TextView> (Resource.Id.tv_name_request_booking);
			var tvProposedTime = FindViewById<TextView> (Resource.Id.tv_time_request_booking);
			var tvFee = FindViewById<TextView> (Resource.Id.tv_fee_request_booking);
			var tvEnquiry = FindViewById<TextView> (Resource.Id.tv_enquiry_request_booking);
			var llStartTime = FindViewById<LinearLayout> (Resource.Id.llStartTimeReschedule);
			var llEndTime = FindViewById<LinearLayout> (Resource.Id.llEndTimeReschedule);
			var tvTimeError = FindViewById<TextView> (Resource.Id.tv_time_error_reschedule);
			tvStartTime = FindViewById<TextView> (Resource.Id.tv_start_reschedule);
			tvEndTime = FindViewById<TextView> (Resource.Id.tv_end_reschedule);
			var tvFeeTitle = FindViewById<TextView> (Resource.Id.tv_title_cost_reschedule);
			var tvExpired = FindViewById<TextView> (Resource.Id.tv_expried_time_reschedule);

			var btnReschedule = FindViewById<Button> (Resource.Id.btn_reschedule_booking);
			var btnConfirm = FindViewById<Button> (Resource.Id.btn_confirm_booking);
			var btnDecline = FindViewById<Button> (Resource.Id.btn_decline_booking);

			var btnOk = FindViewById<Button> (Resource.Id.btn_ok_reschedule);
			var btnCancel = FindViewById<Button> (Resource.Id.btn_cancel_reschedule);

			var llGrSelectTimeReschedule = FindViewById<LinearLayout> (Resource.Id.llGrSelectTimeReschedule);
			var llGrButtonDetailReschedule = FindViewById<LinearLayout> (Resource.Id.llGrButtonDetailReschedule);
			var llGrButtonConfirmReschedule = FindViewById<LinearLayout> (Resource.Id.llGrButtonConfirmReschedule);

			tvExpired.Visibility = ViewStates.Gone;
			llGrSelectTimeReschedule.Visibility = ViewStates.Gone;
			llGrButtonConfirmReschedule.Visibility = ViewStates.Gone;
			tvTimeError.Visibility = ViewStates.Gone;
			if (MApplication.getInstance ().isConsultant && constants.bookingInfo.Type == (int)Constants.TALKNOWTYPE.ASAP && constants.bookingInfo.Status == (int)Constants.STATUS.Requested) {
				datetimeStart = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);
				datetimeEnd = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);
			} else {
				datetimeStart = DateTime.Parse (constants.bookingInfo.StartTime);
				datetimeEnd = DateTime.Parse (constants.bookingInfo.EndTime);
				tvStartTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
				tvEndTime.Text = datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			}
				
			tvEnquiry.Text = constants.bookingInfo.Enquiry;
			if (datetimeStart.Date == datetimeEnd.Date) {
				tvProposedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			} else {
				tvProposedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			}
			if (constants.bookingInfo.Type == (int)Constants.TALKNOWTYPE.ASAP && constants.bookingInfo.Status == (int)Constants.STATUS.Requested) {
				tvProposedTime.Text = GetString (Resource.String.soonest_possible_time);
			}
			tvProposedTime.SetMinWidth (Utils.getScreenWidth ());
			string fee = "";
			if (MApplication.getInstance ().isConsultant) {
				fee = "$" + Utils.getCost (constants.bookingInfo.RatePerMinute) + " " + GetString (Resource.String.price_per_minute);
			} else {
				fee = "$" + Utils.getCost (constants.bookingInfo.CostPerMinute) + " " + GetString (Resource.String.price_per_minute);
			}
			if (!MApplication.getInstance ().isConsultant) {
				fee += " ($" + Utils.getCost(constants.bookingInfo.CustomerMinCharge) + " minimum)";
			} else if(!constants.bookingInfo.IsApplyNoMinimumCharge){
				fee += " ($" + Utils.getCost (constants.bookingInfo.SpecialistMinCharge) + " minimum)";
			}

			tvFee.Text = fee;

			if (MApplication.getInstance().isConsultant) {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.CustomerAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.bookingInfo.CustomerName;
				tvFeeTitle.Text = "CONSULTATION FEE";
				if (constants.bookingInfo.Type == (int)Constants.TALKNOWTYPE.ASAP && constants.bookingInfo.Status == (int)Constants.STATUS.Requested) {
					btnConfirm.Visibility = ViewStates.Gone;
					btnReschedule.Text = GetString (Resource.String.schedule_btn);
					isLoadConfig = true;
				} else {
					switch (constants.bookingInfo.Status) {
					case (int)Constants.STATUS.Requested:
						btnReschedule.Visibility = ViewStates.Visible;
						isLoadConfig = true;
						break;
					case (int)Constants.STATUS.CustomerRescheduled:
						btnReschedule.Visibility = ViewStates.Gone;
						isLoadConfig = false;
						break;
					case (int)Constants.STATUS.SpecialistRescheduled:
						btnConfirm.Visibility = ViewStates.Gone;
						btnDecline.Visibility = ViewStates.Gone;
						btnReschedule.Visibility = ViewStates.Gone;
						isLoadConfig = false;
						break;
					}
				}
			} else {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.SpecialistAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.bookingInfo.SpecialistName;
				tvFeeTitle.Text = "APPLICABLE COST";
				if (constants.bookingInfo.Status != (int)Constants.STATUS.SpecialistRescheduled) {
					btnConfirm.Visibility = ViewStates.Gone;
					btnDecline.Visibility = ViewStates.Gone;
					btnReschedule.Visibility = ViewStates.Gone;
					isLoadConfig = false;
				} else {
					isLoadConfig = true;
				}
			}

			// if start time < now ---> hide confirm
			if (DateTime.Compare (DateTime.Parse (constants.bookingInfo.StartTime), Utils.getDateTimeNow (MApplication.getInstance ().timezoneName)) < 0) { // Time now > start time
				btnConfirm.Visibility = ViewStates.Gone;
				if (constants.bookingInfo.Type != (int)Constants.TALKNOWTYPE.ASAP) {
					tvExpired.Visibility = ViewStates.Visible;
				}
			}

			btnConfirm.Click += (sender, e) => {
				if(updateBookingStatus == null){
					updateBookingStatus = new UpdateBookingStatus(this);
					updateBookingStatus.actionUpdateBookingStatus = this;
				}
				updateBookingStatus.updateBookingStatusRequest((int)Constants.STATUS.Confirmed);
			};

			btnReschedule.Click += (sender, e) => {
				llGrButtonDetailReschedule.Visibility = ViewStates.Gone;
				llGrButtonConfirmReschedule.Visibility = ViewStates.Visible;
				llGrSelectTimeReschedule.Visibility = ViewStates.Visible;
			};

			btnDecline.Click += (sender, e) => {
				if(updateBookingStatus == null){
					updateBookingStatus = new UpdateBookingStatus(this);
					updateBookingStatus.actionUpdateBookingStatus = this;
				}
				updateBookingStatus.updateBookingStatusRequest((int)Constants.STATUS.Cancel);
			};

			llStartTime.Click += (sender, e) => {
				tvTimeError.Visibility = ViewStates.Gone;
				isStart = true;
				bookPreTimeDialog.showSelectPreTime(isStart, datetimeStart);
			};
			llEndTime.Click += (sender, e) => {
				tvTimeError.Visibility = ViewStates.Gone;
				isStart = false;
				bookPreTimeDialog.showSelectPreTime(isStart, datetimeEnd);
			};

			btnOk.Click += (sender, e) => {
				if (utilsAndroid.checkValidateTimeBooking (this, Utils.getDateTimeNow (MApplication.getInstance ().timezoneName), datetimeStart, datetimeEnd, tvTimeError)) {
					rescheduleRequest ();
				} else {
					tvTimeError.Visibility = ViewStates.Visible;
				}
			};

			btnCancel.Click += (sender, e) => {
				llGrButtonDetailReschedule.Visibility = ViewStates.Visible;
				llGrButtonConfirmReschedule.Visibility = ViewStates.Gone;
				llGrSelectTimeReschedule.Visibility = ViewStates.Gone;
				tvTimeError.Visibility = ViewStates.Gone;
			};

			if (isLoadConfig) {
				GetSystemConfig getSysConfig = new GetSystemConfig (this);
				getSysConfig.actionGetConfigDelegate = this;
				getSysConfig.getSysConfig ();
			}
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		private void rescheduleRequest ()
		{
			llProgress.Visibility = ViewStates.Visible;
			Action<string> successful = (response => {
				bool isSuccess = ParseDataHelper.parseDataRescheduleBooking(response);
				if (isSuccess) {
					this.RunOnUiThread (() => {
						this.Finish();
					});
				} else {
					this.RunOnUiThread (() => {
						llProgress.Visibility = ViewStates.Gone;
						if(popupNotice == null){
							popupNotice = new PopupNoticeInfomation(this);
							popupNotice.noticeDelegate = this;
						}
						popupNotice.showNoticeDialog(GetString(Resource.String.reschedule_btn), GetString(Resource.String.reschedule_notice));
					});
				}
			});

			Action<string> failure = (response => {
				this.RunOnUiThread (() => {
					llProgress.Visibility = ViewStates.Gone;
					if(popupNotice == null){
						popupNotice = new PopupNoticeInfomation(this);
						popupNotice.noticeDelegate = this;
					}
					popupNotice.showNoticeDialog(GetString(Resource.String.reschedule_btn), GetString(Resource.String.reschedule_notice));
				});
			});

			DataHelperRequest.getInstance ().sendResheduleBooking (constants.bookingInfo.Id,
				datetimeStart, datetimeEnd, MApplication.getInstance ().isConsultant, successful, failure);
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		#region OnDeclineBookingDelegate implementation

		public void onUpdateBookingStatusSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onUpdateBookingStatusSuccess (ResultDTO result)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(result != null) {
					if(result.status) {
						popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice), GetString(Resource.String.request_success));
					} else {
						if(result.message != null) {
							popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice), result.message);
						} else {
							popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
						}
					}
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
				}
			});
		}

		public void onUpdateBookingStatusFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		#region OnActionDelegate implementation

		public void onSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccess ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onSelectTime (DateTime dateTime)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if (isStart) {
					datetimeStart = dateTime;
					tvStartTime.Text = dateTime.ToString (constants.sDateFormat) + " " + dateTime.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
				} else {
					datetimeEnd = dateTime;
					tvEndTime.Text = dateTime.ToString (constants.sDateFormat) + " " + dateTime.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
				}
			});
		}

		#endregion

		#region OnGetSystemConfigDelegate implementation

		public void onSendingGetConfig ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccessGetConfig ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if (MApplication.getInstance ().isConsultant && constants.bookingInfo.Type == (int)Constants.TALKNOWTYPE.ASAP && constants.bookingInfo.Status == (int)Constants.STATUS.Requested) {
					datetimeStart = datetimeStart.AddMinutes (MApplication.getInstance().systemConfig.minimumLeadTime);	
					tvStartTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
					datetimeEnd = datetimeStart.AddMinutes (MApplication.getInstance().systemConfig.minimumBooking);	
					tvEndTime.Text = datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
				}
			});
		}

		public void ondFailGetConfig ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		#endregion
		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if (resultCode == Result.Ok && requestCode == constants.EXIT_ACTIVITY) {
				SetResult (Result.Canceled);
				Finish ();
			}
		}

		#region OnActionConfirmDelegate implementation

		public void onOkClick ()
		{
		}
		public void onOkClickToDestroy ()
		{
			Finish ();
		}

		#endregion

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}
	}
}

