using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCDashboardViewController : TCCommonTemplateViewController
	{
		public int currentItemIndex { get; set;} 
		TCBookingAlertViewController alertPage;
		TCBookingConfirmedViewController confirmedPage;
		TCBookingRequestViewController requestPage;
		TCBookingPastViewController pastPage;

		public TCDashboardViewController (IntPtr handle) : base (handle)
		{

		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyAlertChange, new
				TCSelector (refreshAllBooking));

			this.tabBar.Delegate = new TCTabBarDelegate (this);

			getNumberBooking ();
			loadAlertPage ();
			decorateUI ();
		}

		#region signalR
		public void refreshAllBooking (object notification)
		{
			this.InvokeOnMainThread (delegate {

				refreshNumberBooking ();

				TCNotificationCenter.defaultCenter.postNotification(MConstants.kPostRefreshAllBooking, null);
			});
		}
			
		private void refreshNumberBooking ()
		{
			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController") == null
				|| TCViewIdentity.getInstance.getObjectForKey ("TCBookingAlertViewController") == null
				|| TCViewIdentity.getInstance.getObjectForKey ("TCBookingConfirmedViewController") == null
				|| TCViewIdentity.getInstance.getObjectForKey ("TCBookingRequestViewController") == null) {

				getNumberBooking ();
			} 
		}
		#endregion
		private void getNumberBooking()
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif
				this.InvokeOnMainThread (delegate {
					BookingNumber bookingNumber = CoreSystem.ParseDataHelper.parseResponseBookingNumber (response);

					if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingAlertViewController") == null) {
						setBadgeValue("ALERTS", bookingNumber.alert);
					}
					if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingRequestViewController") == null) {
						setBadgeValue("REQUESTS", bookingNumber.request);
					}
					if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingConfirmedViewController") == null) {
						setBadgeValue("CONFIRMED", bookingNumber.confirmed);
					}
					if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController") == null) {
						setBadgeValue("PAST", bookingNumber.past);
					}

				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.InvokeOnMainThread (delegate {
					getNumberBooking();
				});
			});

			DataHelperRequest.getInstance ().getBookingNumber (successful, failure);
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (false, null, false);
		}

		public UITabBar getTabBar()
		{
			return this.tabBar;
		}
			
		private void decorateUI()
		{

			this.tabBar.BarTintColor = UIColor.White;

			for (int i = 0; i < 4; i++) {
				this.tabBar.Items[i].SetTitleTextAttributes (new UITextAttributes () {
					TextColor = UIColor.Black
				}, UIControlState.Normal);

				this.tabBar.Items[i].SetTitleTextAttributes (new UITextAttributes () {
					TextColor = TCTheme.getInstance.getThemeColor(Theme.Header)
				}, UIControlState.Selected);
			}

			this.tabBar.SelectedItem = this.tabBar.Items [0];
		}

		public override void goSearch()
		{
			Console.Out.WriteLine ("goSearch");
		}
			
		public void setBadgeValue(TCBookingTemplateViewController vc, string value)
		{
			string title = "";
			int index = 0;
			if (vc is TCBookingAlertViewController) {
				title = "ALERTS";
				index = 0;
			} else if (vc is TCBookingRequestViewController) {
				title = "REQUESTS";
				index = 1;
			} else if (vc is TCBookingConfirmedViewController) {
				title = "CONFIRMED";
				index = 2;
			} else if (vc is TCBookingPastViewController) {
				title = "PAST";
				index = 3;	
			}

			if (value == null) {
				value = "0";
			} 
			title += " (" + value + ")";

			this.tabBar.Items [index].Title = title;
		}

		public void setBadgeValue(string key, int value)
		{
			string title = "";
			int index = 0;
			if (key.Equals("ALERTS")) {
				index = 0;
			} else if (key.Equals("REQUESTS")) {
				index = 1;
			} else if (key.Equals("CONFIRMED")) {
				index = 2;
			} else if (key.Equals("PAST")) {
				index = 3;	
			}
				
			title = key + " (" + value + ")";
		
			this.tabBar.Items [index].Title = title;
		}

		private void showLine(int index)
		{
			if (index == 0) {
				this.lineAlert.Hidden = false;
				this.lineConfirm.Hidden = true;
				this.lineRequest.Hidden = true;
				this.linePast.Hidden = true;
			} else if (index == 1) {
				this.lineAlert.Hidden = true;
				this.lineConfirm.Hidden = true;
				this.lineRequest.Hidden = false;
				this.linePast.Hidden = true;
			} else if (index == 2) {
				this.lineAlert.Hidden = true;
				this.lineConfirm.Hidden = false;
				this.lineRequest.Hidden = true;
				this.linePast.Hidden = true;
			} else {
				this.lineAlert.Hidden = true;
				this.lineConfirm.Hidden = true;
				this.lineRequest.Hidden = true;
				this.linePast.Hidden = false;
			}
		}

		public void loadAlertPage()
		{
			currentItemIndex = 1;
			showLine (0);
			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingAlertViewController") != null) {
				this.alertPage = (TCBookingAlertViewController)TCViewIdentity.getInstance.getObjectForKey ("TCBookingAlertViewController");
			} else {
				this.alertPage = (TCBookingAlertViewController)this.Storyboard.InstantiateViewController ("TCBookingAlertViewController");
				this.alertPage.parentVC = this;
				this.alertPage.View.Frame = getFrameForSubView ();

				TCViewIdentity.getInstance.setObjectForKey ("TCBookingAlertViewController", this.alertPage);
			}

			this.AddChildViewController (this.alertPage);
			this.bodyView.AddSubview (this.alertPage.View);
		}		
		public void loadConfirmedPage()
		{
			currentItemIndex = 3;
			showLine (2);
			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingConfirmedViewController") != null) {
				this.confirmedPage = (TCBookingConfirmedViewController)TCViewIdentity.getInstance.getObjectForKey ("TCBookingConfirmedViewController");
			} else {
				this.confirmedPage = (TCBookingConfirmedViewController)this.Storyboard.InstantiateViewController ("TCBookingConfirmedViewController");
				this.confirmedPage.parentVC = this;
				this.confirmedPage.View.Frame = getFrameForSubView ();

				TCViewIdentity.getInstance.setObjectForKey ("TCBookingConfirmedViewController", this.confirmedPage);
			}
				
			this.AddChildViewController (this.confirmedPage);
			this.bodyView.AddSubview (this.confirmedPage.View);
		}

		public void loadRequestPage()
		{
			currentItemIndex = 2;
			showLine (1);
			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingRequestViewController") != null) {
				this.requestPage = (TCBookingRequestViewController)TCViewIdentity.getInstance.getObjectForKey ("TCBookingRequestViewController");
			} else {
				this.requestPage = (TCBookingRequestViewController)this.Storyboard.InstantiateViewController ("TCBookingRequestViewController");
				this.requestPage.parentVC = this;
				this.requestPage.View.Frame = getFrameForSubView ();

				TCViewIdentity.getInstance.setObjectForKey ("TCBookingRequestViewController", this.requestPage);
			}
				
			this.AddChildViewController (this.requestPage);
			this.bodyView.AddSubview (this.requestPage.View);
		}

		public void loadPastPage()
		{
			currentItemIndex = 4;
			showLine (3);
			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController") != null) {
				this.pastPage = (TCBookingPastViewController)TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController");
			} else {
				this.pastPage = (TCBookingPastViewController)this.Storyboard.InstantiateViewController ("TCBookingPastViewController");
				this.pastPage.parentVC = this;
				this.pastPage.View.Frame = getFrameForSubView ();

				TCViewIdentity.getInstance.setObjectForKey ("TCBookingPastViewController", this.pastPage);
			}
				
			this.AddChildViewController (this.pastPage);
			this.bodyView.AddSubview (this.pastPage.View);
		}

		public void removeAlertPage()
		{
			this.alertPage.View.RemoveFromSuperview ();
			this.alertPage.RemoveFromParentViewController ();
		}
		public void removeRequestPage()
		{
			this.requestPage.View.RemoveFromSuperview ();
			this.requestPage.RemoveFromParentViewController ();
		}
		public void removeConfirmedPage()
		{
			this.confirmedPage.View.RemoveFromSuperview ();
			this.confirmedPage.RemoveFromParentViewController ();
		}
		public void removePastPage()
		{
			this.pastPage.View.RemoveFromSuperview ();
			this.pastPage.RemoveFromParentViewController ();
		}


		private CGRect getFrameForSubView()
		{
			CGRect tFrame = this.bodyView.Frame;
			tFrame.X = 0;
			tFrame.Y = 0;

			return tFrame;
		}
	}

	[CLSCompliant (false)]
	public class TCTabBarDelegate : UITabBarDelegate
	{
		TCDashboardViewController controller; 

		public TCTabBarDelegate(TCDashboardViewController controller)
		{
			this.controller = controller;
		}

		public override void ItemSelected (UITabBar tabbar, UITabBarItem item)
		{
			removeCurrentView (this.controller.currentItemIndex);
			if (tabbar.SelectedItem.Tag == 1) {
				this.controller.loadAlertPage ();
			} else if (tabbar.SelectedItem.Tag == 2) {
				this.controller.loadRequestPage ();
			} else if (tabbar.SelectedItem.Tag == 3) {
				this.controller.loadConfirmedPage ();
			} else if (tabbar.SelectedItem.Tag == 4) {
				this.controller.loadPastPage ();
			}
		}
			
		private void removeCurrentView(int tag)
		{
			switch (tag) {
			case 1:
				this.controller.removeAlertPage ();
				break;
			case 2:
				this.controller.removeRequestPage ();
				break;
			case 3:
				this.controller.removeConfirmedPage ();
				break;
			case 4:
				this.controller.removePastPage ();
				break;
			default :
				break;
			}
		}
	}
}

