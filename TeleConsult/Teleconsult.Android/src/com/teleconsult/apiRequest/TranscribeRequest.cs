using System;
using Android.App;
using CoreSystem;
namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class TranscribeRequest
	{
		Activity _activity;
		public OnTranscribeDelegate transcribeDelegate { get; set;}
		public TranscribeRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getTranscribe(Guid callId, string recordUrl)
		{
			transcribeDelegate.onSendingTranscribe ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread(() => {
					bool status = ParseDataHelper.parseResponseTranscript(response);
					transcribeDelegate.onSuccessTranscribe(status);
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					transcribeDelegate.ondFailTranscribe();
				});
			});

			DataHelperRequest.getInstance ().getTranscript (callId, recordUrl, successful, failure);
		}
	}
}

