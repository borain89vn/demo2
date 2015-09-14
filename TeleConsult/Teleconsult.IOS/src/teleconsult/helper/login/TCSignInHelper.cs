using System;
using CoreSystem;
using System.Collections.Generic;
using UIKit;
using Newtonsoft.Json;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSignInHelper
	{
		private UIViewController controller;
		public TCSignInHelperDelegate Delegate;

		public TCSignInHelper (UIViewController controller)
		{
			this.controller = controller;
		}

		public void requestSignIn (string username, string password, bool isRemember)
		{
			if (this.Delegate != null) {
				this.Delegate.beginRequestLogin (this);
			}

			Action<string> successful = (response => {
	
				this.controller.InvokeOnMainThread (delegate {
					TCGlobals.getInstance.isWatingLogin = false;
					UserInfo userInfo = CoreSystem.ParseDataHelper.parseDataLogin (response);
					if (userInfo != null) {
						if (userInfo.Id == Guid.Empty) {
							if (this.Delegate != null) {
								if (userInfo.Status == (int)CoreSystem.Constants.LOGIN_STATUS.Locked) {
									this.Delegate.requestLoginFail (this, TCLocalizabled.getText ("TextAlertSignIn"), TCLocalizabled.getText ("LoginAccountLocked"));
								} else if (userInfo.Status == 500) {
									this.Delegate.requestLoginFail (this, TCLocalizabled.getText ("TextAlertSignIn"), TCLocalizabled.getText ("TextMessageRanOutDisk"));
								} else if (userInfo.LoginAttempts > 0) {
									this.Delegate.requestLoginFail (this, TCLocalizabled.getText ("TextAlertSignIn"), TCLocalizabled.getText ("LoginPassworkInCorrect"));
								} else {
									this.Delegate.requestLoginFail (this, TCLocalizabled.getText ("TextAlertSignIn"), TCLocalizabled.getText ("TextMessageRanOutDisk"));
								}

							}
						} else if (userInfo.AuthToken != null) {
							MApplication.getInstance ().isLogedIn = true;
							MApplication.getInstance ().userId = userInfo.Id;
							CoreSystem.Utils.keepAccessToken (userInfo.AuthToken);
							TCGlobals.getInstance.accessToken = userInfo.AuthToken;

							// Connect to signalR server 
							TCGlobals.getInstance.currentSignalR = new TCSignalRClient ();
							TCGlobals.getInstance.currentSignalR.start (CoreSystem.Utils.getAccessToken ());

							bool isConsultant = false;
							if ((int)CoreSystem.Constants.USERTYPE.CONSULTANT == userInfo.Role)
								isConsultant = true;
								
							if (userInfo.Status == (int)CoreSystem.Constants.LOGIN_STATUS.Active) {
								MApplication.getInstance ().isCompleteProfile = true;
							} else {
								MApplication.getInstance ().isCompleteProfile = false;
							}

							if (userInfo.Locations != null && userInfo.Locations.Count > 0) {
								MApplication.getInstance ().timezoneName = userInfo.Locations [0].TimeZoneMobile;
							} else {
								MApplication.getInstance ().timezoneName = "";
							}
									
							MApplication.getInstance ().typeCard = MUtils.getPaymentName (userInfo.PaymentMethod);

							MApplication.getInstance ().userName = userInfo.UserName;
							MApplication.getInstance ().iStep = userInfo.CompletedStep;
							MApplication.getInstance ().isConsultant = isConsultant;
							MApplication.getInstance ().iExpertStatus = userInfo.CurrentAvailabilityStatus;
							MApplication.getInstance ().isBetaMode = userInfo.BetaMode;

							CoreSystem.Utils.keepRememberLogin (isRemember);
						
							saveUserAndPass (username, password);
							CoreSystem.Utils.keepEmail (userInfo.Email);
							TCGlobals.getInstance.myEmail = userInfo.Email;
							if (TCViewIdentity.getInstance.getObjectForKey ("TCSplashScreenViewController") != null && !TCGlobals.getInstance.isAddObserverSplash) {
								TCSplashScreenViewController splashScreenVC = (TCSplashScreenViewController)TCViewIdentity.getInstance.getObjectForKey ("TCSplashScreenViewController");
								splashScreenVC.addAllObserver ();
							}
								
							if (this.Delegate != null) {
								this.Delegate.requestLoginSuccess (this);
							}							
						} else {
							this.Delegate.failNetwork (this, TCLocalizabled.getText ("TitleNetworkStatus"), TCLocalizabled.getText ("TextConnectionFailed"));
						}
					} else {
						if (this.Delegate != null) {
							this.Delegate.requestLoginFail (this, TCLocalizabled.getText ("TextAlertSignIn"), TCLocalizabled.getText ("TextMessageRanOutDisk"));
						}
					}
				});
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif

				this.controller.InvokeOnMainThread (delegate {
					TCGlobals.getInstance.isWatingLogin = false;
					if (this.Delegate != null) {
						this.Delegate.failNetwork (this, TCLocalizabled.getText ("TitleNetworkStatus"), TCLocalizabled.getText ("TextConnectionFailed"));
					}
				});
			});

			DataHelperRequest.getInstance ().sendLoginRequest (username, password, successful, failure);
		}

		private void saveUserAndPass (string username, string password)
		{
			CoreSystem.Utils.keepUserName (username);
			CoreSystem.Utils.keepPassWord (password);
		}
	}

	public interface TCSignInHelperDelegate
	{
		void beginRequestLogin (TCSignInHelper helper);

		void requestLoginSuccess (TCSignInHelper helper);

		void requestLoginFail (TCSignInHelper helper, string title, string message);

		void failNetwork (TCSignInHelper helper, string title, string message);

		void failNotActive (TCSignInHelper helper);
	}
}

