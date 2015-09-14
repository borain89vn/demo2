using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCCurrentUserHelper
	{
		UIViewController parentController;
		public TCCurrentUserHelperDelegate Delegate { get; set; }

		public TCCurrentUserHelper (UIViewController parentVC)
		{
			this.parentController = parentVC;
		}

		public void getStatus()
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginUpdateCurrentUser (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishUpdateCurrentUser (this);

						bool result = CoreSystem.ParseDataHelper.parseResponseCommon(response);
						this.Delegate.getCurrentUserSuccess (this, result);
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishUpdateCurrentUser (this);
						this.Delegate.getCurrentUserFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().getStatusCurrentUser (successful, failure);
		}

	}

	[CLSCompliant (false)]
	public interface TCCurrentUserHelperDelegate
	{
		void beginUpdateCurrentUser (TCCurrentUserHelper sender);
		void finishUpdateCurrentUser (TCCurrentUserHelper sender);
		void getCurrentUserSuccess (TCCurrentUserHelper sender, bool status);
		void getCurrentUserFail (TCCurrentUserHelper sender);
	}
}

