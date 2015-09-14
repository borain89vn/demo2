using System;
using System.Drawing;
using Foundation;
using UIKit;
using Newtonsoft.Json.Linq;
using CoreSystem;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Collections.Generic;
using RestSharp;
using ObjCRuntime;
using Newtonsoft.Json;
using CoreGraphics;
using CoreAnimation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public abstract partial class TCBookingTemplateViewController : TCCommonTemplateViewController, TCRefreshTableDelegate
	{
	
		public RefreshTableHeaderView refreshHeaderView;

		public List<BookingInfo> bookingInfos { get; set; }

		public List<BookingEvent> bookingEvents { get; set; }
		public TCBookingTableViewSource bookingSource { get; set; }

		public TCDashboardViewController parentVC { get; set; }

		public NSObject observerSearch;

		public string badgeValue { get; set; }

		public TCBookingTemplateViewController (IntPtr handle) : base (handle)
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
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostRefreshAllBooking, new
				TCSelector (refreshBooking));

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}
				
			badgeValue = null;

			this.tableView.RowHeight = 55.0f;
			this.tableView.Frame = this.View.Frame;
			this.tableView.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
			refreshHeaderView = new RefreshTableHeaderView (this);
			refreshHeaderView.BackgroundColor = new UIColor (226f, 231f, 237f, 1f);

			this.tableView.AutoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleWidth;
			bookingSource = new TCBookingTableViewSource (this);
			bookingSource.Delegate = this;
			this.tableView.Source = bookingSource;

			this.tableView.AddSubview (refreshHeaderView);
		
			bookingInfos = new List<BookingInfo> ();
			bookingEvents = new List<BookingEvent> ();

			loadingView = new TCLoadingOverlay (this, true, false, false);
			loadingView.build ();

			loadingView.show ();
			syncData ();

		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
		}
			
		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (false, false);
			//tcNavi.showSearchButton ();
		}

		public override void PrepareForSegue (UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue (segue, sender);

			// do first a control on the Identifier for your segue
			UINavigationController naviVC = this.NavigationController;
			if (naviVC != null)
				naviVC.NavigationBar.Hidden = false;
		}

		public void syncData ()
		{
			Action<string> successful = (response => {
				#if DEBUG 
				Console.Out.WriteLine (typeBooking ().ToString () + " : " + response);
				#endif
		
				if (typeBooking () == CoreSystem.Constants.LISTTYPE.ALERTS) {
					bookingEvents = CoreSystem.ParseDataHelper.parseDataListEvents (response);
					if(bookingEvents == null) {
						badgeValue = null;
						this.InvokeOnMainThread (delegate {
							showAlertGetNoData(this);
						});
					} else if (bookingEvents.Count > 0){
						badgeValue = "" + bookingEvents.Count;
					} else {
						badgeValue = null;
					}
				} else {
					bookingInfos = CoreSystem.ParseDataHelper.parseDataListBookingInfos (response);
					if(bookingInfos == null) {
						badgeValue = null;
						this.InvokeOnMainThread (delegate {
							showAlertGetNoData(this);
						});
					} else if (bookingInfos.Count > 0){
						badgeValue = "" + bookingInfos.Count;
					} else {
						badgeValue = null;
					}
				} 

				this.InvokeOnMainThread (delegate {
					if (this.GetType() != typeof(TCBookingPastViewController)) {
						this.parentVC.setBadgeValue (this, this.badgeValue);
					}

					updateUI ();
					loadingView.dismiss ();
				});
					
				TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyRefreshTable(this), null);
			});

			Action<string> failure = (response => {
				this.InvokeOnMainThread (delegate {
					updateUI ();
					loadingView.dismiss ();
					TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyRefreshTable(this), null);
				});
			});

			DataHelperRequest.getInstance ().getListBookingInfos (MApplication.getInstance ().userId, MApplication.getInstance ().isConsultant, (int)typeBooking (), successful, failure);

		}

		private void showAlertGetNoData(TCBookingTemplateViewController controller)
		{
			string title = "";

			if (controller is TCBookingAlertViewController) {
				title = TCLocalizabled.getText("TextAlertTitleBookingAlert");
			} else if (controller is TCBookingRequestViewController) {
				title = TCLocalizabled.getText("TextAlertTitleBookingRequest");
			} else if (controller is TCBookingConfirmedViewController) {
				title = TCLocalizabled.getText("TextAlertTitleBookingComfirm");
			} else if (controller is TCBookingPastViewController) {
				title = TCLocalizabled.getText("TextAlertTitleBookingPast");
			}

			MUtils.showAlert (controller, title, TCLocalizabled.getText("TextMessageNotReceiveConfig"));
		}

		public abstract CoreSystem.Constants.LISTTYPE typeBooking ();

		public abstract void updateUI ();

		#region notificaiton local
		public void refreshBooking (object notification)
		{
			this.loadingView.show ();
			this.syncData ();
		}

		#endregion

		#region TCConsultationDelegate
		public virtual	void beginSendRequest() 
		{
			this.loadingView.show();
		}

		public	virtual void sendRequestSuccess()
		{
			this.NavigationController.PopViewController (true);
		}
		public virtual void sendRequestFail()
		{
			this.loadingView.dismiss ();
		}
		#endregion

		#region TCRefreshTableDelegate
		public void refreshBegin()
		{
			syncData();
		}
		#endregion
	}
}

