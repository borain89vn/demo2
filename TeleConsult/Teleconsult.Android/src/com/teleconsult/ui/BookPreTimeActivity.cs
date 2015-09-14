using Android.App;
using Android.OS;
using Android.Widget;
using System;
using CoreSystem;
using Android.Views;
using Android.Text;
using System.Globalization;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "BookTime", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]					
	public class BookPreTimeActivity : BaseActivity, OnActionDelegate, OnGetSystemConfigDelegate
	{
		bool isStandardHour = false;
		string strEnquiry = "";
		bool isStartDatepicker = false;
		DateTime datetimeStart;
		DateTime datetimeEnd;
		TextView tvDatetimeStart;
		TextView tvDatetimeEnd;
		TextView tvTimeError;
		BookPreTimeUI dialog;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.book_a_time_schedule);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle (Resource.String.book_time);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (Resource.String.book_time);

			if (this.Intent.Extras != null) {
				isStandardHour = this.Intent.Extras.GetBoolean (constants.pIsStandard);
				strEnquiry = this.Intent.Extras.GetString (constants.pEnquiry);
			} 

			dialog = new BookPreTimeUI(this, isStandardHour);
			dialog.actionDelegate = this;

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			tvDatetimeStart = FindViewById<TextView> (Resource.Id.tv_book_time_start);
			tvDatetimeEnd = FindViewById<TextView> (Resource.Id.tv_book_time_end);
			tvTimeError = FindViewById<TextView> (Resource.Id.tv_time_booking_error);
			var btnBookTime = FindViewById<Button> (Resource.Id.btn_book_request);
			var tvDay = FindViewById<TextView> (Resource.Id.tv_day_standardhours_select);
			var tvStartTime = FindViewById<TextView> (Resource.Id.tv_start_standardhours_select);
			var tvEndTime = FindViewById<TextView> (Resource.Id.tv_end_standardhours_select);
			var llStartTime = FindViewById<LinearLayout> (Resource.Id.llStartTimeBooking);
			var llEndTime = FindViewById<LinearLayout> (Resource.Id.llEndTimeBooking);

			tvDay.Text = "";
			tvStartTime.Text = "";
			tvEndTime.Text = "";

//			foreach (var standarHour in constants.specialistInfo.SpecialistDetail.ListStandardHour) {
//				if (standarHour.Day != null) {
//					tvDay.Text += standarHour.Day.Trim ()+ ":" + "\n";
//					tvStartTime.Text += standarHour.Start.Trim () + "  -" + "\n";
//					tvEndTime.Text += standarHour.End.Trim ()+"\n";
//				}
//			}

//			datetimeStart = new DateTime (DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);
//			datetimeEnd = new DateTime (DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);

			llStartTime.Click += (sender, e) => {
				tvTimeError.Visibility = ViewStates.Gone;
				isStartDatepicker = true;
				dialog.showSelectPreTime(isStartDatepicker, datetimeStart);
			};

			llEndTime.Click += (sender, e) => {
				tvTimeError.Visibility = ViewStates.Gone;
				isStartDatepicker = false;
				dialog.showSelectPreTime(isStartDatepicker, datetimeEnd);
			};

			btnBookTime.Click += (sender, e) => {
				if (utilsAndroid.checkValidateTimeBooking (this, Utils.getDateTimeNow(MApplication.getInstance().timezoneName), datetimeStart, datetimeEnd, tvTimeError)) {
					if (isStandardHour) {
						if (Utils.checkIsStandarHour (datetimeStart, datetimeEnd, constants.specialistInfo.SpecialistDetail.ListStandardHour)) {
							dialog.showPreTimeConfirm(strEnquiry, datetimeStart, datetimeEnd);
						} else {
							tvTimeError.Visibility = ViewStates.Visible;
							tvTimeError.SetText(Resource.String.standard_time_error);
						}
					} else {
						if (!Utils.checkIsStandarHour (datetimeStart, datetimeEnd, constants.specialistInfo.SpecialistDetail.ListStandardHour)) {
							dialog.showPreTimeConfirm(strEnquiry, datetimeStart, datetimeEnd);
						} else {
							tvTimeError.Visibility = ViewStates.Visible;
							tvTimeError.SetText(Resource.String.out_of_time_error);
						}
					}
				} else {
					tvTimeError.Visibility = ViewStates.Visible;
				}
			};

			datetimeStart = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);// DateTime.Now;	
			tvDatetimeStart.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
			datetimeEnd = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName); //DateTime.Now;	
			tvDatetimeEnd.Text = datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();


			GetSystemConfig getSysConfig = new GetSystemConfig (this);
			getSysConfig.actionGetConfigDelegate = this;
			getSysConfig.getSysConfig ();
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

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}
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
				if (isStartDatepicker) {
					datetimeStart = dateTime;
					tvDatetimeStart.Text = dateTime.ToString (constants.sDateFormat) + " " + dateTime.ToString (constants.sTimeFormat, new CultureInfo ("en-us")).ToUpper ();
				} else {
					datetimeEnd = dateTime;
					tvDatetimeEnd.Text = dateTime.ToString (constants.sDateFormat) + " " + dateTime.ToString (constants.sTimeFormat, new CultureInfo ("en-us")).ToUpper ();
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
				datetimeStart = datetimeStart.AddMinutes (MApplication.getInstance().systemConfig.minimumLeadTime);	
				tvDatetimeStart.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
				datetimeEnd = datetimeStart.AddMinutes (MApplication.getInstance().systemConfig.minimumBooking);	
				tvDatetimeEnd.Text = datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
			});
		}

		public void ondFailGetConfig ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		#endregion
	}
}

