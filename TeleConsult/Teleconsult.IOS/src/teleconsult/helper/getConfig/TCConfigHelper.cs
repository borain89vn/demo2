using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCConfigHelper
	{
		UIViewController parentController;
		public TCConfigHelperDelegate Delegate;

		public TCConfigHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void getSystemConfig ()
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginGetConfigRequest (this);
				});
			}
	
			Action<string> successful = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishGetConfigRequest (this);
				
						SystemDTO sysDTO = CoreSystem.ParseDataHelper.parseResponseSystemConfig (response);
						if (sysDTO != null) {
							this.Delegate.getConfigSuccess (this, sysDTO);
						} else {
							this.Delegate.getConfigFail (this);
						}
					});
				}
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishGetConfigRequest (this);
						this.Delegate.getConfigFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().getSystemConfig (successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCConfigHelperDelegate
	{
		void beginGetConfigRequest (TCConfigHelper helper);

		void finishGetConfigRequest (TCConfigHelper helper);

		void getConfigSuccess (TCConfigHelper helper, SystemDTO sysConfig);

		void getConfigFail (TCConfigHelper helper);
	}
}

