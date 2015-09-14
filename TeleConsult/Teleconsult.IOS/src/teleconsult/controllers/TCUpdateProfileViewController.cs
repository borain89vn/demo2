
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCUpdateProfileViewController : TCCommonTemplateViewController
	{
		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCUpdateProfileViewController (IntPtr handle) : base (handle)
		{

		}


		public TCUpdateProfileViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCUpdateProfileViewController_iPhone" : "TCUpdateProfileViewController_iPhone", null)
		{
		}
			
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
			TCViewIdentity.getInstance.setObjectForKey ("TCUpdateProfileViewController", this);


			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			string pathUpdate = CoreSystem.HttpConstants.BASE_URL + string.Format ("My/Profile/Index?accessToken={0}", CoreSystem.Utils.getAccessToken());

			this.webViewUpdateProfile.Delegate = new TCWebViewDelegate (this);
			this.webViewUpdateProfile.LoadRequest(new NSUrlRequest(new NSUrl(pathUpdate))); 
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, TCLocalizabled.getText("TitleScreenUpdateProfile"), true);
		}

		public override void goBack ()
		{
			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostUpdateStatusCurrentUser, null);
			base.goBack ();
		}

		public override void DismissViewController (bool animation, Action action)
		{
			Console.Out.WriteLine("DismissViewController");

		}
	}
}

