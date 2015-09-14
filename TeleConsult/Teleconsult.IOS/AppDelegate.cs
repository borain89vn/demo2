using System;
using System.Linq;
using System.Collections.Generic;
using Foundation;
using UIKit;
using Newtonsoft.Json.Linq;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	// The UIApplicationDelegate for the application. This class is responsible for launching the
	// User Interface of the application, as well as listening (and optionally responding) to
	// application events from iOS.
	[CLSCompliant (false)]
	[Register ("AppDelegate")]
	public partial class AppDelegate : UIApplicationDelegate
	{
		// class-level declarations
		public UIViewController rootVC;

		public override UIWindow Window {
			get;
			set;
		}
			
		public override bool FinishedLaunching (UIApplication application, NSDictionary option)
		{
			UIApplication.SharedApplication.SetMinimumBackgroundFetchInterval (UIApplication.BackgroundFetchIntervalMinimum);

			TCLocalizabled.initialize ();

			NSNotificationCenter.DefaultCenter.AddObserver (new NSString("finshedSplash"), finshedSplash);

			// Load SplashScreen
			UINavigationController navigationVC = new UINavigationController ();
			navigationVC.NavigationBar.Hidden = true;

			TCSplashScreenViewController splashSreenVC = new TCSplashScreenViewController ();
			splashSreenVC.View.Frame = new CoreGraphics.CGRect (0.0f, 0.0f, 320.0f, 480.0f);			
		
			navigationVC.SetViewControllers (new UIViewController[] { splashSreenVC }, true);
			this.Window.RootViewController = navigationVC;
			this.Window.MakeKeyAndVisible ();

			return true;
		}
			
		private void finshedSplash(NSNotification notification)
		{
			if (notification.Object != null) {
				UIViewController controller = (UIViewController)notification.Object;
				showFirstScreen (controller);
			} else {
				this.Window.RootViewController = UIStoryboard.FromName ("MainStoryboard_iPhone", null).InstantiateInitialViewController() as UINavigationController;
				this.Window.MakeKeyAndVisible ();
			}
		}

		private void showFirstScreen (UIViewController controller)
		{
			this.Window.RootViewController = controller;
			this.Window.MakeKeyAndVisible ();
		}

		// This method is invoked when the application is about to move from active to inactive state.
		// OpenGL applications should use this method to pause.
		public override void OnResignActivation (UIApplication application)
		{

		}

		// This method should be used to release shared resources and it should store the application state.
		// If your application supports background exection this method is called instead of WillTerminate
		// when the user quits.
		public override void DidEnterBackground (UIApplication application)
		{

		}

		// This method is called as part of the transiton from background to active state.
		public override void WillEnterForeground (UIApplication application)
		{
			NSNotificationCenter.DefaultCenter.PostNotificationName (new NSString (MConstants.kPostEnterForeground), null);
		}

		// This method is called when the application is about to terminate. Save data, if needed.
		public override void WillTerminate (UIApplication application)
		{

		}
	}
}

