using System;
using Android.App;
using System.Collections.Generic;
using Android.Views;
using Android.Widget;

namespace Teleconsult.Android
{
	public class SortAdapter : BaseAdapter<string>
	{
		string[] _sortList;
		Activity _activity;
		int _iSortIndex;

		public SortAdapter (Activity activity, string[] sortItem, int iSortIndex) : base()
		{
			_activity = activity;
			this._sortList = sortItem;
			this._iSortIndex = iSortIndex;
		}

		public override int Count {
			get { return _sortList.Length; }
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
			var tvTextSort = view.FindViewById<TextView> (Resource.Id.tvSortContent);
			var iconChecked = view.FindViewById<ImageView> (Resource.Id.imgChecked);
			if (position == _iSortIndex) {
				iconChecked.Visibility = ViewStates.Visible;
			} else {
				iconChecked.Visibility = ViewStates.Gone;
			}
			tvTextSort.Text = _sortList [position].Trim ();
			return view;
		}			

		#region implemented abstract members of BaseAdapter

		public override string this [int index] {
			get {
				return _sortList[index]; 
			}
		}

		#endregion
	}
}

