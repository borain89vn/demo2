using System;
using CoreSystem;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCProfileSpecialistHelper
	{
		UIViewController parentController;
		public TCProfileSpecialistHelperDelegate Delegate;

		public TCProfileSpecialistHelper (UIViewController parentController)
		{
			this.parentController = parentController;
		}

		public void getProfile (Guid specialistId)
		{
			Action<string> successful = (response => {
				SpecialistProfileInfos specInfo = CoreSystem.ParseDataHelper.parseDataSpecialistInfo (response);

				this.parentController.InvokeOnMainThread (delegate {	
					if (this.Delegate != null) {
						if (specInfo != null) {
							this.Delegate.getProfileSuccess (this, specInfo);
						} else {
							this.Delegate.getProfileFail (this);
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
				
			DataHelperRequest.getInstance ().getSpecialistProfile (specialistId, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCProfileSpecialistHelperDelegate
	{
		void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info);
		void getProfileFail (TCProfileSpecialistHelper helper);
	}
}

