using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCUpdateWaiveFeeHelper
	{
		public TCUpdateWaiveFeeHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCUpdateWaiveFeeHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void update (Guid bookingId)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginUpdateWaiveFeeRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishUpdateWaiveFeeRequest (this);
						bool result = CoreSystem.ParseDataHelper.parseResponseWaiveFee(response);

						if(result) {
							this.Delegate.updateWaiveFeeSuccess (this);
						} else {
							this.Delegate.updateWaiveFeeFail (this);
						}

					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishUpdateWaiveFeeRequest (this);
						MUtils.showNetworkFailed(this.parentController);
					});
				}
			});
				
			DataHelperRequest.getInstance ().updateWaiveFee (bookingId, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCUpdateWaiveFeeHelperDelegate
	{
		void updateWaiveFeeSuccess (TCUpdateWaiveFeeHelper helper);
		void updateWaiveFeeFail (TCUpdateWaiveFeeHelper helper);
		void beginUpdateWaiveFeeRequest (TCUpdateWaiveFeeHelper helper);
		void finishUpdateWaiveFeeRequest (TCUpdateWaiveFeeHelper helper);
	}
}

