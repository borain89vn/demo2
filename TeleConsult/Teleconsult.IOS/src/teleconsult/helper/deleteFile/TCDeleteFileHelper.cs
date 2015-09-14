using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCDeleteFileHelper
	{
		public TCDeleteFileHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCDeleteFileHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void delete (bool inConference, BookingDocumentDto document)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginDeleteFileRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishDeleteFileRequest (this);

						bool result = CoreSystem.ParseDataHelper.parseResponseCommon (response);

						if (result) {
							this.Delegate.deleteFileSuccess (this, document);
							TCNotificationCenter.defaultCenter.postNotification(MConstants.kPostRefreshAlertFileDeleted, document);
						} else {
							this.Delegate.deleteFileFail (this, document);
						}
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishDeleteFileRequest (this);
						this.Delegate.deleteFileFail (this, document);
					});
				}
			});

			DataHelperRequest.getInstance ().deleteDocument (inConference, document.BookingId, document.Id, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCDeleteFileHelperDelegate
	{
		void deleteFileSuccess (TCDeleteFileHelper helper, BookingDocumentDto document);

		void deleteFileFail (TCDeleteFileHelper helper, BookingDocumentDto document);

		void beginDeleteFileRequest (TCDeleteFileHelper helper);

		void finishDeleteFileRequest (TCDeleteFileHelper helper);
	}
}

