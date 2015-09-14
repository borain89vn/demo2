using System;
using System.Collections.Generic;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CoreSystem;
using Android.Views.InputMethods;
using System.Linq;
using Java.Interop;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "Search_Result_Activity", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class SearchResultActivity : BaseActivity, AbsListView.IOnScrollListener, global::Android.Widget.SearchView.IOnQueryTextListener, OnSortSelectedDelegate
	{
		public static SearchResultActivity searchActivity;
		static List<SpecialistProfileInfos> specialistProfiles = new List<SpecialistProfileInfos>();
		static List<SpecialistProfileInfos> specialistProfilesTemp = new List<SpecialistProfileInfos>();
		static ListView specListView;
		static SearchResultAdpater searchSpecAdapter;
		int iPosSelected;
		public int iSortIndex = 0;
		static TextView tvSearchResult;
		static TextView tvSearchLimit;
		static InputMethodManager inputManager;
		static string strSortType;
		static int iStartSearch = 0;
		static int iSizeResult = 10;
		static View footerView;
		static SearchView searchView;
		static string strKeyWordSeach;
		public SortPopup sortPopup;
		bool isLoadMore;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.search_layout);

			searchActivity = this;

			if (!MApplication.getInstance ().isLogedIn) {
				ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
				ActionBar.SetTitle (Resource.String.search_result_title);
				ActionBar.SetDisplayShowTitleEnabled (false);
				ActionBar.SetDisplayHomeAsUpEnabled (true);
				ActionBar.SetDisplayShowHomeEnabled (true);
			} else {
				searchActivity.menu = ((UserDashBoardMain)searchActivity.Parent).menu;
				if (searchActivity.menu != null) {
					searchActivity.menu.GetItem (0).SetEnabled (false);
					searchActivity.menu.GetItem (0).SetVisible(false);
				}
			}

			setHeadingTitle (Resource.String.search_title);

			tvSearchResult = FindViewById<TextView> (Resource.Id.tv_noresult_search);
			tvSearchLimit = FindViewById<TextView> (Resource.Id.tv_notice_limit_search);
			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			specListView = FindViewById<ListView> (Resource.Id.search_list_result);
			searchView = FindViewById<SearchView> (Resource.Id.searchView);

			sortPopup = new SortPopup (this);
			sortPopup.sortDelegate = this;

			strKeyWordSeach = "";
			resetData();


			llProgress.Visibility = ViewStates.Visible;

			specListView.ItemClick += OnListItemClick;
			specListView.SetOnScrollListener(searchActivity);

			inputManager = (InputMethodManager)this.GetSystemService (Context.InputMethodService);

			searchView.SetOnQueryTextListener (this);

			strSortType = Constants.SortBy.ProximityASC.ToString ();
			tvSearchResult.Visibility = ViewStates.Gone;		

			if (this.Intent.Extras != null) {
				if (this.Intent.Extras.ContainsKey (constants.pKeyWordSearch) && constants.isSearchHome) {
					searchView.SetIconifiedByDefault (false);
					strKeyWordSeach = this.Intent.Extras.GetString (constants.pKeyWordSearch);
					searchView.SetQuery (strKeyWordSeach.Trim(), false);
					if (strKeyWordSeach.Trim ().Equals ("")) {
						tvSearchResult.Visibility = ViewStates.Visible;
						llProgress.Visibility = ViewStates.Gone;
					} else {
						getSpecialistProfilesRequest ();
					}
					constants.isSearchHome = false;
				}
			} else {
				searchView.SetIconifiedByDefault (false);
				searchView.RequestFocus ();
				llProgress.Visibility = ViewStates.Gone;
			}

			footerView = ((LayoutInflater)this.GetSystemService (Context.LayoutInflaterService)).Inflate (Resource.Layout.footer_loading_more, null, false);

			TCNotificationCenter.defaultCenter.addObserver (this, constants.kAddFavoriteSuccess, new TCSelector(updateSpecialistInfo));
			TCNotificationCenter.defaultCenter.addObserver (this, constants.kRemoveFavoriteSuccess, new TCSelector (updateSpecialistInfo));
		}

		public void updateSpecialistInfo(object notification)
		{
			this.RunOnUiThread (() => {
				FavoriteDTO fDTO = (FavoriteDTO)notification;
				SpecialistProfileInfos specialist = specialistProfiles.Find (x => x.Account.Id == fDTO.specialistId);
				if (specialist != null) {
					specialist.IsFavourite = fDTO.isFavorite;
				}
			});
		}

		IMenu menu;
		public override bool OnCreateOptionsMenu(IMenu menu)
		{
			base.OnCreateOptionsMenu (menu);
			MenuInflater inflater = this.MenuInflater;
			inflater.Inflate (Resource.Menu.menu_search_result, menu);
			this.menu = menu;
			this.menu.GetItem (0).SetEnabled (false);
			this.menu.GetItem (0).SetVisible (false);
			return true;
		}

		/// <param name="item">The menu item that was selected.</param>
		/// <summary>
		/// This hook is called whenever an item in your options menu is selected.
		/// </summary>
		/// <returns>To be added.</returns>
		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case Resource.Id.sort:
				//ShowDialog (1);
				sortPopup.ShowSortList (iSortIndex, null);
				break;
			case global::Android.Resource.Id.Home:
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kAddFavoriteSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kRemoveFavoriteSuccess);
				if (MApplication.getInstance ().isLoginAfterSearch) {
					MApplication.getInstance ().isLoginAfterSearch = false;
					Intent intent = new Intent (this, typeof(UserDashBoardMain));
					StartActivity (intent);
				}
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		public override void OnCreateContextMenu (IContextMenu menu, View v, IContextMenuContextMenuInfo menuInfo)
		{
			base.OnCreateContextMenu (menu, v, menuInfo);

			MenuInflater menuInflater = new MenuInflater (this);
			menuInflater.Inflate (Resource.Menu.contextmenu, menu);
		}

		public void OnScroll (AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount)
		{
			if (totalItemCount == 0 || searchSpecAdapter == null)
				return;
			if (iStartSearch == totalItemCount)
				return;
			if (totalItemCount < iStartSearch + iSizeResult)
				return;
			isLoadMore = firstVisibleItem + visibleItemCount >= totalItemCount;
			if (isLoadMore)
			{
				iStartSearch = totalItemCount;
				searchActivity.RunOnUiThread(() => {
					if(specListView.FooterViewsCount <= 0){
						specListView.AddFooterView (footerView);
					}
					getSpecialistProfilesRequest();
				});	
			}
		}
		public void OnScrollStateChanged (AbsListView view, ScrollState scrollState)
		{
			//throw new NotImplementedException ();
		}

		public void callSearch(int indexSort, IMenu menuDashboard){
			switch (indexSort) {
			case 0:
				strSortType = Constants.SortBy.ProximityASC.ToString ();
				break;
			case 1:
				strSortType = Constants.SortBy.ProximityDESC.ToString ();
				break;
			case 2:
				strSortType = Constants.SortBy.RateASC.ToString ();
				break;
			case 3:
				strSortType = Constants.SortBy.RateDESC.ToString ();
				break;
			case 4:
				strSortType = Constants.SortBy.Availability.ToString ();
				break;
			case 5:
				strSortType = Constants.SortBy.FeedbackASC.ToString ();
				break;
			case 6:
				strSortType = Constants.SortBy.FeedbackDESC.ToString ();
				break;
			case 7:
				strSortType = Constants.SortBy.NameASC.ToString ();
				break;
			case 8:
				strSortType = Constants.SortBy.NameDESC.ToString ();
				break;
			default:
				break;
			}

			if (searchActivity.menu == null) {
				if (menuDashboard != null) {
					searchActivity.menu = menuDashboard;
				}
			}

			strKeyWordSeach = searchView.Query;
			if (strKeyWordSeach.Equals (""))
				return;
			llProgress.Visibility = ViewStates.Visible;
			resetData();
			getSpecialistProfilesRequest ();
			inputManager.HideSoftInputFromWindow (searchView.WindowToken, 0);
			tvSearchResult.Visibility = ViewStates.Gone;
		}

		void OnListItemClick(object sender, AdapterView.ItemClickEventArgs e)
		{
			inputManager.HideSoftInputFromWindow (searchView.WindowToken, 0);
			searchView.ClearFocus ();
			iPosSelected = e.Position;
			constants.specialistInfo = specialistProfiles [e.Position];
			MApplication.getInstance().specialistID = constants.specialistInfo.Account.Id;
			Intent intent = new Intent(this, typeof(SpecialistDetailActivity));
			this.StartActivityForResult (intent, constants.EXIT_ACTIVITY);
		}

		private  void resetData(){
			tvSearchLimit.Visibility = ViewStates.Gone;
			iStartSearch = 0;
			specialistProfiles.Clear ();
			setHeadingTitle (Resource.String.search_title);
		}

		public bool OnQueryTextChange (string newText)
		{
			if(newText.Equals("")){
				resetData ();
				if (searchActivity != null) {
					if (searchActivity.menu != null) {
						searchActivity.menu.GetItem (0).SetEnabled (false);
						searchActivity.menu.GetItem (0).SetVisible(false);
					}

					searchSpecAdapter = new SearchResultAdpater (searchActivity, specialistProfiles);
					specListView.Adapter = searchSpecAdapter;
				}
			}
			return false;
		}

		public bool OnQueryTextSubmit (string query)
		{
			if(query.Trim().Length > 0){
				searchView.ClearFocus ();
				strKeyWordSeach = query;
				llProgress.Visibility = ViewStates.Visible;
				callSearch(iSortIndex, null);
			}
			return true;
		}

		private void getSpecialistProfilesRequest(){
			if (!isLoadMore) {
				setHeadingTitle (Resource.String.search_title);
				tvSearchLimit.Visibility = ViewStates.Gone;
			}

			if (searchActivity != null) {
				if (searchActivity.menu != null) {
					searchActivity.menu.GetItem (0).SetEnabled (false);
				}
			}
			Action<string> successful = (response => {
				searchActivity.RunOnUiThread(() => {
					setHeadingTitle (Resource.String.search_result_title);
					if (searchActivity != null) {
						if (searchActivity.menu != null) {
							searchActivity.menu.GetItem (0).SetEnabled (true);
							searchActivity.menu.GetItem (0).SetVisible(true);
						}
					}
					llProgress.Visibility = ViewStates.Gone;
					inputManager.HideSoftInputFromWindow (searchView.WindowToken, 0);
					searchView.ClearFocus ();
					if(specListView.FooterViewsCount > 0){
						specListView.RemoveFooterView (footerView);
					}

					SearchDTO searchDTO = ParseDataHelper.parseResponseSearchDTO(response);
					if(searchDTO != null){
						if(searchDTO.isLimitSearchResult){
							tvSearchLimit.Visibility = ViewStates.Visible;
						}

						specialistProfilesTemp = searchDTO.listSpecialistProfile;
						if(specialistProfilesTemp != null) {
							foreach(var specInfo in specialistProfilesTemp){
								specialistProfiles.Add(specInfo);
							}
							searchSpecAdapter = new SearchResultAdpater (searchActivity, specialistProfiles);
							specListView.Adapter = searchSpecAdapter;
							specListView.SetSelection(iStartSearch);
							if(specialistProfiles.Count() <= 1) {
								if (searchActivity != null) {
									if (searchActivity.menu != null) {
										searchActivity.menu.GetItem (0).SetEnabled (false);
										searchActivity.menu.GetItem (0).SetVisible(false);
									}
								}
							}
							if(specialistProfiles.Count() <= 0){
								if(!isLoadMore){
									tvSearchResult.SetText(Resource.String.no_result_search);
									tvSearchResult.Visibility = ViewStates.Visible;
								}
							}
						} else {
							if(!isLoadMore){
								tvSearchResult.SetText(Resource.String.no_result_search);
								tvSearchResult.Visibility = ViewStates.Visible;
							}
						}
					} else {
						if(!isLoadMore){
							tvSearchResult.SetText(Resource.String.no_result_search);
							tvSearchResult.Visibility = ViewStates.Visible;
						}
					}

					if(specialistProfiles.Count() <= 1) {
						if (searchActivity != null) {
							if (searchActivity.menu != null) {
								searchActivity.menu.GetItem (0).SetEnabled (false);
								searchActivity.menu.GetItem (0).SetVisible(false);
							}
						}
					}		

					isLoadMore = false;
				});	
			});

			Action<string> failure = (response => {
				searchActivity.RunOnUiThread(() => {
					if(isLoadMore){
						if (searchActivity != null) {
							if (searchActivity.menu != null) {
								searchActivity.menu.GetItem (0).SetEnabled (true);
							}
						}
						isLoadMore = false;
					} else {
						llProgress.Visibility = ViewStates.Gone;
						setHeadingTitle (Resource.String.search_result_title);
						if (searchActivity != null) {
							if (searchActivity.menu != null) {
								searchActivity.menu.GetItem (0).SetEnabled (true);
								searchActivity.menu.GetItem (0).SetVisible(false);
							}
						}
						tvSearchResult.Text = GetString(Resource.String.network_not_available);
						tvSearchResult.Visibility = ViewStates.Visible;
					}
				});
			});
			DataHelperRequest.getInstance ().getSpecialistProfileSearch (strKeyWordSeach, iSizeResult, iStartSearch,
				MApplication.getInstance().longitude, MApplication.getInstance().latitude, strSortType, successful, failure);
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			if (MApplication.getInstance ().isLogedIn) {
				constants.currentActivity = this;
			} else {
				constants.currentActivity = null;
				constants.currentActivityNotLogIn = this;
			}

			inputManager.HideSoftInputFromWindow (searchView.WindowToken, 0);

			if (constants.specialistInfo != null && specialistProfiles.Count() > 0) {
				specialistProfiles[iPosSelected] = constants.specialistInfo;
			}
		}

		protected override void OnPause()
		{
			base.OnPause();
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Menu) {
				return true;
			} else {
				return base.OnKeyUp (keyCode, e);
			}
		}

		public override void OnBackPressed ()
		{
			if (MApplication.getInstance ().isLogedIn) {
				if (MApplication.getInstance ().isLoginAfterSearch) {
					TCNotificationCenter.defaultCenter.removeObserver (this, constants.kAddFavoriteSuccess);
					TCNotificationCenter.defaultCenter.removeObserver (this, constants.kRemoveFavoriteSuccess);
					MApplication.getInstance ().isLoginAfterSearch = false;
					Intent intent = new Intent (this, typeof(UserDashBoardMain));
					StartActivity (intent);
					Finish ();
				} else {
					Intent intent = new Intent (Intent.ActionMain);
					intent.AddCategory (Intent.CategoryHome);
					intent.SetFlags (ActivityFlags.NewTask);
					StartActivity (intent);
				}
			} else {
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kAddFavoriteSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kRemoveFavoriteSuccess);
				base.OnBackPressed ();
			}
		}

		#region OnSortSelectedDelegate implementation

		public void onSelected (int pos, IMenu menuDashboard)
		{
			if(iSortIndex != pos) {
				callSearch (pos, menuDashboard);
				iSortIndex = pos;
			}
		}

		#endregion
	}
}