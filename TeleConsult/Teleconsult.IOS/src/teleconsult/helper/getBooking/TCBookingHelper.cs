using System;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCBookingHelper
	{
		UIViewController parentController;
		public TCBookingHelperDelegate Delegate;

		public TCBookingHelper (UIViewController parentController)
		{
			this.parentController = parentController;
		}

		public void getBookingInfo (Guid bookingId)
		{
			Action<string> successful = (response => {
				BookingInfo bookingInfo = CoreSystem.ParseDataHelper.parseDataBookingInfo (response);

				this.parentController.InvokeOnMainThread (delegate {	
					if (this.Delegate != null) {
						if (bookingInfo != null) {
							this.Delegate.getBookingSuccess (this, bookingInfo);
						} else {
							this.Delegate.getBookingFail (this);
						}
					}
				});
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif
				this.parentController.InvokeOnMainThread (delegate {	
					MUtils.showNetworkFailed(this.parentController);
				});
			});

			DataHelperRequest.getInstance ().getBookingInfo (bookingId, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCBookingHelperDelegate
	{
		void getBookingSuccess (TCBookingHelper helper, BookingInfo info);
		void getBookingFail (TCBookingHelper helper);
	}
}

