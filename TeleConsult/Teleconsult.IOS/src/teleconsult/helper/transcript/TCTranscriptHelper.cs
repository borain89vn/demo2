using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCTranscriptHelper
	{
		public TCTranscriptHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCTranscriptHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void transcript (Guid callId, string recordUrl)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginTranscriptRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishTranscriptRequest (this);

						bool result = CoreSystem.ParseDataHelper.parseResponseTranscript(response);

						if(result) {
							this.Delegate.transcriptSuccess (this);
						} else {
							this.Delegate.transcriptFail (this);
						}
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishTranscriptRequest (this);
						this.Delegate.transcriptFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().getTranscript (callId, recordUrl, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCTranscriptHelperDelegate
	{
		void transcriptSuccess (TCTranscriptHelper helper);
		void transcriptFail (TCTranscriptHelper helper);
		void beginTranscriptRequest (TCTranscriptHelper helper);
		void finishTranscriptRequest (TCTranscriptHelper helper);
	}
}

