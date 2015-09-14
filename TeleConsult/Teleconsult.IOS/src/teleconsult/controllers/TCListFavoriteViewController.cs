using System;
using System.Drawing;
using Foundation;
using UIKit;
using ObjCRuntime;
using System.Collections.Generic;
using CoreSystem;
using Newtonsoft.Json;
using System.Runtime.Serialization.Json;
using System.IO;
using RestSharp;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCListFavoriteViewController : TCCommonTemplateViewController, TCRefreshTableDelegate
	{
		public List<SpecialistProfileInfos> specialists  { get; set; }
		public TCResultView resultView;
		private bool isLoading;

		public TCListFavoriteViewController (IntPtr handle) : base (handle)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}
		
			TCViewIdentity.getInstance.setObjectForKey ("TCListFavoriteViewController", this);
			TCNotificationCenter.defaultCenter.addObserver (this, MUtils.generateKeyFavorite(this), changeListFavorite);
			this.specialists = new List<SpecialistProfileInfos> ();

			loadingView = new TCLoadingOverlay (this, true, false);
			loadingView.build ();

			this.tableView.RowHeight = 115.0f;
			this.tableView.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
			this.tableView.Source = new TCFavoriteTableViewSource (this);;

			this.resultView = TCResultView.Create ();
			this.resultView.setTextResult (TCLocalizabled.getText("TextNoDataListFavorite"));
			this.resultView.Hidden = true;
			this.resultView.Frame = new CGRect (0.0f, 0.0f, this.viewResult.Frame.Width, this.viewResult.Frame.Height);
			this.viewResult.Add (this.resultView);
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
			if (!MApplication.getInstance ().isConsultant) {
				loadingView.show();
				getListFavorite ();
			}
		}
			
		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (false, false);
		}

		public void changeListFavorite (object notification)
		{
			getListFavorite ();
		}

		public UITableView getTableView()
		{
			return this.tableView;
		}

		public override void PrepareForSegue (UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue (segue, sender);

			if (segue.Identifier.Equals ("TCFavoriteToSpecialistProfileViewController")) {
				var specialistProfileVC = (TCSpecialistProfileViewController)segue.DestinationViewController;
				var sCell = sender as TCSearchCellTemplate;
				specialistProfileVC.specialistInfo = sCell.data;
			}
		}

		private void updateUI()
		{
			this.InvokeOnMainThread (delegate {
				this.isLoading = false;

				if(this.specialists != null && this.specialists.Count > 0) {
					this.resultView.Hidden = true;
					this.tableView.ReloadData();
				} else {
					this.resultView.Hidden = false;
				}
				loadingView.dismiss();
			});
		}

		private void getListFavorite ()
		{
			if (this.isLoading == false) {
				this.isLoading = true;
				this.loadingView.show ();
			
				Action<string> successful = (response => {
					this.specialists = CoreSystem.ParseDataHelper.parseDataSpecialistProfilesSearch (response);
					if (this.specialists == null) {
						getListFavorite ();
					} else {
						updateUI ();
					}
					TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyRefreshTable (this), null);
				});

				Action<string> failure = (response => {
					#if DEBUG
					Console.WriteLine ("FAILURE");
					#endif
					getListFavorite ();
				});

				if (!TCLocationManager.getInstance ().isEnableLocation ()) {
					MApplication.getInstance ().longitude = 0.0f;
					MApplication.getInstance ().latitude = 0.0f;
				}

				DataHelperRequest.getInstance ().getListFavorites (MApplication.getInstance ().longitude, MApplication.getInstance ().latitude, successful, failure);
			}
		}

		#region TCRefreshTableDelegate
		public void refreshBegin()
		{
			getListFavorite();
		}
		#endregion
	}
}

