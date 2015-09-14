using System;
using UIKit;
using Foundation;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSendPhotoHelper
	{
		private UIViewController parentController;
		public TCSendPhotoHelperDelegate Delegate;

		public TCSendPhotoHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void sendPhoto (bool pInConference, Guid bookingId, UIImage imageUpload, string name)
		{
			Action<string> successful = (response => {
			
				this.parentController.InvokeOnMainThread (delegate {	
					if (this.Delegate != null) {

						PhotoDTO photoDTO = CoreSystem.ParseDataHelper.parseResponseUploadPhoto(response);

						string message = "";
						string title = TCLocalizabled.getText("TitleAlertUpload");
						if (photoDTO.status) {
							message = TCLocalizabled.getText("TextMessageUploadSuccess");
						} else if (photoDTO.message == null || photoDTO.message.Equals("")) {
							message = TCLocalizabled.getText("TextRequestFail");
						} else {
							message = photoDTO.message;
						}
							
						this.Delegate.sendPhotoResult (this, photoDTO, title, message);
					}
				});
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif
				this.parentController.InvokeOnMainThread (delegate {	

					if (this.Delegate != null) {
						this.Delegate.sendPhotoResult (this, new PhotoDTO(), TCLocalizabled.getText("TitleNetworkStatus"), TCLocalizabled.getText("TextConnectionFailed"));
					}
				});
			});
				
			byte[] myByteImage = MUtils.UIImageToByteArray (imageUpload);

			HttpRequestFileMetadata fileMetadata = new HttpRequestFileMetadata (myByteImage, name);
			DataHelperRequest.getInstance ().sendUploadPhotoRequest (pInConference, bookingId, fileMetadata, successful, failure);
		}
			
	}

	[CLSCompliant (false)]
	public interface TCSendPhotoHelperDelegate
	{
		void sendPhotoResult (TCSendPhotoHelper helper, PhotoDTO photoDto, string title, string message);
	}
}

