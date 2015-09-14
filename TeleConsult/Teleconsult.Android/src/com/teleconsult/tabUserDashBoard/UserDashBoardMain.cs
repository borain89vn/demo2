using System;
using Android.App;
using Android.Content;
using Android.Graphics.Drawables;
using Android.OS;
using Android.Widget;
using CoreSystem;
using Android.Views.InputMethods;
using Android.Graphics;
using Android.Views;

namespace Teleconsult.Android
{   
	[Activity(Theme = "@style/ActionBarTheme", Label = "DashBoard", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class UserDashBoardMain : BaseActivity, TabHost.IOnTabChangeListener, OnChangeStatusDelegate
    {
		ImageView imgIconStatus;
		TextView tvStatus;
		public ChangeStatusPopup changeStatusPopup;
		public TabHost tabHost;
		public enum TabHome
		{
			Home,
			Search,
			ListFavorite,
			MyProfile
		}

		public enum TabHomeSpec
		{
			Home,
			Status,
			MyProfile
		}

        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
			RequestWindowFeature (WindowFeatures.ActionBar);
            SetContentView(Resource.Layout.user_dashboard_layout);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle(Resource.String.dash_board_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(false);
			ActionBar.SetDisplayShowHomeEnabled (true);

			changeStatusPopup = new ChangeStatusPopup (this);
			changeStatusPopup.changeStatusDelegate = this;

			imgIconStatus = FindViewById<ImageView> (Resource.Id.imgIconStatus);
			tvStatus = FindViewById<TextView> (Resource.Id.tvExpertStatus);
			var llStatus = FindViewById<LinearLayout> (Resource.Id.llStatus);
			llStatus.Click += (sender, e) => {
				changeStatusPopup.ShowStatus(MApplication.getInstance().iExpertStatus);
			};

			SetExpertStatus ();

			LocalActivityManager localActMgr = new LocalActivityManager (this, false);
			localActMgr.DispatchCreate (bundle);
			tabHost = FindViewById<TabHost> (Resource.Id.tabhost);
			tabHost.Setup (localActMgr);

			if (MApplication.getInstance ().isConsultant) {
				CreateTab(typeof(HomeDashBoard), "home", GetString(Resource.String.dash_board_title), Resource.Drawable.ic_tab_home, (int)TabHomeSpec.Home);
				CreateTab (typeof(MyProfileActivity), "my_profile", GetString(Resource.String.my_profile_title), Resource.Drawable.ic_tab_my_profile, (int)TabHomeSpec.Status);
				CreateTab (typeof(MyProfileActivity), "my_profile", GetString(Resource.String.my_profile_title), Resource.Drawable.ic_tab_my_profile, (int)TabHomeSpec.MyProfile);
			} else {
				llStatus.Visibility = ViewStates.Gone;
				CreateTab(typeof(HomeDashBoard), "home", GetString(Resource.String.dash_board_title), Resource.Drawable.ic_tab_home, (int)TabHome.Home);
				CreateTab(typeof(SearchResultActivity), "search", GetString(Resource.String.search_tab_title), Resource.Drawable.ic_tab_search, (int)TabHome.Search);
				CreateTab (typeof(ListFavoriteActivity), "list_favorite", GetString(Resource.String.favorites_title), Resource.Drawable.ic_tab_listfavorite, (int)TabHome.ListFavorite);
				CreateTab (typeof(MyProfileActivity), "my_profile", GetString(Resource.String.my_profile_title), Resource.Drawable.ic_tab_my_profile, (int)TabHome.MyProfile);
			}

			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPushAvailabilityStatus, new TCSelector (OnPushAvailabilityStatus));
        }

		public void OnPushAvailabilityStatus(object iStatus){
			this.RunOnUiThread (() => {
				MApplication.getInstance ().iExpertStatus = (int)iStatus;
				SetExpertStatus ();
			});
		}

		private void SetExpertStatus() {
			imgIconStatus.SetImageResource (utilsAndroid.getIconStatusResource(MApplication.getInstance().iExpertStatus));
			Constants.STATUS_CONSULTANT statusEnum = Constants.STATUS_CONSULTANT.Available;
			switch (MApplication.getInstance ().iExpertStatus) {
			case (int)Constants.STATUS_CONSULTANT.Available:
				statusEnum = Constants.STATUS_CONSULTANT.Available;
				break;
			case (int)Constants.STATUS_CONSULTANT.MaybeAvailable:
				statusEnum = Constants.STATUS_CONSULTANT.MaybeAvailable;
				break;
			case (int)Constants.STATUS_CONSULTANT.NotAvailable:
				statusEnum = Constants.STATUS_CONSULTANT.NotAvailable;
				break;
			}
			tvStatus.Text = Utils.getDescriptionEnum (statusEnum);
		}

		public IMenu menu;
		public override bool OnCreateOptionsMenu(IMenu menu)
		{
			if (this.menu == null) {
				base.OnCreateOptionsMenu (menu);
				this.menu = menu;
				MenuInflater inflater = this.MenuInflater;
				inflater.Inflate (Resource.Menu.menu_search_result, menu);
				menu.GetItem (0).SetVisible (false);
			}
			return true;
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case Resource.Id.sort:
				SearchResultActivity.searchActivity.sortPopup.ShowSortList (SearchResultActivity.searchActivity.iSortIndex, this.menu);
				break;
			default:
				break;
			}

			return true;
		}

		protected override void OnResume(){
			base.OnResume();
			constants.currentActivity = this;
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if (resultCode == Result.Ok && requestCode == constants.EXIT_ACTIVITY) {
				SetResult (Result.Ok);
				Finish ();
			}
		}

		void TabHost.IOnTabChangeListener.OnTabChanged (string tabId)
		{
			switch (tabId) {
			case "home":
				ActionBar.SetTitle (Resource.String.dash_board_title);
				menu.Close ();
				menu.GetItem (0).SetVisible (false);
				break;
			case "search":
				ActionBar.SetTitle(Resource.String.search_result_title);
				//menu.GetItem (0).SetVisible (true);
				break;
			case "list_favorite":
				ActionBar.SetTitle (Resource.String.favorites_title);
				menu.Close ();
				menu.GetItem (0).SetVisible (false);
				ListFavoriteActivity.getFavorite (true);
				break;
			case "my_profile":
				ActionBar.SetTitle (Resource.String.my_profile_title);
				menu.GetItem (0).SetVisible (false);
				break;
			}
		}

		private void CreateTab(Type activityType, string tag, string label, int drawableId, int idTab )
		{
			TabHost.TabSpec tabSpec = null;
			var intent = new Intent(this, activityType);
			intent.AddFlags(ActivityFlags.NewTask);
			tabSpec = tabHost.NewTabSpec (tag);
			var drawableIcon = Resources.GetDrawable(drawableId);

			var view = LayoutInflater.Inflate (Resource.Layout.tab_dashboard, null, false);
			var icon = view.FindViewById<ImageView> (Resource.Id.imgTab);
			var tvTitle = view.FindViewById<TextView> (Resource.Id.tvTabTitle);
			var tvNumberItems = view.FindViewById<TextView> (Resource.Id.tvNumberItemsTab);
			tvTitle.Text = label;
			if (MApplication.getInstance ().isConsultant) {
				switch (idTab) {
				case (int)TabHomeSpec.Home:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_home);
					break;				
				case (int)TabHomeSpec.MyProfile:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_my_profile);
					break;
				}
			} else {
				switch (idTab) {
				case (int)TabHome.Home:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_home);
					break;
				case (int)TabHome.Search:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_search);
					break;
				case (int)TabHome.ListFavorite:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_listfavorite);
					break;
				case (int)TabHome.MyProfile:
					icon.SetBackgroundResource (Resource.Drawable.ic_tab_my_profile);
					break;
				}
			}
//			switch (idTab) {
//			case (int)TabHome.Home:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_home);
//				break;
//			case (int)TabHome.Search:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_search);
//				break;
//			case (int)TabHome.ListFavorite:
//				if (MApplication.getInstance ().isConsultant) {
//					icon.SetBackgroundResource (Resource.Drawable.ic_tab_my_profile);
//				} else {
//					icon.SetBackgroundResource (Resource.Drawable.ic_tab_listfavorite);
//				}
//				break;
//			case (int)TabHome.MyProfile:
//				icon.SetBackgroundResource (Resource.Drawable.ic_tab_my_profile);
//				break;
//			}

			tabSpec.SetIndicator (view);
			tabSpec.SetContent (intent);
			tabHost.AddTab (tabSpec);
			if (MApplication.getInstance ().isConsultant) {
				if (idTab == (int)TabHomeSpec.Status) {
					tabHost.TabWidget.GetChildAt (idTab).Enabled = false;
				}
			}
			tabHost.TabWidget.GetChildAt (idTab).SetBackgroundColor (Resources.GetColor (Resource.Color.black));
			// Set event listener for TabHost
			tabHost.SetOnTabChangedListener (this);
		}

		public void changeTabTitle(int position, string newTitle) {
			TextView tvNumItems = (TextView)tabHost.TabWidget.GetChildAt (position).FindViewById (Resource.Id.tvNumberItemsTab);
			tvNumItems.Text = newTitle;
			tvNumItems.Visibility = ViewStates.Visible;
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Back) {
				Intent intent = new Intent(Intent.ActionMain);
				intent.AddCategory(Intent.CategoryHome);
				intent.SetFlags(ActivityFlags.NewTask);
				StartActivity(intent);
			}
			return true;
		}

		#region OnChangeStatusDelegate implementation

		public void onSelectedStatus (Constants.STATUS_CONSULTANT status)
		{
			MApplication.getInstance ().iExpertStatus = (int)status;
			tvStatus.Text = Utils.getDescriptionEnum (status);
			imgIconStatus.SetImageResource (utilsAndroid.getIconStatusResource((int)status));
		}

		#endregion
    }
}
