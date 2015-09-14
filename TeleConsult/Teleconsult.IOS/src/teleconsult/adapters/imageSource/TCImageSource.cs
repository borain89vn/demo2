using System;
using UIKit;
using Foundation;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCImageSource
	{
		private UIViewController parentVC;
		public  TCImageSourceDelegate pDelegate;
		private UIImagePickerController imagePicker;

		public TCImageSource (UIViewController parentVC)
		{
			this.parentVC = parentVC;
		}

		public void open()
		{
			UIActionSheet actionSheet = new UIActionSheet ("Upload a photo", null, "Cancel", null, new string[]{"From Library", "Take a new picture"});
			actionSheet.Clicked += delegate(object a, UIButtonEventArgs b) {

				if(b.ButtonIndex == 2) {
				} else {
					this.imagePicker = new UIImagePickerController ();
					this.imagePicker.ImagePickerControllerDelegate = new MImagePickerControllerDelegate (this);

					if(b.ButtonIndex == 0) {
						openLibrary();
					} else {
						openCamera();
					}
				}
			};

			actionSheet.ShowInView (parentVC.View);
		}

		private void openCamera()
		{
			if (UIImagePickerController.IsSourceTypeAvailable (UIImagePickerControllerSourceType.Camera)) {
				this.imagePicker.SourceType = UIImagePickerControllerSourceType.Camera;
				this.imagePicker.MediaTypes = UIImagePickerController.AvailableMediaTypes (UIImagePickerControllerSourceType.Camera);
				parentVC.PresentModalViewController (imagePicker, true);
			} else {
				TCAlertViewController alert = new TCAlertViewController (this.parentVC, TCLocalizabled.getText ("TitleAlert"),"Camera is not available", null, null, TCLocalizabled.getText ("OkTitle"));
				alert.display ();
			}
		}

		private void openLibrary()
		{
			this.imagePicker.SourceType = UIImagePickerControllerSourceType.PhotoLibrary;
			this.imagePicker.MediaTypes = UIImagePickerController.AvailableMediaTypes (UIImagePickerControllerSourceType.PhotoLibrary);
			parentVC.PresentModalViewController(imagePicker, true);
		}
			
		public void imageData(UIImage image, string name)
		{
			CGSize sizeScreen = UIScreen.MainScreen.Bounds.Size;
			UIImage lowerImage = null;
			if (this.pDelegate != null && image != null) {
				lowerImage = MUtils.MaxResizeImage (image, (float)(sizeScreen.Width / 2), (float)(sizeScreen.Height / 2));
				this.pDelegate.didLoadImageFinish (lowerImage, name);
			}

		}
	}

	[CLSCompliant (false)]
	public class MImagePickerControllerDelegate : UIImagePickerControllerDelegate
	{
		private TCImageSource pSource;

		public MImagePickerControllerDelegate(TCImageSource pSource)
		{
			this.pSource = pSource;
		}

		public override void FinishedPickingImage (UIImagePickerController picker, UIImage image, NSDictionary editingInfo)
		{
		
		}

		public override void FinishedPickingMedia (UIImagePickerController picker, NSDictionary info)
		{
			UIImage originalImage = info[UIImagePickerController.OriginalImage] as UIImage;
			picker.DismissViewController (true, FinishDissmis);

			if(originalImage != null) {
				pSource.imageData (originalImage, CoreSystem.Utils.RandomString(20) + ".png");
			}
		}
			
		public override void Canceled (UIImagePickerController picker)
		{
			picker.DismissViewController (true, FinishDissmis);
		}

		void FinishDissmis()
		{
			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostDissmisUploadPhoto, null);
		}

	}
	[CLSCompliant (false)]
	public interface TCImageSourceDelegate
	{
		void didLoadImageFinish(UIImage image, string name);
	}

}

