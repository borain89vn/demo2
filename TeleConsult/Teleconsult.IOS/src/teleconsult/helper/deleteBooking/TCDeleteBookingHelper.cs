using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCDeleteBookingHelper
	{
		public TCDeleteBookingHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCDeleteBookingHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void delete (Guid bookingEventId)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginDeleteBookingRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishDeleteBookingRequest (this);

						bool result = CoreSystem.ParseDataHelper.parseResponseCommon (response);

						if (result) {
							this.Delegate.deleteBookingSuccess (this);
						} else {
							this.Delegate.deleteBookingFail (this);
						}
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.finishDeleteBookingRequest (this);
						this.Delegate.deleteBookingFail (this);
					});
				}
			});

			DataHelperRequest.getInstance ().deleteAlert (bookingEventId, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCDeleteBookingHelperDelegate
	{
		void deleteBookingSuccess (TCDeleteBookingHelper helper);

		void deleteBookingFail (TCDeleteBookingHelper helper);

		void beginDeleteBookingRequest (TCDeleteBookingHelper helper);

		void finishDeleteBookingRequest (TCDeleteBookingHelper helper);
	}
}




