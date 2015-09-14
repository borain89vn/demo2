using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCMyProfileViewController : TCCommonTemplateViewController, TCSignInHelperDelegate, TCAlertViewControllerDelegate, TCCurrentUserHelperDelegate
	{
		public TCMyProfileViewController (IntPtr handle) : base (handle)
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
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostUpdateStatusCurrentUser, new TCSelector(updateStatusCurrentUser));
			loadingView = new TCLoadingOverlay (this, true, false);
			loadingView.build ();

			decorateUI ();
		}
			
		private void decorateUI ()
		{
			MUtils.enableButton (this.btnUpdateProfile);
			MUtils.enableButton (this.btnSignOut);
			MUtils.enableButton (this.btnChangePass);
		}

		public override void ViewWillAppear (bool animation)
		{
			base.ViewWillAppear (animation);
		}


		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (false, null, false);
		}

		#region Notification Local

		public void updateStatusCurrentUser(object notificaiton)
		{
			if (!MApplication.getInstance ().isCompleteProfile) {
				TCCurrentUserHelper currentUserHelper = new TCCurrentUserHelper (this);
				currentUserHelper.Delegate = this;
				currentUserHelper.getStatus ();
			}
		}

		#endregion

		#region IBAction

		partial void updateProfileClicked (NSObject sender)
		{
			this.PerformSegue ("MyProfileVCToUpdateProfileVC", this);
		}

		partial void changPasswordClicked (NSObject sender)
		{
			this.PerformSegue ("TCChangePasswordViewController", this);
		}

		partial void signOutClicked (NSObject sender)
		{
			TCAlertViewController alertVC = new TCAlertViewController (this, TCLocalizabled.getText ("TextTitleSignOut"), TCLocalizabled.getText ("TextMessageSignOut"), null, TCLocalizabled.getText ("NoTitle"), TCLocalizabled.getText ("YesTitle"));
			alertVC.Delegate = this;
			alertVC.display ();
		}

		#endregion

		#region TCSignInDelegate

		public void beginRequestLogin (TCSignInHelper helper)
		{
			this.loadingView.show ();
		}

		public void requestLoginSuccess (TCSignInHelper helper)
		{
			this.loadingView.dismiss ();
		}

		public void requestLoginFail (TCSignInHelper helper, string title, string message)
		{
			loadingView.dismiss ();
			MUtils.showRequestFail (this);
		}

		public void failNetwork (TCSignInHelper helper, string title, string message)
		{
			loadingView.dismiss ();
			MUtils.showNetworkFailed (this);
		}

		public void failNotActive (TCSignInHelper helper)
		{
			loadingView.dismiss ();
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			TCGlobals.getInstance.signOut (this.Storyboard);
			TCAlertManager.getInstance ().dismissAll ();
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion

		#region TCCurrentUserHelperDelegate
	
		public	void beginUpdateCurrentUser (TCCurrentUserHelper sender)
		{
			this.loadingView.show ();
		}

		public	void finishUpdateCurrentUser (TCCurrentUserHelper sender)
		{
			this.loadingView.dismiss ();
		}

		public	void getCurrentUserSuccess (TCCurrentUserHelper sender, bool status)
		{
			MApplication.getInstance().isCompleteProfile = status;
		}

		public	void getCurrentUserFail (TCCurrentUserHelper sender)
		{
			MUtils.showNetworkFailed (this);
		}
		#endregion
	}
}

