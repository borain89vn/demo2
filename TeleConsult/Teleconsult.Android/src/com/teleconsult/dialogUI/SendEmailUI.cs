using System;
using Android.App;
using Android.Widget;
using System.Linq;
using System.Collections.Generic;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class SendEmailUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialogEquiry;
		Dialog dialogNotice;
		List<String> emails = new List<String> ();
		List<String> emailsInvalid = new List<String> ();
		public OnActionDelegate actionDelegate { set; get; }

		public SendEmailUI (Activity _activity) : base (_activity)
		{
			this._activity = _activity;
		}

		public void showEmailDialog(Guid specId){
			var enterEmailView = LayoutInflater.Inflate (Resource.Layout.popup_enter_email, null);

			var edEnterEmail = enterEmailView.FindViewById<EditText> (Resource.Id.edit_enter_email);
			var edMyEmail = enterEmailView.FindViewById<EditText> (Resource.Id.edit_my_email);
			var edMessEmail = enterEmailView.FindViewById<EditText> (Resource.Id.edit_enter_message);
			var btnSend = enterEmailView.FindViewById<Button> (Resource.Id.btnSendEmail);
			var btnCancel = enterEmailView.FindViewById<Button> (Resource.Id.btnCancelSendEmail);

			builder = new AlertDialog.Builder (_activity);
			builder.SetInverseBackgroundForced (true);
			builder.SetView (enterEmailView);
			dialogEquiry = builder.Create ();
			dialogEquiry.SetCanceledOnTouchOutside(false);

			btnSend.Enabled = false;
			edMyEmail.Text = MApplication.getInstance ().sEmailAddress;
			edEnterEmail.TextChanged += (sender, e) => {
				if(edEnterEmail.Text.Count() > 0) {
					btnSend.Enabled = true;
				} else {
					btnSend.Enabled = false;
				}
			};

			btnSend.Click += (sender, e) => {
				if(edMyEmail.Text.Trim().Count() > 0) {
					if(Utils.checkValidateEmail(edMyEmail.Text.Trim())){
						if (edEnterEmail.Text.Trim().Count() <= 0) {
							btnSend.Enabled = false;
							showNoticeEmail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.require_email_profile));
						} else {
							emails.Clear();
							emailsInvalid.Clear();

							Utils.getEmailsProfileFromString(edEnterEmail.Text.ToString(), emails, emailsInvalid);
							if(emailsInvalid.Count > 0) {
								showNoticeEmail(_activity.GetString(Resource.String.invalid_email_title), getEmailInvalidFromList(emailsInvalid));
							} else {
								dialogEquiry.Dismiss();
								actionDelegate.onSending();
								sendEmailProfileRequest(specId, edMyEmail.Text.Trim(), edMessEmail.Text.Trim());
							}
						}
					} else{
						showNoticeEmail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.invalid_email_reset));	
					}
				} else {
					showNoticeEmail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.email_sender_require));
				}
			};

			btnCancel.Click += (sender, e) => {
				dialogEquiry.Dismiss();
			};

			dialogEquiry.Show ();
		}

		private string getEmailInvalidFromList(List<String> emailsInvalid){
			string sEmailInvalid = "";
			foreach(var emailInvalid in emailsInvalid){
				sEmailInvalid += emailInvalid + "\n";
			}

			return sEmailInvalid;
		}
		private void showNoticeEmail(string title, string content){
			var emailInvalidlView = LayoutInflater.Inflate (Resource.Layout.popup_notice_layout, null);

			builder = new AlertDialog.Builder (_activity);
			builder.SetInverseBackgroundForced (true);
			builder.SetView (emailInvalidlView);

			var tvTitle = emailInvalidlView.FindViewById<TextView> (Resource.Id.tv_title_notice_popup);
			var tvInfo = emailInvalidlView.FindViewById<TextView> (Resource.Id.tv_info_popup_notice);
			var btnOk = emailInvalidlView.FindViewById<Button> (Resource.Id.btn_ok_popup_notice);

			tvTitle.Text = title;
			tvInfo.Text = content;

			btnOk.Click += (sender, e) => {
				dialogNotice.Dismiss();
			};

			dialogNotice = builder.Create ();
			dialogNotice.SetCanceledOnTouchOutside(false);

			try {
				dialogNotice.Show ();
			} catch(Exception e){
				Console.WriteLine (e.Message);
			}
		}

		private void sendEmailProfileRequest (Guid specialistId, string myEmail, string message)
		{
			Action<string> successful = (response => {
				bool isSuccess = ParseDataHelper.parseDataEmailProfile(response);
				if (isSuccess) {
					_activity.RunOnUiThread (()=>{
						actionDelegate.onSuccess();
						showNoticeEmail(_activity.GetString(Resource.String.email_profile), _activity.GetString(Resource.String.send_email_success));
					});
				} else {
					_activity.RunOnUiThread (() => {
						actionDelegate.onFail();
						showNoticeEmail(_activity.GetString(Resource.String.email_profile), _activity.GetString(Resource.String.request_fail));
					});
				}
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDelegate.onFail();
					showNoticeEmail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
				});
			});

			DataHelperRequest.getInstance ().sendEmailProfileRequest (specialistId, myEmail, emails, message, successful, failure);
		}
	}
}

