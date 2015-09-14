using System;
using Android.App;
using CoreSystem;
using System.Collections.Generic;
using System.Linq;
using Android.Widget;
using Android.OS;
using Android.Content;
using Android.Views;
using Java.Interop;

namespace Teleconsult.Android
{
	[Activity(Theme = "@style/ActionBarTheme", Label = "ListFavoriteActivity", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class ListFavoriteActivity : BaseActivity, OnActionGetListFavoriteDelegate
	{
		ListView specListView;
		SearchResultAdpater searchSpecAdapter;
		int iPosSelected;
		TextView tvSearchResult;
		static GetListFavorites getListFavorite;
		List<SpecialistProfileInfos> specialistProfiles = new List<SpecialistProfileInfos>();
		public static ListFavoriteActivity listFavoriteActivity;
		private static bool isLoading = false;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.search_layout);

			listFavoriteActivity = this;
			isLoading = false;

			hideHeading ();

			specListView = FindViewById<ListView> (Resource.Id.search_list_result);
			specListView.ItemClick += OnListItemClick;
			tvSearchResult = FindViewById<TextView> (Resource.Id.tv_noresult_search);
			tvSearchResult.Text = GetString(Resource.String.no_favorite_title);
			tvSearchResult.Visibility = ViewStates.Gone;
			var viewSearch = FindViewById<View> (Resource.Id.viewSearch);

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;
			viewSearch.Visibility = ViewStates.Gone;

			SearchView searchView = FindViewById<SearchView> (Resource.Id.searchView);
			searchView.Visibility = ViewStates.Gone;

			getListFavorite = null;
			//getFavorite ();

			TCNotificationCenter.defaultCenter.addObserver (this, constants.kAddFavoriteSuccess, new TCSelector(onAddOrRemoveFavoriteSuccess));
			TCNotificationCenter.defaultCenter.addObserver (this, constants.kRemoveFavoriteSuccess, new TCSelector (onAddOrRemoveFavoriteSuccess));
		}

		public static void getFavorite(bool isFromTabHome){
			if (!isFromTabHome) {
				isLoading = false;
			}
			if (isLoading) {
				return;
			}
			if (getListFavorite == null) {
				getListFavorite = new GetListFavorites (listFavoriteActivity);
				getListFavorite.actionListFavoriteDelegate = listFavoriteActivity;
			}
			getListFavorite.getListFavorite ();
		}

		void OnListItemClick(object sender, AdapterView.ItemClickEventArgs e)
		{
			iPosSelected = e.Position;
			constants.specialistInfo = specialistProfiles [e.Position];
			MApplication.getInstance().specialistID = constants.specialistInfo.Account.Id;
			Intent intent = new Intent(this, typeof(SpecialistDetailActivity));
			this.StartActivityForResult (intent, constants.EXIT_ACTIVITY);
		}

		public void onAddOrRemoveFavoriteSuccess(object ojb){
			getFavorite (false);
		}

		#region OnActionGetListFavoriteDelegate implementation

		public void onSending ()
		{
			this.RunOnUiThread (() => {
				isLoading = true;
				llProgress.Visibility = ViewStates.Visible;
				tvSearchResult.Visibility = ViewStates.Gone;
			});
		}

		public void onSuccess (bool isSuccess, List<SpecialistProfileInfos> listSpecInfo)
		{
			this.RunOnUiThread (() => {
				isLoading = false;
				llProgress.Visibility = ViewStates.Gone;
				specialistProfiles = listSpecInfo;
				if(specialistProfiles == null){
					specialistProfiles = new List<SpecialistProfileInfos>();
				}
				searchSpecAdapter = new SearchResultAdpater (this, specialistProfiles);
				specListView.Adapter = searchSpecAdapter;

				if(specialistProfiles.Count() <= 0){
					tvSearchResult.Visibility = ViewStates.Visible;
					if(isSuccess){
						tvSearchResult.Text = GetString(Resource.String.no_favorite_title);
					} else {
						tvSearchResult.Text = GetString(Resource.String.network_not_available);
					}
				}
			});
		}

		#endregion

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

		[Export("doNothing")]
		public void doNothing(View v){
			return;
		}
	}
}

