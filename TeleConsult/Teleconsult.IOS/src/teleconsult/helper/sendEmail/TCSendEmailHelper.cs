using System;
using UIKit;
using CoreSystem;
using System.Collections.Generic;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSendEmailHelper
	{
		public TCSendEmailHelperDelegate Delegate;
		private UIViewController parentController;

		public TCSendEmailHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void send (Guid specialistId, string pEmails, string myEmail, string personalMessage)
		{
			#if DEBUG
			Console.Out.WriteLine ("sendEmailProfile");
			#endif

			string[] emails = pEmails.Trim ().Split (new string[] { "," }, StringSplitOptions.None);

			List<string> emailsValid = new List<string> ();
			List<string> emailsInValid = new List<string> ();

			foreach (string email in emails) {
				if (!email.Trim ().Equals ("")) {
					if (CoreSystem.Utils.checkValidateEmail (email.Trim ())) {
						emailsValid.Add (email.Trim ());
					} else {
						emailsInValid.Add (email.Trim ());
					}
				}
			}

			string strEmailsInvalid = "";
			if (emailsInValid.Count > 0 ) {
				foreach (string email in emailsInValid) {
					if (!email.Equals(""))
						strEmailsInvalid += email + "\n";
				}
			}
				
			if (emailsInValid.Count > 0) {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishSendEmailRequest (this);
						string[] result = checkEmailInvalid (emailsInValid,strEmailsInvalid);
						if (result == null) {
							this.Delegate.sendFailure (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText("TextMessageEnterEmail"));
						} else {
							this.Delegate.sendFailure (this, result[0], result[1]);
						}
					});
				}
				return;
			}

			if (this.parentController != null && this.Delegate != null) {
				this.Delegate.beginSendEmailRequest (this);
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishSendEmailRequest (this);

						string message = "";
						string title = TCLocalizabled.getText("TitleAlertEmail");

						bool status = CoreSystem.ParseDataHelper.parseDataEmailProfile(response);
						if (status) {
						string[] result = checkEmailInvalid (emailsInValid,strEmailsInvalid);
							if (result == null) {
								message = TCLocalizabled.getText("TextAllEmailSucess");
							} else {
								title = result[0];
								message = result[1];
							}
						} else {
							message = TCLocalizabled.getText ("TextRequestFail");
						}

						this.Delegate.sendSuccess (this, title, message); 
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishSendEmailRequest (this);
						this.Delegate.sendFailure (this, TCLocalizabled.getText("TitleAlertEmail"), TCLocalizabled.getText ("TextConnectionFailed"));
					});
				}
			});

			DataHelperRequest.getInstance ().sendEmailProfileRequest (specialistId, myEmail, emailsValid, personalMessage, successful, failure);
		}

		private string[] checkEmailInvalid(List<string> emailsInValid, string strEmailsInvalid)
		{
			string[] result = new string[2];
			if (emailsInValid.Count > 0) {
				if (strEmailsInvalid.Length > 0) {
					result [0] = TCLocalizabled.getText ("TitleAlertInvalidEmails");
					result [1] = strEmailsInvalid;
				} else {
					result [0] = TCLocalizabled.getText ("TitleAlertNotice");
					result [1] = TCLocalizabled.getText ("TextMessageEnterEmail");
				}
			} else {
				return null;
			}

			return result;
		}
	}

	[CLSCompliant (false)]
	public interface TCSendEmailHelperDelegate
	{
		void beginSendEmailRequest(TCSendEmailHelper self);
		void finishSendEmailRequest(TCSendEmailHelper self);
		void sendSuccess (TCSendEmailHelper self, string title, string message);
		void sendFailure (TCSendEmailHelper self, string title, string message);
	}
}

