using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using Newtonsoft.Json;
using ObjCRuntime;
using CoreGraphics;
using System.Globalization;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSplashScreenViewController : TCCommonTemplateViewController, TCSignInHelperDelegate, TCBookingHelperDelegate, TCAlertViewControllerDelegate
	{
		private DeferInfo deferInfo;
		private BookingInfo bookingInfo;
		private NSTimer timer;
		UIViewController rootVC;
		UIStoryboard myStoryboard;
		NetworkStatus internetStatus;
		TCFollowingUpViewController followUpVC;
		private TCAlertViewController alertNetwork;
		private TCAlertViewController alertDeferOrReschedule;
		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCSplashScreenViewController (IntPtr handle) : base (handle)
		{
		}

		public TCSplashScreenViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCSplashScreenViewController_iPhone" : "TCSplashScreenViewController_iPhone", null)
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
			TCViewIdentity.getInstance.setObjectForKey ("TCSplashScreenViewController", this);

			addObserverNetwork ();
			startObserverNetwork ();

			myStoryboard = UIStoryboard.FromName ("MainStoryboard_iPhone", null);

			if (Reachability.InternetConnectionStatus () != NetworkStatus.NotReachable) {
				MApplication.getInstance ().isNetworkDisconnected = false; 
				if (CoreSystem.Utils.getRememberLogin ()) {
					this.acIndicator.StartAnimating ();
					authentication ();
				} else {
					startNormal ();
				}
			} else {
				MApplication.getInstance ().isNetworkDisconnected = true; 
				startNormal ();
			}
		}

		public void startObserverNetwork ()
		{
			updateStatus ();
			Reachability.ReachabilityChanged += c_ReachabilityChanged;
		}

		public void addObserverNetwork ()
		{
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kNetworkNotAvailable, warningNetworkNotAvailable);
		}

		public void addAllObserver ()
		{
			TCGlobals.getInstance.isAddObserverSplash = true;

			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostDissmisUploadPhoto, new
				TCSelector (updateNavigationBar));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyCloseBalance, new
				TCSelector (showAlertCloseBalance));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyCloseBalanceCalling, new
				TCSelector (showAlertCloseBalanceCalling));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostCallDuration, new
				TCSelector (startCallDuration));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostDeferOrRescheduleTalkNow, new
				TCSelector (showAlertDefer));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyDeclineConferrence, new
				TCSelector (showAlertDecline));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifySignOut, new
				TCSelector (forceSignOut));
		}

		private void startNormal ()
		{
			this.timer = NSTimer.CreateScheduledTimer (2, finshedSplash);
			this.acIndicator.StartAnimating ();
		}

		void updateStatus ()
		{
			internetStatus = Reachability.InternetConnectionStatus ();
		}

		public void c_ReachabilityChanged (object sender, EventArgs e)
		{
			#if DEBUG
			Console.Out.WriteLine (Reachability.InternetConnectionStatus ().ToString ());
			#endif
		
			if (Reachability.InternetConnectionStatus () == NetworkStatus.NotReachable) {
				MApplication.getInstance ().isNetworkDisconnected = true;
				TCNotificationCenter.defaultCenter.postNotification (CoreSystem.Constants.kNetworkNotAvailable, null);
			} else {
				MApplication.getInstance ().isNetworkDisconnected = false;
				if (TCViewIdentity.getInstance.getObjectForKey ("TCListFavoriteViewController") != null) {
					TCListFavoriteViewController listFavoriteVC = (TCListFavoriteViewController)TCViewIdentity.getInstance.getObjectForKey ("TCListFavoriteViewController");
					TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyFavorite (listFavoriteVC), null);
				}
			}
		}

		public void forceSignOut (object notification)
		{
			this.InvokeOnMainThread (delegate {

				UIViewController root = UIApplication.SharedApplication.KeyWindow.RootViewController;
				MUtils.showMessageForceLogout (root);
				TCGlobals.getInstance.signOut (myStoryboard);
			});
		}

		public void warningNetworkNotAvailable (object notification)
		{
			this.InvokeOnMainThread (delegate {
				TCNotificationCenter.defaultCenter.postNotification (CoreSystem.Constants.kDissmisRefreshHeaderTable, null);
				if (TCGlobals.getInstance.isNoGetConfiged && TCGlobals.getInstance.isAtScreenConfig) {
					TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostCouldNotGetData, null);
				} else {
					UIViewController root = UIApplication.SharedApplication.KeyWindow.RootViewController;
					MUtils.showNetworkFailed (root);
				}
			});
		}

		#region Selector
		[Export("sendRequestDeferCancel")]
		void sendRequestDeferCancel()
		{
			this.alertDeferOrReschedule.dismiss ();
			cancelDeferOrSchedule ();
		}

		#endregion


		#region SignalR

		public void showAlertDefer (object pDeferInfo)
		{
			this.InvokeOnMainThread (delegate {

				DeferInfo deferInfo = (DeferInfo)pDeferInfo;
				this.deferInfo = deferInfo;

				this.timer =  NSTimer.CreateScheduledTimer(60, this, new Selector("sendRequestDeferCancel"), null, false);

				TCBookingHelper bookingHelper = new TCBookingHelper (this);
				bookingHelper.Delegate = this;
				bookingHelper.getBookingInfo (deferInfo.BookingId);
			});
		}

		public void showAlertDecline (object pMessageInfo)
		{
			this.InvokeOnMainThread (delegate {
				MessageDTO messageDTO = (MessageDTO)pMessageInfo;
				UIViewController root = UIApplication.SharedApplication.KeyWindow.RootViewController;
				MUtils.showAlert (root, messageDTO.title, messageDTO.message);
			});
		}

		public void showAlertCloseBalance (object notification)
		{
			this.InvokeOnMainThread (delegate {
		
				UIViewController root = (UIViewController)UIApplication.SharedApplication.KeyWindow.RootViewController;
				MUtils.showAlertCloseBalance (root);
			});
		}

		public void showAlertCloseBalanceCalling (object notification)
		{
			this.InvokeOnMainThread (delegate {

				UIViewController root = (UIViewController)UIApplication.SharedApplication.KeyWindow.RootViewController;
				MUtils.showAlertCloseBalanceCalling (root);
			});
		}

		public void startCallDuration (object durationInfo)
		{
			this.InvokeOnMainThread (delegate {
				TCNotificationCenter.defaultCenter.postNotification(MConstants.kPostStartCallDurationTimer, null);
				UIViewController root = null;
				if (TCAlertManager.getInstance ().getNumberAlertVisible () > 0) {
					TCAlertManager.getInstance().dismissAll();
					root = (UIViewController)TCViewIdentity.getInstance.getObjectForKey ("TCMainTabViewController");
				} else {
					root = UIApplication.SharedApplication.KeyWindow.RootViewController;
				}

				DurationInfo info = (DurationInfo)durationInfo;
				this.followUpVC = new TCFollowingUpViewController ();
				followUpVC.durationInfo = info;
				followUpVC.setDurationInfo (info);

				root.PresentModalViewController (followUpVC, true);
			});
		}

		#endregion

		private void finshedSplash (NSTimer timer)
		{
			this.acIndicator.StopAnimating ();
			stopTimer ();

			TCLocationManager locationManager = TCLocationManager.getInstance ();
			locationManager.startUpdateLocation ();

			NSNotificationCenter.DefaultCenter.PostNotificationName ("finshedSplash", null);
		}

		private void authentication ()
		{
			TCSignInHelper signInService = new TCSignInHelper (this);
			signInService.Delegate = this;
			signInService.requestSignIn (CoreSystem.Utils.getUserName (), CoreSystem.Utils.getPassWord (), true);
		}

		private void setNavigation ()
		{
			UINavigationController navigationVC = new UINavigationController ();
			navigationVC.SetViewControllers (new UIViewController[] { rootVC }, true);
			NSNotificationCenter.DefaultCenter.PostNotificationName ("finshedSplash", navigationVC);
		}

		private NSMutableAttributedString createRescheduleStringAttributed (BookingInfo bookingInfo, string time)
		{
			string param1 = bookingInfo.SpecialistName;
			string text1 = TCLocalizabled.getText ("TextMessageReschedule1");
			string param2 = time;
			string text2 = TCLocalizabled.getText ("TextMessageReschedule2");
			var attributedString = new NSMutableAttributedString (param1 + text1 + param2 + text2);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (0, param1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange (param1.Length, text1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange ((param1 + text1).Length, param2.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange ((param1 + text1 + param2).Length, text2.Length));

			return attributedString;
		}

		private NSMutableAttributedString createDeferStringAttributed (BookingInfo bookingInfo, string time)
		{
			string param1 = bookingInfo.SpecialistName;
			string text1 = TCLocalizabled.getText ("TextMessageDefer1");
			string param2 = time;
			string text2 = TCLocalizabled.getText ("TextMessageDefer2");

	
			var attributedString = new NSMutableAttributedString (param1 + text1 + param2 + text2);
			UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange (0, param1.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange (param1.Length, text1.Length));
					

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

			}.Dictionary, new NSRange ((param1 + text1).Length, param2.Length));

			attributedString.SetAttributes (new UIStringAttributes {
				Font = fontMessage,
				ForegroundColor = UIColor.Black

			}.Dictionary, new NSRange ((param1 + text1 + param2).Length, text2.Length));


			return attributedString;
		}


		#region Notification Local

		public void updateNavigationBar (object data)
		{
			if (TCGlobals.getInstance.currentVC != null) {
				TCGlobals.getInstance.currentVC.createNavigationBar ();
			}
		}

		#endregion

		#region TCSignInDelegate

		public void beginRequestLogin (TCSignInHelper helper)
		{

		}

		public void requestLoginSuccess (TCSignInHelper helper)
		{
			rootVC = (TCMainTabViewController)myStoryboard.InstantiateViewController ("TCMainTabViewController");
			MApplication.getInstance ().isRequired = false;
			setNavigation ();
		}

		public void requestLoginFail (TCSignInHelper helper, string title, string message)
		{
			rootVC = (TCHomeViewController)myStoryboard.InstantiateViewController ("TCHomeViewController");
			setNavigation ();
		}

		public void failNetwork (TCSignInHelper helper, string title, string message)
		{
			NSNotificationCenter.DefaultCenter.PostNotificationName ("finshedSplash", null);
		}

		public void failNotActive (TCSignInHelper helper)
		{
			NSNotificationCenter.DefaultCenter.PostNotificationName ("finshedSplash", null);
		}

		#endregion


		#region TCBookingHelperDelegate

		public void getBookingSuccess (TCBookingHelper helper, BookingInfo info)
		{
			NSMutableAttributedString stringAttribute;
			this.bookingInfo = info;
		
			if (this.deferInfo.IsDefer) {
				string time = MUtils.getMinuteDefer (info.Deferral);
				stringAttribute = createDeferStringAttributed (this.bookingInfo, time);
			} else {
				string time = MUtils.getHourReschedule (info.Deferral);
				stringAttribute = createRescheduleStringAttributed (this.bookingInfo, time);
			}
				
			TCMessageView customMessage = new TCMessageView (UIColor.Clear, stringAttribute, false);
			UIViewController root = UIApplication.SharedApplication.KeyWindow.RootViewController;
			this.alertDeferOrReschedule = new TCAlertViewController (root,  ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextTitleDelay"), "", customMessage, TCLocalizabled.getText ("DeclineTitle"), TCLocalizabled.getText ("AcceptTitle"));
			this.alertDeferOrReschedule.Delegate = this;
			this.alertDeferOrReschedule.display ();
		}

		public void getBookingFail (TCBookingHelper helper)
		{
			MUtils.showAlert (this, TCLocalizabled.getText ("TitleNetworkStatus"), TCLocalizabled.getText ("TextConnectionFailed"));
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			if (alert == this.alertNetwork) {
				finshedSplash (null);
			} else {
				stopTimer ();
				acceptDeferOrSchedule ();
			}
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{
			stopTimer ();
			cancelDeferOrSchedule ();
		}

		#endregion

		private void stopTimer()
		{
			if (this.timer != null) {
				this.timer.Invalidate ();
			}
		}

		private void acceptDeferOrSchedule()
		{
			Action<string> successful = (response => {

				this.InvokeOnMainThread (delegate {
					DeferTalkNow deferTalknowInfo = ParseDataHelper.parseDataDeferTalknow (response);
					if (deferTalknowInfo != null) {
						TCNotificationCenter.defaultCenter.postNotification (CoreSystem.Constants.kPostNotifyDeferAccept, new DeferDTO (this.bookingInfo, this.deferInfo));
					}
				});
			});

			Action<string> failure = (response => {
				MUtils.showAlert (this, TCLocalizabled.getText ("TextAlertTitleAcceptDefer"), TCLocalizabled.getText ("TextRequestFail"));
			});

			DataHelperRequest.getInstance ().sendAcceptTalkNowDeferRequest (this.deferInfo.BookingId, this.deferInfo.IsDefer, successful, failure);
		}

		private void cancelDeferOrSchedule()
		{
			Action<string> successful = (response => {

				this.InvokeOnMainThread (delegate {

					bool status = ParseDataHelper.parseDataBooking (response);
					if (status) {
						MUtils.showAlert (this, TCLocalizabled.getText ("TextAlertTitleCancelDefer"), TCLocalizabled.getText ("TextRequestSuccess"));
					} else {
						MUtils.showAlert (this, TCLocalizabled.getText ("TextAlertTitleCancelDefer"), TCLocalizabled.getText ("TextRequestFail"));
					}
				});
			});

			Action<string> failure = (response => {
				MUtils.showAlert (this, TCLocalizabled.getText ("TextAlertTitleCancelDefer"), TCLocalizabled.getText ("TextRequestFail"));
			});

			DataHelperRequest.getInstance ().sendCancelTalkNowDeferRequest (this.deferInfo.BookingId, this.deferInfo.IsDefer, successful, failure);
		}
	}
}

