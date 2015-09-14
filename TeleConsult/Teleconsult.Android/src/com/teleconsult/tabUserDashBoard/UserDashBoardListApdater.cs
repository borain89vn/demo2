using System;
using Android.Views;
using Android.Widget;
using Android.Content;
using Android.App;
using Android.Provider;
using System.Collections.Generic;
using CoreSystem;
using System.Globalization; 

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class UserDashBoardListApdater:BaseAdapter<BookingInfo>
	{
		List<BookingInfo> _userDashboardInfo;
		Activity _activity;

		public UserDashBoardListApdater (Activity activity, List<BookingInfo> user_dashboard_info):base()
		{
			_activity = activity;
			this._userDashboardInfo = user_dashboard_info;
		}

		public override int Count {
			get { return _userDashboardInfo != null ? _userDashboardInfo.Count : 0; }
		}


		public override Java.Lang.Object GetItem (int position)
		{		
			return null; // could wrap a Contact in a Java.Lang.Object to return it here if needed
		}

		public override long GetItemId (int position)
		{
			return position;
		}

		public override View GetView (int position, View convertView, ViewGroup parent)
		{          
			var view = convertView ?? _activity.LayoutInflater.Inflate (Resource.Layout.user_dashboard_list_adapter, parent, false);
			var tvReferenceId = view.FindViewById<TextView> (Resource.Id.tv_reference_booking);
			var tvTime = view.FindViewById<TextView> (Resource.Id.tv_time_booking);
			var tvStatus = view.FindViewById<TextView> (Resource.Id.tv_status_booking);
			var tvName = view.FindViewById<TextView> (Resource.Id.tv_name_booking);
			var tvCreateDate = view.FindViewById<TextView> (Resource.Id.tv_created_date);
			var llBgStatus = view.FindViewById<LinearLayout> (Resource.Id.llBgStatus);

			tvCreateDate.Visibility = ViewStates.Gone;

			try{
				if(_userDashboardInfo[position].CreatedDate != null)
					tvCreateDate.Text = DateTime.Parse(_userDashboardInfo[position].CreatedDate).ToString(constants.sDateTimeFormat, new CultureInfo("en-us"));
				if(_userDashboardInfo[position].Type == (int)Constants.TALKNOWTYPE.ASAP && _userDashboardInfo[position].Status == (int)Constants.STATUS.Requested){
					tvTime.SetText(Resource.String.asap_title);
				}else{
					DateTime dateTimeTemp = DateTime.Parse(_userDashboardInfo [position].StartTime);
					if (dateTimeTemp == DateTime.MinValue) {
						dateTimeTemp = DateTime.Parse(_userDashboardInfo [position].CreatedDate);
					}
					if(dateTimeTemp.Date == DateTime.Today.Date) {
						tvTime.Text = _activity.GetText(Resource.String.today_title) + "\n" + dateTimeTemp.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
					}
					else {
						tvTime.Text = dateTimeTemp.ToString(constants.sDateFormat, new CultureInfo("en-us")) + "\n" + dateTimeTemp.ToString(constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
					}
				}
				string strName = "";
				if (MApplication.getInstance().isConsultant) {
					strName = _userDashboardInfo [position].CustomerName;
					if (_userDashboardInfo [position].Status == (int)(Constants.STATUS.SpecialistRescheduled)) {
						tvStatus.SetText(Android.Resource.String.strCusToSchedule);
						llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_blue);
					} else {
						tvStatus.SetText(Android.Resource.String.strAwaitingToSpec);
						llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_red);
					}
				} else {
					strName = _userDashboardInfo [position].SpecialistName;
					if (_userDashboardInfo [position].Status == (int)(Constants.STATUS.SpecialistRescheduled)) {
						tvStatus.SetText(Android.Resource.String.strAwaitingToCustomer);
						llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_red);
					} else {
						tvStatus.SetText(Android.Resource.String.strSpecToSchedule);
						llBgStatus.SetBackgroundResource(Resource.Drawable.ic_status_blue);
					}
				}
				if(MApplication.getInstance().userDashboardType == (int)Constants.LISTTYPE.CONFIRMEDBOOKINGS ||
					MApplication.getInstance().userDashboardType == (int)Constants.LISTTYPE.PASTHISTORY){
					tvStatus.Visibility = ViewStates.Gone;
					llBgStatus.Visibility = ViewStates.Gone;
				}
				tvReferenceId.Text = _userDashboardInfo [position].ReferenceNo;
				tvName.Text = strName;
			}catch(Exception e){
				Console.Write (e.Message);
			}
			return view;
		}

		public override BookingInfo this[int position]
		{
			get {
				return _userDashboardInfo[position]; 
			}
		}
	}
}

