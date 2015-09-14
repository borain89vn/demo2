using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCLogOutHelper
	{
		public TCLogOutHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCLogOutHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void logOut ()
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginlogoutRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif
				if (parentController != null) {
					this.parentController.InvokeOnMainThread (delegate {
						if (TCGlobals.getInstance.isWatingLogin || MApplication.getInstance().isLogedIn) {
							#if DEBUG
							Console.Out.WriteLine("COULD NOT ABORT REQUESTS");
							#endif
						} else {
							TCRequestManager.getInstance ().abortAll ();
						}
					});
				
					if (this.Delegate != null) {
						this.parentController.InvokeOnMainThread (delegate {
							this.Delegate.finishlogoutRequest (this);

							bool result = CoreSystem.ParseDataHelper.parseResponseCommon (response);

							if (result) {
								this.Delegate.logoutSuccess (this);
							} else {
								this.Delegate.logoutFail (this);
							}
						});
					}
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishlogoutRequest (this);
						this.Delegate.logoutFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().sendLogOutRequest (successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCLogOutHelperDelegate
	{
		void logoutSuccess (TCLogOutHelper helper);

		void logoutFail (TCLogOutHelper helper);

		void beginlogoutRequest (TCLogOutHelper helper);

		void finishlogoutRequest (TCLogOutHelper helper);
	}
}

