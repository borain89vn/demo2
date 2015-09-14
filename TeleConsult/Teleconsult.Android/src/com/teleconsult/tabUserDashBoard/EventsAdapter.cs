using CoreSystem;
using Android.Widget;
using System.Collections.Generic;
using Android.App;
using System;
using Android.Views;
using System.Globalization;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class EventsAdapter : BaseAdapter<BookingEvent>
	{
		List<BookingEvent> _eventInfos;
		Activity _activity;

		public EventsAdapter (Activity activity, List<BookingEvent> eventInfos)
		{
			this._activity = activity;
			this._eventInfos = eventInfos;
		}

		#region implemented abstract members of BaseAdapter

		public override long GetItemId (int position)
		{
			return position;
		}

		public override global::Android.Views.View GetView (int position, global::Android.Views.View convertView, global::Android.Views.ViewGroup parent)
		{
			var view = convertView ?? _activity.LayoutInflater.Inflate (Resource.Layout.user_dashboard_list_adapter, parent, false);
			var tvReferenceId = view.FindViewById<TextView> (Resource.Id.tv_reference_booking);
			var tvTime = view.FindViewById<TextView> (Resource.Id.tv_time_booking);
			var tvStatus = view.FindViewById<TextView> (Resource.Id.tv_status_booking);
			var tvCreateDate = view.FindViewById<TextView> (Resource.Id.tv_created_date);
			var tvName = view.FindViewById<TextView> (Resource.Id.tv_name_booking);
			var llBgStatus = view.FindViewById<LinearLayout> (Resource.Id.llBgStatus);

			tvCreateDate.Visibility = ViewStates.Gone;

			try {
				TimeSpan timeSub = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName) - DateTime.Parse(_eventInfos[position].CreatedDate);
				if (timeSub.Days > 0) {
					tvTime.Text = timeSub.Days.ToString () + "d";
				} else if (timeSub.Hours > 0) {
					tvTime.Text = timeSub.Hours.ToString () + "h";
				} else {
					tvTime.Text = timeSub.Minutes.ToString () + "m";
				}

				tvCreateDate.Text = DateTime.Parse(_eventInfos[position].CreatedDate).ToString(constants.sDateTimeFormat, new CultureInfo("en-us"));
				string strName = "";
				if (MApplication.getInstance ().isConsultant) {
					strName = _eventInfos [position].Booking.CustomerName;
				} else {
					strName = _eventInfos [position].Booking.SpecialistName;
				}
				tvReferenceId.Text = _eventInfos [position].Booking.ReferenceNo;
				tvName.Text = strName;
				//tvReferenceId.Text = String.Format (_activity.GetString (Resource.String.reference_content), _eventInfos [position].Booking.ReferenceNo, strName);
				tvStatus.Text = _eventInfos[position].ShortDescription;
				if (_eventInfos[position].ShortDescription.Equals(CoreSystem.Constants.BookingRequestMade) || _eventInfos[position].ShortDescription.Equals(CoreSystem.Constants.RequiredOnBookingRequest))
					llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_red);
				else
					llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_blue);

				if (_eventInfos[position].IsRead) {
					tvTime.SetTypeface(null, global::Android.Graphics.TypefaceStyle.Bold);
					tvReferenceId.SetTypeface(null, global::Android.Graphics.TypefaceStyle.Bold);
					tvStatus.SetTypeface(null, global::Android.Graphics.TypefaceStyle.Bold);
					tvCreateDate.SetTypeface(null, global::Android.Graphics.TypefaceStyle.Bold);
				}
			} catch (Exception e) {
				Console.WriteLine (e.Message);
			}

			return view;
		}

		public override int Count {
			get {
				return _eventInfos != null ? _eventInfos.Count : 0;
			}
		}

		#endregion

		#region implemented abstract members of BaseAdapter

		public override BookingEvent this [int index] {
			get {
				return _eventInfos [index];
			}
		}

		#endregion


	}
}

