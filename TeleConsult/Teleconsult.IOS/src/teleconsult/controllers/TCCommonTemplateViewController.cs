using System;
using System.Drawing;
using ObjCRuntime;
using Foundation;
using UIKit;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public abstract partial class TCCommonTemplateViewController : UIViewController
	{
		public TCLoadingOverlay loadingView;

		public delegate void HandlerGoBack ();

		public delegate void HandlerGoFilter ();

		public delegate void HandlerActionHistory ();

		public delegate void HandlerGoSearch ();

		public HandlerActionHistory handlerActionHistory { get; set; }

		public HandlerGoSearch handlerGoSearch { get; set; }

		public HandlerGoBack handlerGoBack { get; set; }

		public HandlerGoFilter handlerGoFilter { get; set; }

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCCommonTemplateViewController (IntPtr handle) : base (handle)
		{
		}

		public TCCommonTemplateViewController (string nibName, NSBundle bundle) : base (nibName, bundle)
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
			TCNotificationCenter.defaultCenter.addObserver(this, CoreSystem.Constants.kNetworkNotAvailable, networkOff);
			NSNotificationCenter.DefaultCenter.AddObserver (new NSString (MConstants.kPostEnterForeground), WillEnterForeground);

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			this.View.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);

			this.handlerActionHistory = goActionHistory;
			this.handlerGoBack = goBack;
			this.handlerGoSearch = goSearch;
			this.handlerGoFilter = goFilter;
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
			TCGlobals.getInstance.currentVC = this;
			setLocalizationForControls ();
			createNavigationBar ();
		}

		private void WillEnterForeground (NSNotification notification)
		{
			if (this.loadingView != null) {
				this.loadingView.dismiss ();
			}
		}

		public virtual void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, false);
		}

		public void networkOff (object data)
		{
			if (this.loadingView != null) {
				this.loadingView.dismiss ();
			}
		}

		public virtual void goActionHistory ()
		{

		}

		public virtual void goBack ()
		{
			if (this.NavigationController != null) {
				this.NavigationController.PopViewController (true);
			} else {
				UINavigationController root = (UINavigationController)UIApplication.SharedApplication.KeyWindow.RootViewController;
				root.PopViewController (true);
			}
		}

		public virtual void goSearch ()
		{

		}

		public virtual void goFilter ()
		{
			Console.Out.WriteLine ("goFilter");
		}

		public virtual void setLocalizationForControls ()
		{

		}
	}

	[CLSCompliant (false)]
	public class TCNavigationBar: NSObject
	{
		public UIViewController controller;

		private UIButton backBarButton;
		private UIButton filterBarButton;
		private UIButton searchBarButton;
		private UIButton actionHistoryBarButton;

		private UIImageView logo;
		private UIView lineBar;
		private UILabel lbTitle;
		static TCNavigationBar instance;

		public TCNavigationBar ()
		{

		}

		public TCNavigationBar (UIViewController controller)
		{
			this.controller = controller;

			configBar ();
		}

		private UIButton createBackButton ()
		{
			UIButton backButton = UIButton.FromType (UIButtonType.System);
			backButton.SetImage (UIImage.FromBundle ("back_navigationbar_icon"), UIControlState.Normal);
			backButton.AddTarget ((sender, args) => {
				if (this.controller != null) {
					if (this.controller is TCCommonTemplateViewController) {
						TCCommonTemplateViewController tController = (TCCommonTemplateViewController)this.controller;
						if (tController.handlerGoBack != null)
							tController.handlerGoBack ();
					} else {
						NSNotificationCenter.DefaultCenter.PostNotificationName (new NSString ("BarButtonBackClicked"), null);
					}
				}
			}, UIControlEvent.TouchUpInside);
			backButton.Frame = new CGRect (-3, -3, 50, 50);
			backButton.TintColor = TCTheme.getInstance.getThemeColor (Theme.BarItem);

			return backButton;
		}

		private UIButton createFilterButton ()
		{
			UIButton filterButton = UIButton.FromType (UIButtonType.System);
			filterButton.SetImage (UIImage.FromBundle ("search_filter_icon"), UIControlState.Normal);
			filterButton.AddTarget ((sender, args) => {
				if (this.controller != null) {
					if (this.controller is TCCommonTemplateViewController) {
						TCCommonTemplateViewController tController = (TCCommonTemplateViewController)this.controller;
						if (tController.handlerGoFilter != null)
							tController.handlerGoFilter ();
					} else {
						NSNotificationCenter.DefaultCenter.PostNotificationName (new NSString ("BarButtonFilterClicked"), null);
					}
				}
			}, UIControlEvent.TouchUpInside);
			filterButton.Frame = new CGRect (275, -3, 50, 50);
			filterButton.TintColor = TCTheme.getInstance.getThemeColor (Theme.BarItem);

			return filterButton;
		}

		private UIButton createSearchButton ()
		{
			UIButton searchButton = UIButton.FromType (UIButtonType.System);
			searchButton.SetImage (UIImage.FromBundle ("search_navigationbar_icon"), UIControlState.Normal);
			searchButton.AddTarget ((sender, args) => {
				if (this.controller != null) {
					if (this.controller is TCCommonTemplateViewController) {
						TCCommonTemplateViewController tController = (TCCommonTemplateViewController)this.controller;
						if (tController.handlerGoSearch != null)
							tController.handlerGoSearch ();
					} else {
						NSNotificationCenter.DefaultCenter.PostNotificationName (new NSString ("BarButtonSearchClicked"), null);
					}
				}
			}, UIControlEvent.TouchUpInside);
			searchButton.Frame = new CGRect (275, -3, 50, 50);
			searchButton.TintColor = TCTheme.getInstance.getThemeColor (Theme.BarItem);

			return searchButton;
		}

		private UIButton createActionHistory ()
		{
			UIButton btnActionHistory = UIButton.FromType (UIButtonType.System);
			btnActionHistory.SetImage (UIImage.FromBundle ("action_navigationbar_icon"), UIControlState.Normal);
			btnActionHistory.AddTarget ((sender, args) => {
				if (this.controller != null) {
					if (this.controller is TCCommonTemplateViewController) {
						TCCommonTemplateViewController tController = (TCCommonTemplateViewController)this.controller;
						if (tController.handlerActionHistory != null)
							tController.handlerActionHistory ();
					} else {
						NSNotificationCenter.DefaultCenter.PostNotificationName (new NSString ("BarButtonActionHistoryClicked"), null);
					}
				}
			}, UIControlEvent.TouchUpInside);

			btnActionHistory.Frame = new CGRect (275, -3, 50, 50);
			btnActionHistory.TintColor = TCTheme.getInstance.getThemeColor (Theme.BarItem);

			return btnActionHistory;
		}

		public static TCNavigationBar DefaultBar (UIViewController controller)
		{
			if (instance == null)
				instance = new TCNavigationBar (controller);
			else {
				instance.controller = controller;
			}

			return instance;
		}

		public void disableFilter()
		{
			if (this.filterBarButton != null) {
				this.filterBarButton.Hidden = true;
				this.filterBarButton.UserInteractionEnabled = false;
			}
		}

		public void setInteractFilter(bool value)
		{
			if (this.filterBarButton != null) {
				this.filterBarButton.UserInteractionEnabled = value;
			}
		}

		public void enableFilter()
		{
			if (this.filterBarButton != null) {
				this.filterBarButton.Hidden = false;
				this.filterBarButton.UserInteractionEnabled = true;
			}
		}
			
		public void build (bool back, bool customBar)
		{
			build (back, null, customBar);
		}

		public void build (bool back, string title, bool customBar)
		{
			if (this.controller.NavigationController != null) {

				title = (title == null ? "" : title);
				this.controller.NavigationController.NavigationBar.BarTintColor = UIColor.White;  
				this.controller.NavigationController.NavigationBar.TintColor = UIColor.Clear;
				this.controller.NavigationItem.HidesBackButton = true;
				if (customBar) {
					setCustomFrameBar ();
				} 	else {
					setDefaultFrameBar ();
				}
				this.controller.NavigationController.NavigationBar.AddSubview (this.lbTitle);
				this.controller.NavigationController.NavigationBar.AddSubview (this.lineBar);
				this.controller.NavigationController.NavigationBar.AddSubview (this.logo);

				if (back) {
					showBackButton ();
				} else {
					hideBackButton ();
				} 

				if (title != null) {
					showTitle (title);
				} else {
					hideTitle ();
				}

				hideSearchButton ();
				hideActionHistory ();
				hideFilterButton ();
			}
		}

		public void hideBackButton ()
		{
			if (this.backBarButton != null)
				this.backBarButton.RemoveFromSuperview ();
		}

		public void hideSearchButton ()
		{
			if (this.searchBarButton != null)
				this.searchBarButton.RemoveFromSuperview ();
		}

		public void hideFilterButton ()
		{
			if (this.filterBarButton != null)
				this.filterBarButton.RemoveFromSuperview ();
		}

		public void hideActionHistory ()
		{
			if (this.actionHistoryBarButton != null)
				this.actionHistoryBarButton.RemoveFromSuperview ();
		}

		public void showBackButton ()
		{
			if (this.backBarButton != null) {
				this.backBarButton.RemoveFromSuperview ();
			}

			this.backBarButton = createBackButton ();

			if (this.controller.NavigationController != null && this.backBarButton != null)
				this.controller.NavigationController.NavigationBar.AddSubview (this.backBarButton);
		}

		public void showFilterButton ()
		{
			if (this.filterBarButton != null) {
				this.filterBarButton.RemoveFromSuperview ();
			}

			this.filterBarButton = createFilterButton ();

			if (this.controller.NavigationController != null && this.filterBarButton != null)
				this.controller.NavigationController.NavigationBar.AddSubview (this.filterBarButton);
		}

		public void showSearchButton ()
		{
			if (this.searchBarButton != null) {
				this.searchBarButton.RemoveFromSuperview ();
			}

			this.searchBarButton = createSearchButton ();

			if (this.controller.NavigationController != null && this.searchBarButton != null)
				this.controller.NavigationController.NavigationBar.AddSubview (this.searchBarButton);
		}

		public void showActionHistory ()
		{
			if (this.actionHistoryBarButton != null) {
				this.actionHistoryBarButton.RemoveFromSuperview ();
			}

			this.actionHistoryBarButton = createActionHistory ();

			if (this.controller.NavigationController != null && this.actionHistoryBarButton != null)
				this.controller.NavigationController.NavigationBar.AddSubview (this.actionHistoryBarButton);
		}

		public void showTitle (string text)
		{
			this.lbTitle.Text = text;
		}

		public void hideTitle ()
		{
			this.lbTitle.Text = "";
		}

		private void setCustomFrameBar()
		{
			CGRect frameBar = this.controller.NavigationController.NavigationBar.Frame;

			frameBar.Height = 88.0f;
			this.controller.NavigationController.NavigationBar.Frame = frameBar;
		}

		private void setDefaultFrameBar()
		{
			CGRect frameBar = this.controller.NavigationController.NavigationBar.Frame;
			frameBar.Height = 44.0f;
			this.controller.NavigationController.NavigationBar.Frame = frameBar;
		}

		private void configBar ()
		{
			setCustomFrameBar ();
			this.logo = new UIImageView (new CGRect (0.0f, 0.0f, 130, 17));
			this.logo.Center = new CGPoint (this.controller.NavigationController.NavigationBar.Center.X, 20);
			this.logo.Image = UIImage.FromBundle ("title_logo");

			this.lineBar = new UIView ();
			this.lineBar.Frame = new CGRect (0.0f, this.controller.NavigationController.NavigationBar.Frame.Height / 2, this.controller.NavigationController.NavigationBar.Frame.Width, 1);
			this.lineBar.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BarItem);

			this.lbTitle = new UILabel ();
			this.lbTitle.TextColor = TCTheme.getInstance.getThemeColor (Theme.TextTitle);
			this.lbTitle.Frame = new CGRect (0.0f, this.controller.NavigationController.NavigationBar.Frame.Height / 2  + 16.5f, this.controller.NavigationController.NavigationBar.Frame.Width, 21.0f);
			this.lbTitle.Font = MUtils.getFontWithSize (false, 17.0f);
			this.lbTitle.TextAlignment = UITextAlignment.Center;
		}
	}
}

