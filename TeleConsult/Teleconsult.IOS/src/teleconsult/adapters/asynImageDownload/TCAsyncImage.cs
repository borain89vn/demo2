using System;
using CoreSystem;
using Foundation;
using UIKit;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCAsyncImage
	{
		static TCAsyncImage instance;

		private NSCache cacheImages;

		public TCAsyncImage ()
		{
			cacheImages = new NSCache ();
		}

		public static TCAsyncImage getInstance ()
		{
			if (instance == null) {
				instance = new TCAsyncImage ();
			}
		
			return instance;
		}

		public async void BeginDownloadingPOC (UIViewController controller, UIImageView imageView, UIActivityIndicatorView acIndicator, string imagePath, bool isCache)
		{
			if (acIndicator != null)
				acIndicator.StartAnimating ();

			UIImage data = null;
			if (imagePath != null)
				data = await GetImageData (imagePath, isCache);
				
			CGPoint center = imageView.Center;

			UIImage finalImage = null;
			if (data != null) {
				finalImage = MUtils.scaledToWidth (data, imageView.Frame.Width * 2);
				imageView.Frame = new CGRect (0.0f, 0.0f, finalImage.Size.Width / 2, finalImage.Size.Height / 2);
			}

			imageView.Image = getImageFrom (finalImage, "noimage.png");
			imageView.Center = center;

			if (acIndicator != null) {
				acIndicator.StopAnimating ();
				acIndicator.Color = UIColor.Clear;
			}
		}

		public async void BeginDownloadingAvatar (UIViewController controller, UIImageView imageView, UIActivityIndicatorView acIndicator, string imagePath, bool isCache)
		{

			if (acIndicator != null)
				acIndicator.StartAnimating ();

			UIImage image = null;
			if (imagePath != null)
				image = await GetImageData (imagePath, isCache);

			imageView.Image = getImageFrom (image);

			if (acIndicator != null) {
				acIndicator.StopAnimating ();
				acIndicator.Color = UIColor.Clear;
			}
		}

		public async void BeginDownloadingImage (UIViewController controller, UITableView tableView, NSIndexPath path, List<SpecialistProfileInfos> listSpecialist, SpecialistProfileInfos info, bool isCache)
		{
			// Queue the image to be downloaded. This task will execute
			// as soon as the existing ones have finished.
			UIImage data = null;
			if (info.Account.AvatarPath != null)
				data = await GetImageData (info.Account.AvatarPath, true);

			info.SpecialistDetail.ImageAvatar = getImageFrom (data);
			if (controller != null) {
				controller.InvokeOnMainThread (() => {
					TCSearchCellTemplate cell = null;

					cell = tableView.VisibleCells.Where (c => c.Tag == listSpecialist.IndexOf (info)).FirstOrDefault () as TCSearchCellTemplate;
			
					if (cell != null) {
						cell.avatar.Image = getImageFrom (data);
						cell.indicator.StopAnimating ();
						cell.indicator.Color = UIColor.Clear;
					}
				});
			}
		}

		private UIImage getImageFrom (UIImage data)
		{
			return getImageFrom (data, "noavatar.png");
		}

		private UIImage getImageFrom (UIImage data, string defaultImage)
		{
			UIImage image = null;
			if (data == null) {
				image = UIImage.FromFile (defaultImage);
			} else {
				image = data;
			}
				
			return image;
		}

		public bool isExistImage(string key)
		{
			bool result = false;

			if (this.cacheImages.ObjectForKey (new NSString (key)) != null) {
				result = true;
			}

			return result;
		}

		public UIImage GetImageFromCache (string key) 
		{
			UIImage result = null;
			if (key != null) {
				if (this.cacheImages.ObjectForKey (new NSString (key)) != null) {
					result = (UIImage)this.cacheImages.ObjectForKey (new NSString (key));
				}
			}

			return result;
		}

		async Task<UIImage> GetImageData (string imagePath, bool isCache)
		{
			UIImage result = null;

			string pathFile = CoreSystem.HttpConstants.BASE_URL + imagePath.Substring (1);

			byte[] data = null;

			try {
				UIApplication.SharedApplication.NetworkActivityIndicatorVisible = true;

				using (var c = new GzipWebClient ())
					data = await c.DownloadDataTaskAsync (pathFile);

				if (data != null) {
					result = UIImage.LoadFromData (NSData.FromArray (data));
				}

				if (result != null && isCache) {
					this.cacheImages.SetObjectforKey (result, new NSString (imagePath));
				}
			} catch (Exception ex) {
				result = null;
			} finally {
				UIApplication.SharedApplication.NetworkActivityIndicatorVisible = false;
			}

			return result;
		}
	}

	public class GzipWebClient : WebClient
	{
		protected override WebRequest GetWebRequest (Uri address)
		{
			var request = base.GetWebRequest (address);
			if (request is HttpWebRequest)
				((HttpWebRequest)request).AutomaticDecompression = DecompressionMethods.Deflate | DecompressionMethods.GZip;
			return request;
		}
	}
}

