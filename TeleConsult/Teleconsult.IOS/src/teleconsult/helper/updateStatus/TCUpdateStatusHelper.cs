using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCUpdateStatusHelper
	{
		public TCUpdateStatusHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCUpdateStatusHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void changeToStatus (Guid userId, int status)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginchangeStatusRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishchangeStatusRequest (this);

						ResultDTO result = CoreSystem.ParseDataHelper.parseDataChangeStatus(response);

						if(result.status) {
							this.Delegate.changeStatusSuccess (this, status);
						} else {
							this.Delegate.changeStatusFail (this);
						}
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishchangeStatusRequest (this);
						this.Delegate.changeStatusFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().changeStatusExpert (userId, status, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCUpdateStatusHelperDelegate
	{
		void changeStatusSuccess (TCUpdateStatusHelper helper, int newStatus);
		void changeStatusFail (TCUpdateStatusHelper helper);
		void beginchangeStatusRequest (TCUpdateStatusHelper helper);
		void finishchangeStatusRequest (TCUpdateStatusHelper helper);
	}
}

