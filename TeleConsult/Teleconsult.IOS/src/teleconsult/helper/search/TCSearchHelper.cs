using System;
using UIKit;
using CoreGraphics;
using System.Runtime.Serialization.Json;
using System.Runtime.Serialization;
using System.IO;
using CoreSystem;
using System.Text;
using RestSharp;
using System.Collections.Generic;
using System.Drawing;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSearchHelper
	{
		public UIViewController parentVC;
		public TCSearchHelperDelegate Delegate { get; set; }

		public TCSearchHelper (UIViewController controller)
		{
			this.parentVC = controller;
		}

		public void search (string text, string sortType, int start, int batchSize)
		{
			SearchDTO searchDto = null;

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine ("SEARCH : " + response);
				#endif

				if (this.parentVC != null && this.Delegate != null) {
					this.parentVC.InvokeOnMainThread (delegate {		
						searchDto = CoreSystem.ParseDataHelper.parseResponseSearchDTO (response);
						this.Delegate.searchSuccess (this, searchDto);
					});
				}
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif
				if (this.parentVC != null && this.Delegate != null) {
					this.parentVC.InvokeOnMainThread (delegate {
						this.Delegate.searchFail (this);
						this.Delegate.finishSearchRequest(this);
					});
				}
			});
				
			if (!TCLocationManager.getInstance ().isEnableLocation ()) {
				MApplication.getInstance ().longitude = 0.0f;
				MApplication.getInstance ().latitude = 0.0f;
			}
				
			DataHelperRequest.getInstance ().getSpecialistProfileSearch (text, batchSize, start, MApplication.getInstance ().longitude, MApplication.getInstance ().latitude, sortType, successful, failure);
		}
	}

	[CLSCompliant (false)]
	public interface TCSearchHelperDelegate
	{
		void beginSearchRequest (TCSearchHelper self);

		void searchSuccess (TCSearchHelper self, SearchDTO result);

		void searchFail (TCSearchHelper self);

		void finishSearchRequest (TCSearchHelper self);
	}
}

