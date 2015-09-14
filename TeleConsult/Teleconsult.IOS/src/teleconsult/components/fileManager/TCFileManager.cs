using System;
using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCFileManager")]
	public partial class TCFileManager : UIView
	{
		public static readonly UINib Nib;

		public UIViewController parentController;
		static TCFileManager ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCFileManager", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCFileManager", NSBundle.MainBundle);
			}
		}
		public TCFileManager (IntPtr p) : base(p)
		{

		}

		public static TCFileManager Create ()
		{
			return (TCFileManager)Nib.Instantiate (null, null) [0];
		}

		partial void close (NSObject sender)
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostLoadFileCompleted);
			this.RemoveFromSuperview();
		}


		public void showFile(string fileUrl) 
		{
			if (fileUrl == null) {
				fileUrl = String.Format ("http://docs.google.com/gview?embedded=true&url={0}", "");
				showImage (fileUrl);
			} else {
				fileUrl = System.Web.HttpUtility.UrlPathEncode (fileUrl);
				if (fileUrl.Contains (".pdf")) {
					fileUrl = fileUrl.Substring (1);
					fileUrl = CoreSystem.HttpConstants.BASE_URL + fileUrl;
					fileUrl = String.Format ("http://docs.google.com/gview?embedded=true&url={0}", fileUrl);
					showDocument (fileUrl);
				} else {
					showImage (fileUrl);
				}
			}
		}
			
		private void showDocument(string fileUrl)
		{
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostLoadFileCompleted, hideIndicator);

			this.activityIndicatorView.StartAnimating ();
			this.webViewFile.Delegate = new TCWebViewDelegate (null);

			this.webViewFile.LoadRequest(new NSUrlRequest(new NSUrl(fileUrl))); 
		}
			
		private void showImage(string imageUrl)
		{
			this.webViewFile.Hidden = true;
			TCAsyncImage.getInstance().BeginDownloadingPOC (this.parentController, this.imageView, this.activityIndicatorView, imageUrl, true);
		}

		#region Notification Local
		public void hideIndicator(object notification)
		{
			this.activityIndicatorView.StopAnimating ();
			this.activityIndicatorView.Color = UIColor.Clear;
		}

		#endregion
		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();

			this.scrollView.Layer.CornerRadius = 5.0f;
			this.scrollView.Layer.BorderWidth = 2.0f;
			this.scrollView.Layer.BorderColor = UIColor.White.CGColor;

			//this.scrollView.ContentSize = this.imageView.Image.Size;
			this.scrollView.MaximumZoomScale = 2f;
			this.scrollView.MinimumZoomScale = .1f;
			this.scrollView.ViewForZoomingInScrollView += (UIScrollView sv) => { return imageView; };


			UITapGestureRecognizer doubletap = new UITapGestureRecognizer(OnDoubleTap) {
				NumberOfTapsRequired = 2 // double tap
			};
			//scrollView.AddGestureRecognizer(doubletap); 
		}

		private void OnDoubleTap (UIGestureRecognizer gesture) {
			if (scrollView.ZoomScale >= 1)
				scrollView.SetZoomScale(0.25f, true);
			else
				scrollView.SetZoomScale(2f, true);
		}
	}
}

