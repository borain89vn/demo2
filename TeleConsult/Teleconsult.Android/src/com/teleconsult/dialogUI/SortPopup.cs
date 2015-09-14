using System;
using Android.App;
using Android.Widget;
using Android.Content.Res;
using Android.Views;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class SortPopup : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnSortSelectedDelegate sortDelegate { get; set; }
		IMenu _menuDashboard;

		public SortPopup (Activity _activity) : base (_activity)
		{
			this._activity = _activity;
		}

		public void ShowSortList(int iSortIndex, IMenu menuDashboard){

			var sortView = LayoutInflater.Inflate (Resource.Layout.popup_priority_sort, null);

			ListView sortLV = sortView.FindViewById<ListView>(Resource.Id.lv_priority_sort);
			SortAdapter sortAdapter;
			sortAdapter = new SortAdapter (_activity, _activity.Resources.GetStringArray(Resource.Array.sort_priority), iSortIndex);
			sortLV.Adapter = sortAdapter;
			sortLV.ItemClick += OnListItemClick;

			this._menuDashboard = menuDashboard;

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (sortView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.Show ();
		}

		void OnListItemClick(object sender, AdapterView.ItemClickEventArgs e)
		{
			if (dialog != null) {
				dialog.Dismiss ();
			}
			sortDelegate.onSelected (e.Position, _menuDashboard);
		}
	}
}

