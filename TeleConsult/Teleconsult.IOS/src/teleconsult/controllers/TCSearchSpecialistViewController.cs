using System;
using System.Drawing;
using Foundation;
using UIKit;
using System.Collections.Generic;
using ObjCRuntime;
using CoreGraphics;
using System.Threading.Tasks;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchSpecialistViewController : TCCommonTemplateViewController, TCSearchHelperDelegate
	{
		public List<SpecialistProfileInfos> specialists  { get; set; }

		public TCResultView resultView;

		public bool isHideNoResult;

		public string stringSearch { get; set; }

		public bool isFromHomePage { get; set; }

		public bool isHideSortTable;

		public bool isNewSearch { get; set; }

		public int start  { get; set; }

		public int batchSize  { get; set; }

		private TCNavigationBar tcNavi;

		public TCSearchBarDelegate searchDelegate { get; set; }

		private NSDictionary currentSort;
		private CGRect frameTable;
		private TCSearchHelper searchHelper;

		public TCSearchSpecialistViewController (IntPtr handle) : base (handle)
		{
		}

		public UITableView getTableView ()
		{
			return this.tableView;
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			TCGlobals.getInstance.isAllowShowAlert = true;

			TCViewIdentity.getInstance.setObjectForKey ("TCSearchSpecialistViewController", this);
			TCNotificationCenter.defaultCenter.addObserver (this, MUtils.generateKeyFavorite (this), updateFavorite);
			TCNotificationCenter.defaultCenter.addObserver (this, MUtils.generateKeySearchSpecialist (this), updateSpecialistInfo);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostUpdateNavigationBarOfSearch, setUpAgainNavigationBar);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostSearchBarEmpty, searchBarEmpty);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostSearchExpertBeginClicked, beginSearch);
		
			loadingView = new TCLoadingOverlay (this, false, true);
			loadingView.build ();

			this.searchHelper = new TCSearchHelper (this);
			this.searchHelper.Delegate = this;

			this.resultView = TCResultView.Create ();
			this.resultView.Hidden = true;
			this.resultView.Frame = new CGRect (0.0f, 0.0f, this.viewResult.Frame.Width, this.viewResult.Frame.Height);
			this.resultView.buttonDimiss ().AddTarget (dismissKeyboard, UIControlEvent.TouchUpInside);
			this.resultView.setTextResult (TCLocalizabled.getText ("TextNoResultSpecialist"));

			this.viewResult.Add (this.resultView);
			if (!MApplication.getInstance ().isLogedIn) {
				this.searchBar.BecomeFirstResponder ();	
			}
				
			specialists = new List<SpecialistProfileInfos> ();
			resetBatchSize ();

			this.searchDelegate = new TCSearchBarDelegate (this);
			this.searchBar.Delegate = this.searchDelegate;
			this.searchBar.Placeholder = TCLocalizabled.getText ("TextPlaceholderSearch");
			this.searchBar.ReturnKeyType = UIReturnKeyType.Search;
			this.tableView.Source = new TCSearchTableViewSource (this);
			this.tableView.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
			this.tableView.RowHeight = 115.0f;

			decorateUI ();

			if (isFromHomePage && (stringSearch == null || stringSearch.Equals (""))) {
				showNoResultView ();
			} else {
				this.searchBar.Text = stringSearch;
				this.searchDelegate.SearchButtonClicked (this.searchBar);
			}

			this.currentSort = TCGlobals.getInstance.getSortTypes () [TCSortTable.currentIndexPath.Row];
		}

		public override void createNavigationBar ()
		{
			this.tcNavi = TCNavigationBar.DefaultBar (this);
			if (MApplication.getInstance ().isRequired) {
				this.tcNavi.build (true, true);
			} else {
				this.tcNavi.build (false, true);
			}

			tcNavi.showFilterButton ();

			if (!this.resultView.Hidden || this.specialists.Count > 0) {
				changeTitle (TCLocalizabled.getText ("TextTitleSearchResultSpecialist"));
			} else {
				changeTitle (TCLocalizabled.getText ("TitleScreenSearchSpecialist"));
				this.tcNavi.disableFilter ();
			}

			if (this.specialists.Count > 1) {
				this.tcNavi.enableFilter ();
			}
		}

		public void changeTitle (string text)
		{
			this.tcNavi.showTitle (text);
		}
			
		private void decorateUI ()
		{
			this.tcNavi = TCNavigationBar.DefaultBar (this);

			this.viewSearchBar.Layer.BorderWidth = 1.0f;
			this.viewSearchBar.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl).CGColor;
			this.lineWarning.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BorderControl);

			if (TCGlobals.getInstance.searchFromDashboard) {
				CGRect tFrameTable = this.tableView.Frame;
				this.tableView.Frame = new CGRect (tFrameTable.X, tFrameTable.Y, tFrameTable.Width, tFrameTable.Height - 45.0f);
			}

			this.frameTable = this.tableView.Frame;
		}

		private void showWarningManyResult (bool value)
		{
			this.lbWarningSearch.Hidden = !value;
			this.lineWarning.Hidden = !value;

			if (value) {
				this.tableView.Frame = new CGRect (this.frameTable.X, this.frameTable.Y + this.lbWarningSearch.Frame.Height, this.frameTable.Width, this.frameTable.Height - this.lbWarningSearch.Frame.Height);
			} else {
				this.tableView.Frame = frameTable;
			}
		}

		public override void goBack ()
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostSearchBarEmpty);
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostSearchExpertBeginClicked);

			if (!MApplication.getInstance ().isLogedIn) {
				this.NavigationController.PopViewController (true);		
			} else {
				this.PerformSegue ("FromSearchToMainTab", this);
			}
		}

		public string getSortType ()
		{
			string sortType = TCGlobals.getInstance.getSortTypes () [0].Keys [0].ToString ();

			if (this.currentSort != null)
				sortType = this.currentSort.Keys [0].ToString ();

			return sortType;
		}

		public void dismissKeyboard (object ob, EventArgs ev)
		{
			this.searchBar.ResignFirstResponder ();
		}

		public UISearchBar getSearchBar ()
		{
			return this.searchBar;
		}

		private void resetBatchSize ()
		{
			this.start = 0;
			this.batchSize = 10;
		}

		public void updateSortData (NSDictionary data)
		{
			this.currentSort = data;
			this.searchDelegate.SearchButtonClicked (this.searchBar);
		}

		public override void goFilter ()
		{
			this.searchBar.ResignFirstResponder ();
			TCSortTable tableSort = TCSortTable.Create ();
			tableSort.parentVC = this;
			this.NavigationController.View.AddSubview (tableSort);
		}

		private void showNoResultView ()
		{
			isHideNoResult = false;
			this.resultView.Hidden = false;
		}

		private void showLoading ()
		{
			this.loadingView.show ();
			this.tcNavi.setInteractFilter (false);
		}

		private void hideLoading ()
		{
			this.loadingView.dismiss ();
			this.tcNavi.setInteractFilter (true);
		}

		private void hideNoResultView ()
		{
			if (!isHideNoResult)
				this.resultView.Hidden = true;
			isHideNoResult = true;
		}

		private void syncResultData (SearchDTO searchDto)
		{
			this.InvokeOnMainThread (delegate {
				if (searchDto != null) {
					if (searchDto.listSpecialistProfile.Count != 0)
						hideNoResultView ();
					else
						showNoResultView ();

					if (this.isNewSearch) {
						specialists = searchDto.listSpecialistProfile; 
					} else {
						foreach (SpecialistProfileInfos speInfo in searchDto.listSpecialistProfile) {
							specialists.Add (speInfo);
						}
					}
				} else { 
					specialists = new List<SpecialistProfileInfos> ();
				}
			
				this.tableView.ReloadData ();
				hideLoading ();

				if (specialists.Count < 2) {
					this.tcNavi.disableFilter ();
				} else {
					this.tcNavi.enableFilter ();
				}
					
				if (searchDto != null && searchDto.isLimitSearchResult) {
					showWarningManyResult (true);
				} else {
					showWarningManyResult (false);
				}

				tcNavi.showTitle (TCLocalizabled.getText ("TextTitleSearchResultSpecialist"));

			});
		}

		public override void PrepareForSegue (UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue (segue, sender);

			if (segue.Identifier.Equals ("TCSpecialistProfileViewController2")) {
				var specialistProfileVC = (TCSpecialistProfileViewController)segue.DestinationViewController;
				var sCell = sender as TCSearchCellTemplate;
				specialistProfileVC.specialistInfo = sCell.data;
			}
		}

		#region TCNotification Local

		public void setUpAgainNavigationBar (object notification)
		{
			this.createNavigationBar ();
		}

		public void updateFavorite (object notification)
		{
			FavoriteDTO fDTO = (FavoriteDTO)notification;
			SpecialistProfileInfos specialist = this.specialists.Find (x => x.Account.Id == fDTO.specialistId);
			if (specialist != null)
				specialist.IsFavourite = fDTO.isFavorite;
		}

		public void updateSpecialistInfo (object notification)
		{
			SpecialistProfileInfos tSpecialist = (SpecialistProfileInfos)notification;
			SpecialistProfileInfos specialist = this.specialists.Find (x => x.Account.Id == tSpecialist.Account.Id);
			specialist.Proximity = tSpecialist.Proximity;
			specialist.isLoaded = tSpecialist.isLoaded;
			specialist.SpecialistDetail = tSpecialist.SpecialistDetail;

			this.tableView.ReloadData ();
		}
			
		public void searchBarEmpty (object notification)
		{
			this.specialists = new List<SpecialistProfileInfos> ();
			this.tableView.ReloadData ();
			this.showWarningManyResult (false);
			this.hideNoResultView ();
			this.hideLoading ();
			this.changeTitle (TCLocalizabled.getText ("TitleScreenSearchSpecialist"));
			this.tcNavi.disableFilter ();
		}

		public void beginSearch (object notification)
		{
			this.showLoading ();
			UISearchBar tSearchBar = (UISearchBar)notification;

			this.searchBar.ResignFirstResponder ();
			if (tSearchBar == null) {
				this.isNewSearch = false;
			} else {
				this.isNewSearch = true;
				this.resetBatchSize ();
			}
			if (this.searchBar.Text.Trim ().Length > 0) {
				this.searchHelper.search (this.searchBar.Text, this.getSortType (), this.start, this.batchSize);
			} else {
				this.specialists = new List<SpecialistProfileInfos> ();
				this.tableView.ReloadData ();
				this.hideNoResultView ();
				this.hideLoading ();
			}
		}

		#endregion

		#region TCSearchHelperDelegate

		public void beginSearchRequest (TCSearchHelper self)
		{
			showLoading ();
		}

		public void searchSuccess (TCSearchHelper self, SearchDTO result)
		{
			if (result == null || result.listSpecialistProfile == null || result.listSpecialistProfile.Count <= 0) {
				result = new SearchDTO ();
				result.listSpecialistProfile = new List<SpecialistProfileInfos> (); 
				result.isLimitSearchResult = false;

				this.showNoResultView ();
				
				if (this.searchBar.Text.Equals ("")) {
					this.hideNoResultView ();
				}
				
				this.hideLoading ();
			} else {
				if (!this.searchBar.Text.Equals ("")) {
					this.hideLoading ();
					this.hideNoResultView ();
				}
			}

			syncResultData (result);
		}

		public void searchFail (TCSearchHelper self)
		{
			MUtils.showNetworkFailed (this);
			this.start = this.specialists != null ? this.specialists.Count : 0;
		}

		public void finishSearchRequest (TCSearchHelper self)
		{
			hideLoading ();
		}

		#endregion

	}
}

