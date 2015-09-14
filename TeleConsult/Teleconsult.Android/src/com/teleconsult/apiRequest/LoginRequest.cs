using System;
using Android.App;
using CoreSystem;
using Android.Content;

namespace Teleconsult.Android
{
	[CLSCompliant (false)]
	public class LoginRequest
	{
		Activity _activity;

		public OnActionSignInDelegate signInDelegate { set; get; }

		public LoginRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void sendLoginRequest (string userName, string pass, bool isRemeber, bool isSignInFromSplashScreen)
		{
			signInDelegate.onSendingSignIn ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread (() => {
					UserInfo userInfo = ParseDataHelper.parseDataLogin (response);
					if (userInfo != null) {
						if (userInfo.Id == Guid.Empty) {
							if (userInfo.Status == (int)Constants.LOGIN_STATUS.Locked) {
								signInDelegate.onSignInFail(_activity.GetString(Resource.String.acc_locked));
							} else if (userInfo.Status == 500) {
								signInDelegate.onSignInFail(_activity.GetString(Resource.String.server_err));
							} else if (userInfo.LoginAttempts > 0) {
								signInDelegate.onSignInFail(_activity.GetString(Resource.String.invalid_pass));
							} else {
								signInDelegate.onSignInFail(_activity.GetString(Resource.String.invalid_user_pass)); 
							}
						} else if (userInfo.AuthToken != null) {
							MApplication.getInstance().isBetaMode = userInfo.BetaMode;
							MApplication.getInstance().iExpertStatus = userInfo.CurrentAvailabilityStatus;
							MApplication.getInstance().typeCard = Utils.getPaymentName(userInfo.PaymentMethod);
							Utils.keepAccessToken (userInfo.AuthToken);
							Utils.keepEmail(userInfo.Email);
							MApplication.getInstance().sEmailAddress = userInfo.Email;
							MApplication.getInstance ().userId = userInfo.Id;
							if (userInfo.Locations != null && userInfo.Locations.Count > 0)
								MApplication.getInstance ().timezoneName = userInfo.Locations [0].TimeZoneMobile;
								Utils.keepUserName (userName);
								Utils.keepPassWord (pass);
								MApplication.getInstance ().userName = userInfo.UserName;
								MApplication.getInstance ().firstName = userInfo.FirstName;
								if (userInfo.Role == (int)Constants.USERTYPE.CONSULTANT) {
									MApplication.getInstance ().isConsultant = true;
									MApplication.getInstance ().specialistID = userInfo.Id;
								} else {
									MApplication.getInstance ().isConsultant = false;
									MApplication.getInstance ().customerID = userInfo.Id;
								}

								MApplication.getInstance ().iStep = userInfo.CompletedStep;
								
							if(userInfo.Status == (int)Constants.LOGIN_STATUS.Active){
								MApplication.getInstance ().isCompleteProfile = true;
							} else {
								MApplication.getInstance ().isCompleteProfile = false;
							}
							MApplication.getInstance ().isLogedIn = true;

							if (isRemeber) {
								Utils.keepRememberLogin (true);
							} else {
								Utils.keepRememberLogin (false);
							}

							MApplication.getInstance().tcSignalR = null;
							MApplication.getInstance().tcSignalR = new TCSignalRClient();
							MApplication.getInstance().tcSignalR.start(userInfo.AuthToken);	
							if(isSignInFromSplashScreen){
								signInDelegate.onSignInSplashSuccess();
							} else {
								signInDelegate.onSignInSuccess ();
							}


						} else {
							signInDelegate.onSignInFail(_activity.GetString(Resource.String.connection_fail));
						}
					} else {
						// Show range out of disk
						signInDelegate.onSignInFail(_activity.GetString(Resource.String.server_err));
					}
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (() => {
					signInDelegate.onSignInFail(_activity.GetString(Resource.String.connection_fail));
				});
			});

			DataHelperRequest.getInstance ().sendLoginRequest (userName, pass, successful, failure);
		}
	}
}

