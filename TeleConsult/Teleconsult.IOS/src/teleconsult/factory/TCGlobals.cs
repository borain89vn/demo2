using System;
using Foundation;
using System.Collections.Generic;
using CoreSystem;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCGlobals
	{
		static TCGlobals instance;
		private List<NSDictionary> sortTypes;
		public bool searchFromDashboard { get; set; }
		public string deviceToken { get; set; }
		public string accessToken { get; set; }
		public string myEmail { get; set; }
		public bool isWatingLogin { get; set; }
		public bool isAllowShowAlert { get; set; }
		public bool isAddObserverSplash { get; set; } 
		public TCCommonTemplateViewController currentVC { get; set; }
		public TCSignalRClient currentSignalR { get; set; }
		public bool isNoGetConfiged { get; set; }
		public bool isAtScreenConfig { get; set; }

		public TCGlobals ()
		{
			sortTypes = createListSort ();
		}

		public static TCGlobals getInstance
		{
			get {
				if (instance == null) {
					instance = new TCGlobals ();
					instance.accessToken = "";
					instance.myEmail = "";
					instance.isNoGetConfiged = true;
				}

				return instance;
			}
		}
			
		public List<NSDictionary> getSortTypes()
		{
			return this.sortTypes;
		}

		private List<NSDictionary> createListSort() {
			List<NSDictionary> list = new List<NSDictionary> ();
			list.Add (new NSDictionary("ProximityASC","Proximity - Closest to Furthest"));
			list.Add (new NSDictionary("ProximityDESC","Proximity - Furthest to Closest"));
			list.Add (new NSDictionary("RateASC","Rate - Lowest to Highest"));
			list.Add (new NSDictionary("RateDESC","Rate - Highest to Lowest"));
			list.Add (new NSDictionary ("Availability", "Availability"));
			list.Add (new NSDictionary("FeedbackASC","Feedback - Low to High"));
			list.Add (new NSDictionary("FeedbackDESC","Feedback - High to Low"));
			list.Add (new NSDictionary("NameASC","Name - A to Z"));
			list.Add (new NSDictionary("NameDESC","Name - Z to A"));

			return list;
		}

		public List<NSDictionary> createListStatus() {
			List<NSDictionary> list = new List<NSDictionary> ();
			list.Add (new NSDictionary(((int)CoreSystem.Constants.STATUS_CONSULTANT.Available).ToString(),CoreSystem.Utils.getDescriptionEnum(CoreSystem.Constants.STATUS_CONSULTANT.Available)));
			list.Add (new NSDictionary(((int)CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable).ToString(),CoreSystem.Utils.getDescriptionEnum(CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable)));
			list.Add (new NSDictionary(((int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable).ToString(),CoreSystem.Utils.getDescriptionEnum(CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable)));
	
			return list;
		}

		// Sign Out
		public void signOut(UIStoryboard storyBoard)
		{
			MApplication.getInstance ().isLogedIn = false;
			TCGlobals.getInstance.isAllowShowAlert = false;
			TCNotificationCenter.defaultCenter.observers.Clear ();
			MApplication.getInstance ().isConnectedSignalR = false;
			UIApplication.SharedApplication.NetworkActivityIndicatorVisible = false;

			new System.Threading.Thread (new System.Threading.ThreadStart (() => {
				if (TCGlobals.getInstance.currentSignalR != null)
					TCGlobals.getInstance.currentSignalR.stop ();
			})).Start ();
				
			TCLogOutHelper logoutHelper = new TCLogOutHelper (UIApplication.SharedApplication.KeyWindow.RootViewController);
			logoutHelper.logOut ();

			TCViewIdentity.getInstance.setObjectForKey ("TCMainTabViewController", null);

			TCViewIdentity.getInstance.setObjectForKey ("TCBookingAlertViewController", null);
			TCViewIdentity.getInstance.setObjectForKey ("TCBookingConfirmedViewController", null);
			TCViewIdentity.getInstance.setObjectForKey ("TCBookingPastViewController", null);
			TCViewIdentity.getInstance.setObjectForKey ("TCBookingRequestViewController", null);

			TCSortTable.currentIndexPath = NSIndexPath.FromRowSection (0, 0);

			CoreSystem.Utils.keepAccessToken ("");
			CoreSystem.Utils.keepEmail ("");
			TCGlobals.getInstance.accessToken = "";

			MApplication.getInstance ().isRequired = true;

			MApplication.getInstance ().userId = Guid.Empty;


			TCGlobals.getInstance.isAddObserverSplash = false;
			TCGlobals.getInstance.searchFromDashboard = false;
			TCGlobals.getInstance.myEmail = "";
		
			TCHomeViewController homeVC = (TCHomeViewController)storyBoard.InstantiateViewController ("TCHomeViewController");
			UINavigationController rootVC = new UINavigationController ();
			rootVC.SetViewControllers (new UIViewController[] { homeVC }, true);

			UIApplication.SharedApplication.Delegate.GetWindow ().RootViewController = rootVC;
			UIApplication.SharedApplication.Delegate.GetWindow ().MakeKeyAndVisible ();

			if (TCViewIdentity.getInstance.getObjectForKey ("TCMainTabViewController") != null) {
				TCMainTabViewController mainVC = (TCMainTabViewController)TCViewIdentity.getInstance.getObjectForKey ("TCMainTabViewController");
				mainVC.Dispose();
			}

			if (TCViewIdentity.getInstance.getObjectForKey ("TCSplashScreenViewController") != null && !TCGlobals.getInstance.isAddObserverSplash) {
				TCSplashScreenViewController splashScreenVC = (TCSplashScreenViewController)TCViewIdentity.getInstance.getObjectForKey ("TCSplashScreenViewController");
				splashScreenVC.addObserverNetwork ();
			}

		}
	}
}

