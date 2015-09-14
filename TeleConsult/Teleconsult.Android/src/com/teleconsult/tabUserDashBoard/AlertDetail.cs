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
using System.Globalization;
using Android.Graphics.Drawables;
using UrlImageViewHelper;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "AlertDetail", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class AlertDetail : BaseActivity, IUrlImageViewCallback
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.popup_confirm_bookings);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = GetString(Resource.String.consultation_titile) + constants.eventInfo.Booking.ReferenceNo;
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (GetString(Resource.String.consultation_titile) + constants.eventInfo.Booking.ReferenceNo);

			var avatar = FindViewById<ImageView> (Resource.Id.avatar_popup_booking);
			var tvName = FindViewById<TextView> (Resource.Id.tv_name_popup_booking);
			var tvProposedTime = FindViewById<TextView> (Resource.Id.tv_time_popup_booking);
			var tvFee = FindViewById<TextView> (Resource.Id.tv_fee_popup_booking);
			var tvFeeTitle = FindViewById<TextView> (Resource.Id.tv_title_cost_confirm);

			var btnAddfile = FindViewById<Button> (Resource.Id.btn_addfile_confirm_booking);
			var btnTalkNowRequest = FindViewById<Button> (Resource.Id.btn_request_talknow_booking);
			var btnDecline = FindViewById<Button> (Resource.Id.btn_decline_confirm_booking);

			var llGroupFileAttach = FindViewById<LinearLayout> (Resource.Id.llGroupFileAttachBooking);
			var llGroupEnquiry = FindViewById<LinearLayout> (Resource.Id.llGroupEnquiry);

			llGroupEnquiry.Visibility = ViewStates.Gone;
			llGroupFileAttach.Visibility = ViewStates.Gone;
			btnAddfile.Visibility = ViewStates.Gone;
			btnTalkNowRequest.Visibility = ViewStates.Gone;
			btnDecline.Visibility = ViewStates.Gone;

			DateTime datetimeStart = DateTime.Parse ( constants.eventInfo.Booking.StartTime);
			DateTime datetimeEnd = DateTime.Parse ( constants.eventInfo.Booking.EndTime);
			if (datetimeStart.Date == datetimeEnd.Date) {
				tvProposedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			} else {
				tvProposedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " +datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			}
			if (constants.eventInfo.Booking.Type == (int)Constants.TALKNOWTYPE.ASAP) {
				tvProposedTime.Text = GetString (Resource.String.soonest_possible_time);
			}
			tvProposedTime.SetMinWidth (Utils.getScreenWidth ());
			tvFee.Text = "$" + Utils.getCost(constants.eventInfo.Booking.CostPerMinute) + " " + GetString(Resource.String.price_per_minute);
			if (MApplication.getInstance().isConsultant) {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.eventInfo.Booking.CustomerAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.eventInfo.Booking.CustomerName;
				tvFeeTitle.Text = "CONSULTATION FEE";
			} else {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.eventInfo.Booking.SpecialistAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.eventInfo.Booking.SpecialistName;
				tvFeeTitle.Text = "APPLICABLE COST";
			}
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
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
	}
}

