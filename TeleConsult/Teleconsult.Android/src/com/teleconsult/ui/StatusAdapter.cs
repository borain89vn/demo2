using System;
using Android.App;
using System.Collections.Generic;
using Android.Views;
using Android.Widget;

namespace Teleconsult.Android
{
	public class StatusAdapter : BaseAdapter<string>
	{
		string[] _statusList;
		Activity _activity;
		int _iStatusIndex;

		public StatusAdapter (Activity activity, string[] statusItems, int iStatusIndex) : base()
		{
			_activity = activity;
			this._statusList = statusItems;
			this._iStatusIndex = iStatusIndex;
			if (_iStatusIndex == 0)
				_iStatusIndex = 2;
			else if (_iStatusIndex == 2)
				_iStatusIndex = 0;
		}

		public override int Count {
			get { return _statusList.Length; }
		}


		public override Java.Lang.Object GetItem (int position)
		{		
			return null;
		}

		public override long GetItemId (int position)
		{
			return position;
		}

		public override View GetView (int position, View convertView, ViewGroup parent)
		{          
			var view = convertView ?? _activity.LayoutInflater.Inflate (Resource.Layout.sort_adapter_layout, parent, false);
			var tvTextStatus = view.FindViewById<TextView> (Resource.Id.tvSortContent);
			var iconChecked = view.FindViewById<ImageView> (Resource.Id.imgChecked);
			var iconStatus = view.FindViewById<ImageView> (Resource.Id.imgStatus);
			iconStatus.Visibility = ViewStates.Visible;
			switch (position) {
			case 0:
				iconStatus.SetImageResource (Resource.Drawable.ic_available);
				break;
			case 1:
				iconStatus.SetImageResource (Resource.Drawable.ic_maybe_available);
				break;
			case 2:
				iconStatus.SetImageResource (Resource.Drawable.ic_not_available);
				break;
			}
			if (position == _iStatusIndex) {
				iconChecked.Visibility = ViewStates.Visible;
			} else {
				iconChecked.Visibility = ViewStates.Gone;
			}
			tvTextStatus.Text = _statusList [position].Trim ();
			return view;
		}			

		#region implemented abstract members of BaseAdapter

		public override string this [int index] {
			get {
				return _statusList[index]; 
			}
		}

		#endregion
	}
}

