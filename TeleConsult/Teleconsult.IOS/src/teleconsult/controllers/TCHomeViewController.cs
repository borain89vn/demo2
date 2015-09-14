using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;
using CoreSystem;
using System.Collections.Generic;
using RestSharp;
using ObjCRuntime;
using CoreAnimation;
using MediaPlayer;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCHomeViewController : UIViewController
	{
		public TCLoadingOverlay loadingView;
		public List<SpecialistProfileInfos> specialists  { get; set; }
		private CGRect frameSearchView;

		public TCHomeViewController (IntPtr handle) : base (handle)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			UIButton btnHome = (UIButton)this.NavigationController.NavigationBar.ViewWithTag (100);
			if (btnHome != null)
				btnHome.RemoveFromSuperview ();

			this.tfSearch.Text = "";

			this.NavigationController.NavigationBar.Hidden = true;
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			NSNotificationCenter.DefaultCenter.AddObserver (new NSString (MConstants.kPostEnterForeground), WillEnterForeground);

			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidShowNotification, keyboardWasShown);
			NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.DidHideNotification, keyboardWasHide);
		
			MApplication.getInstance().isRequired = true;

			loadingView = new TCLoadingOverlay (this, false, true);
			loadingView.build ();

			this.frameSearchView = this.viewSearch.Frame;
			this.tfSearch.ShouldReturn += search;

			TCLocationManager locationManager = TCLocationManager.getInstance ();
			locationManager.startUpdateLocation ();

			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}
				
			setLocalizationForControls ();
			decorateUI ();
		}
	
		#region Notification Local

		void keyboardWasHide (NSNotification notification)
		{
			CGRect frameSearch = this.viewSearch.Frame;
			this.viewSearch.Frame = new CGRect (this.frameSearchView.X, this.frameSearchView.Y, this.frameSearchView.Width, this.frameSearchView.Height);
		}

		void keyboardWasShown (NSNotification notification)
		{
			CGRect frameSearch = this.viewSearch.Frame;
			var keyboardFrame = UIKeyboard.FrameBeginFromNotification (notification);
			nfloat heightKeyboard = keyboardFrame.Height;
			this.viewSearch.Frame = new CGRect (this.frameSearchView.X, UIScreen.MainScreen.Bounds.Height - heightKeyboard - this.viewSearch.Frame.Height - 20.0f, this.frameSearchView.Width, this.frameSearchView.Height);
		}

		#endregion

		private bool search(UITextField textfield)
		{
			searchClicked (this.btnSearch);

			return true;
		}

		private void decorateUI()
		{
			MUtils.enableButton (this.btnSearch);

			this.btnRegisterUser.Layer.CornerRadius = 3.0f;
			this.btnRegisterUser.SetTitle (TCLocalizabled.getText("TextTitleButtonRegisterUser"), UIControlState.Normal);
			this.btnSignIn.Layer.CornerRadius = 3.0f;

			setLayerCustom (this.viewSubSearch);
		}

		private void setLayerCustom (UIView view)
		{
			UIBezierPath maskPath = UIBezierPath.FromRoundedRect ( view.Bounds, (UIRectCorner.BottomLeft | UIRectCorner.TopLeft), new CGSize(2.0f, 2.0f));
	
			CAShapeLayer maskLayer = new CAShapeLayer ();
			maskLayer.Frame = view.Bounds;
			maskLayer.Path = maskPath.CGPath;
		
			view.Layer.Mask = maskLayer;
		}

		private void WillEnterForeground (NSNotification notification)
		{
			TCLocationManager locationManager = TCLocationManager.getInstance ();
			locationManager.startUpdateLocation ();
		}

		private void setLocalizationForControls ()
		{
			this.tfSearch.Placeholder = TCLocalizabled.getText ("TextPlaceholderSearch");
		}

		partial void searchClicked (NSObject sender)
		{
			this.PerformSegue ("TCSearchSpecialistViewController2", this);
		}
			
		partial void signIn (NSObject sender)
		{
			this.PerformSegue ("TCHomeViewController", this);
		}

		partial void registerAsUser (NSObject sender)
		{
			this.PerformSegue ("TCRegisterViewController", sender);
		}
			
		partial void dismissKeyboard (NSObject sender)
		{
			this.tfSearch.ResignFirstResponder();
		}

		public override void PrepareForSegue (UIStoryboardSegue segue, NSObject sender)
		{
			base.PrepareForSegue (segue, sender);
			this.NavigationController.NavigationBar.Hidden = false;

			// do first a control on the Identifier for your segue
			if (segue.Identifier.Equals ("TCRegisterViewController")) {
				var registerVC = (TCRegisterViewController)segue.DestinationViewController;
				registerVC.title = TCLocalizabled.getText ("TextTitleRegisterUser").ToUpper();
				registerVC.url = CoreSystem.HttpConstants.BASE_URL +  String.Format("Account/Register?role=Customer&accessToken={0}", Guid.Empty);
			} else if (segue.Identifier.Equals ("TCSpecialistProfileViewController")) {
				var specialistProfileVC = (TCSpecialistProfileViewController)segue.DestinationViewController;
				var sCell = sender as TCSearchCellTemplate;
				specialistProfileVC.specialistInfo = sCell.data;

			} else if (segue.Identifier.Equals ("TCSearchSpecialistViewController2")) {
				var searchSpecialistVC = (TCSearchSpecialistViewController)segue.DestinationViewController;
				searchSpecialistVC.stringSearch = this.tfSearch.Text;
				searchSpecialistVC.isFromHomePage = true;
			} else if (segue.Identifier.Equals ("TCHomeViewController")) {
				var loginVC = (TCLoginViewController)segue.DestinationViewController;
				loginVC.isLoginNormal = true;

			}
		}
	}
}

