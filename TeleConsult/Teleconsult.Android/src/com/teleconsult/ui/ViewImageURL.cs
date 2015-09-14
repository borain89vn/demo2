using System;
using Android.App;
using Android.Content;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
using Macaw.UIComponents;
using Android.Graphics;

namespace Teleconsult.Android
{
	[Activity (Label = "ViewImageURL", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class ViewImageURL : BaseActivity
	{
		MultiImageView imageView;
		protected override void OnCreate(Bundle bundle)
		{
			base.OnCreate(bundle);
			RequestWindowFeature (WindowFeatures.NoTitle);
			SetContentView(Resource.Layout.view_list_image_url_layout);

			string filePath = "";
			if (this.Intent.Extras != null) {
				if (this.Intent.Extras.ContainsKey (constants.kFilePath)) {
					filePath =  this.Intent.Extras.GetString (constants.kFilePath);
				}
			}

			//var progressDialog = ProgressDialog.Show (this, "", "", true);
			//progressDialog.SetInverseBackgroundForced (true);
			//progressDialog.SetContentView(new ProgressBar(this));

			//progressDialog.SetCancelable (true);
			//progressDialog.SetCanceledOnTouchOutside (true);

			// Get our button from the layout resource,
			// and attach an event to it
			imageView = FindViewById<MultiImageView>(Resource.Id.imgURL);

			// Sets images for the slider icons and their size
			imageView.SliderSelectedIcon = BitmapFactory.DecodeResource(Resources, Resource.Drawable.slider_blt_grn);
			imageView.SliderUnselectedIcon = BitmapFactory.DecodeResource(Resources, Resource.Drawable.slider_blt_trans);
			imageView.SetSliderIconDimensions(30, 30);

			// Sets an image for the Magnify button (and its size) in the top left and enables the ZoomImage event 
			imageView.MagnifyIcon = BitmapFactory.DecodeResource(Resources, Resource.Drawable.ic_close_large);
			imageView.SetMagnifyIconDimensions(100, 100);
			imageView.MagnifyEnabled = true;
			// I want to show pictures in the imageview that are online, giving the MultiImageView a list of URLs to download at SampleSize 2 (2x scaled down) 
			imageView.DownloadedImageSampleSize = 2;
			string[] arrPath = {filePath};

//			imageView.LoadImageList(new [] {
//				""
//			});

			imageView.LoadImageList(arrPath);

			// Adding eventhandlers for when an image is loaded so I can update the imageview to show its images, and an eventhandler for when the Magnify button is pressed
			imageView.ImagesLoaded += (sender, e) =>
			{   // Loads the first image in the list
				RunOnUiThread(imageView.LoadImage);
				//progressDialog.Dismiss();
			};

			imageView.ZoomImageEvent += (sender, e) => {
				// Fire whatever code you want to happen on a Magnify click
				//imageView.SetScaleType(ImageView.ScaleType.FitXy);
				Finish();
			};
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}
	}
}

