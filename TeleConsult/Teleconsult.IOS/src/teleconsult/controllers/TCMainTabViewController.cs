using System;
using System.Drawing;
using ObjCRuntime;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCMainTabViewController : UITabBarController, TCUpdateStatusHelperDelegate
	{
		public UIViewController currentVC { get; set; }

		private TCNavigationBar tcNavi;
		TCCommonTemplateViewController tab1, tab2, tab3, tab4, tab5;
		private UIButton btnStatus;
		private UIView viewStatus;
		private UILabel lbStatus;
		private TCLoadingOverlay loadingView;
		private CGRect frameStatus;
		public TCMainTabViewController (IntPtr handle) : base (handle)
		{
		}

		public override void  DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview. 
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			// Perform any additional setup after loading the view, typically from a nib.
			TCGlobals.getInstance.searchFromDashboard = true;
			NSNotificationCenter.DefaultCenter.AddObserver (new NSString (MConstants.kPostEnterForeground), WillEnterForeground);
			NSNotificationCenter.DefaultCenter.AddObserver (UIApplication.WillChangeStatusBarFrameNotification, updateFrameButtonStatus);
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostUpdateStatusExpert, updateStatusExpert);
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPushAvailabilityStatus, updateStatusExpert);

			MApplication.getInstance ().isRequired = false;

			TCViewIdentity.getInstance.setObjectForKey ("TCMainTabViewController", this);

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			decorateUI ();

			if (MApplication.getInstance ().isConsultant) {
				addBtnChangeStutus ();
				setStatus (MApplication.getInstance ().iExpertStatus);
			}

			this.loadingView = new TCLoadingOverlay (this, true, false);
			this.loadingView.build ();
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
			this.tcNavi = TCNavigationBar.DefaultBar (this);
			this.tcNavi.build (false, false);
			this.tcNavi.showTitle ("");

			if (this.SelectedViewController is TCSearchSpecialistViewController) {
				TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostUpdateNavigationBarOfSearch, null);
			}
		}

		#region Notificaiton Local

		void updateFrameButtonStatus (NSNotification notification)
		{
			NSValue rectValue = (NSValue)notification.UserInfo.ValueForKey (UIApplication.StatusBarFrameUserInfoKey);
			if (rectValue != null) {
				RectangleF newFrame = rectValue.RectangleFValue;
		
				CGRect frameStatus = this.viewStatus.Frame;
				frameStatus.Y = this.frameStatus.Y - (newFrame.Height - 20.0f);

				this.viewStatus.Frame = frameStatus;
			}
		}
			
		public void updateStatusExpert (object notificaiton)
		{
			this.InvokeOnMainThread (delegate {
				int status = int.Parse (notificaiton.ToString ());

				if (status != MApplication.getInstance ().iExpertStatus) {

					TCUpdateStatusHelper updateStatusHelper = new TCUpdateStatusHelper (this);
					updateStatusHelper.Delegate = this;
					updateStatusHelper.changeToStatus (MApplication.getInstance ().userId, status);
				} 
			});
		}

		#endregion

		#region TCUpdateStatusHelperDelegate

		public void changeStatusSuccess (TCUpdateStatusHelper helper, int newStatus)
		{
			MApplication.getInstance ().iExpertStatus = newStatus;
			setStatus (newStatus);
		}

		public void changeStatusFail (TCUpdateStatusHelper helper)
		{
			MUtils.showRequestFail (this);
		}

		public void beginchangeStatusRequest (TCUpdateStatusHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishchangeStatusRequest (TCUpdateStatusHelper helper)
		{
			this.loadingView.dismiss ();
		}

		#endregion

		private void setStatus (int status)
		{
			if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.Available) {
				this.btnStatus.SetImage (UIImage.FromBundle ("tabbar_available_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIControlState.Normal);
				this.lbStatus.Text = CoreSystem.Utils.getDescriptionEnum (CoreSystem.Constants.STATUS_CONSULTANT.Available);
			} else if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable) {
				this.btnStatus.SetImage (UIImage.FromBundle ("tabbar_maybe_available_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIControlState.Normal);
				this.lbStatus.Text = CoreSystem.Utils.getDescriptionEnum (CoreSystem.Constants.STATUS_CONSULTANT.MaybeAvailable);
			} else if (status == (int)CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable) {
				this.btnStatus.SetImage (UIImage.FromBundle ("tabbar_not_available_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIControlState.Normal);
				this.lbStatus.Text = CoreSystem.Utils.getDescriptionEnum (CoreSystem.Constants.STATUS_CONSULTANT.NotAvailable);
			}
		}

		private void WillEnterForeground (NSNotification notification)
		{
			CGRect fScreen = UIScreen.MainScreen.Bounds;
			TCLocationManager locationManager = TCLocationManager.getInstance ();
			locationManager.startUpdateLocation ();
		}

		private void decorateUI ()
		{
			this.TabBar.BarTintColor = UIColor.Black;
			this.TabBar.TintColor = UIColor.White;

			if (!MApplication.getInstance ().isConsultant) {
				tab2 = (TCSearchSpecialistViewController)this.Storyboard.InstantiateViewController ("TCSearchSpecialistViewController");
				tab3 = (TCListFavoriteViewController)this.Storyboard.InstantiateViewController ("TCListFavoriteViewController");
			}

			tab1 = (TCDashboardViewController)this.Storyboard.InstantiateViewController ("TCDashboardViewController");
			tab4 = (TCMyProfileViewController)this.Storyboard.InstantiateViewController ("TCMyProfileViewController");
			tab5 = (TCEmptyViewController)this.Storyboard.InstantiateViewController ("TCEmptyViewController");

			TCCommonTemplateViewController[] tabs;
			if (MApplication.getInstance ().isConsultant) {
				tabs = new TCCommonTemplateViewController[] { tab1, tab5, tab4 };
			} else {
				tabs = new TCCommonTemplateViewController[] { tab1, tab2, tab3, tab4 };
			}

			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostUpdateSizeSearchTable, null);

			this.ViewControllers = tabs;

			setColorForItem (this.ViewControllers.Length);
		}

		private void addBtnChangeStutus ()
		{
			UITabBarItem tabBarItem = this.TabBar.Items [1];
			tabBarItem.Enabled = false;

			CGRect fScreen = UIScreen.MainScreen.Bounds;
	
			nfloat Y = fScreen.Height - this.TabBar.Frame.Height;

			this.viewStatus = new UIView ();
			viewStatus.Frame = new CGRect (fScreen.Width / 3, Y, fScreen.Width / 3, this.TabBar.Frame.Height);
			viewStatus.BackgroundColor = UIColor.Clear;

			this.btnStatus = UIButton.FromType (UIButtonType.System);
			this.btnStatus.Frame = new CGRect (10.0f, 2.0f, viewStatus.Frame.Width - 20, viewStatus.Frame.Height - 4.0f);
			this.btnStatus.ImageEdgeInsets = new UIEdgeInsets (-13, 0, 0, 0);
			this.btnStatus.Layer.CornerRadius = 3.0f;
			this.btnStatus.BackgroundColor = UIColor.Clear;
			this.btnStatus.TouchDown += buttonHighlight;
			this.btnStatus.TouchUpOutside += buttonNormal;
			this.btnStatus.TouchUpInside += buttonNormal;
			this.btnStatus.BackgroundColor = UIColor.Clear;
			this.btnStatus.AddTarget ((sender, args) => {
				buttonStatusClicked ();
			}, UIControlEvent.TouchUpInside);

			this.lbStatus = new UILabel ();
			this.lbStatus.Frame = new CGRect (0.0f, 32.0f, viewStatus.Frame.Width, 21.0f);
			this.lbStatus.TextColor = UIColor.White;
			this.lbStatus.Font = MUtils.getFontWithSize (false, 10.5f);
			this.lbStatus.TextAlignment = UITextAlignment.Center;
			this.lbStatus.BackgroundColor = UIColor.Clear;

			this.viewStatus.AddSubview (this.btnStatus);
			this.viewStatus.AddSubview (this.lbStatus);
			this.View.AddSubview (this.viewStatus);

			this.frameStatus = this.viewStatus.Frame;
		}

		void buttonHighlight (object sender, EventArgs e)
		{
			this.btnStatus.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.HighlightButtonStatus);
		}

		void buttonNormal (object sender, EventArgs e)
		{
			this.btnStatus.BackgroundColor = UIColor.Clear;
		}

		private void buttonStatusClicked ()
		{
			TCChangeStatusViewController statusVC = (TCChangeStatusViewController)this.Storyboard.InstantiateViewController ("TCChangeStatusViewController");
	
			this.NavigationController.AddChildViewController (statusVC);
			this.NavigationController.View.AddSubview (statusVC.View);
		}

		private void setColorForItem (int numberItem)
		{
			if (!MApplication.getInstance ().isConsultant) {
				tab2.TabBarItem.SetFinishedImages (UIImage.FromBundle ("search_tabbar_select_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIImage.FromBundle ("search_tabbar_unselect_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal));
				tab3.TabBarItem.SetFinishedImages (UIImage.FromBundle ("favorite_tabbar_select_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIImage.FromBundle ("favorite_tabbar_unselect_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal));
			}

			tab1.TabBarItem.SetFinishedImages (UIImage.FromBundle ("home_tabbar_select_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIImage.FromBundle ("home_tabbar_unselect_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal));
			tab4.TabBarItem.SetFinishedImages (UIImage.FromBundle ("profile_tabbar_select_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal), UIImage.FromBundle ("profile_tabbar_unselect_icon").ImageWithRenderingMode (UIImageRenderingMode.AlwaysOriginal));

			for (int i = 0; i < numberItem; i++) {
				this.TabBar.Items [i].SetTitleTextAttributes (new UITextAttributes () {
					TextColor = UIColor.White
				}, UIControlState.Selected);
			}
		}

		public UITabBar getTabBar ()
		{
			return this.TabBar;
		}
	}
}

