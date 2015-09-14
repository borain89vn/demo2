using Android.Widget;
using Android.Webkit;
using Android.App;
using Android.Views;
using Android.OS;
using System;
using Android.Graphics;
using CoreSystem;
using Android.Content;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "Invoice", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class ViewWebInvoice : BaseActivity
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.registry_webview_layout);

			ActionBar.Title = "Invoice";
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle ("Invoice");

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);

			constants.currentActivity = this;

			string pathInvoice= "";

			if (this.Intent.Extras != null) {
				if (this.Intent.Extras.ContainsKey (constants.pPathInvoice)) {
					pathInvoice = this.Intent.Extras.GetString (constants.pPathInvoice);
				}
				if (this.Intent.Extras.ContainsKey (constants.pViewFile)) {
					hideHeading ();
				}
			} else {
				Finish ();
			}

			WebView webView = FindViewById<WebView>(Resource.Id.LocalWebView);
			webView.Settings.JavaScriptEnabled = true;

			// allow zooming/panning
			webView.Settings.BuiltInZoomControls = true;
			webView.Settings.SetSupportZoom(true);        
			webView.Settings.DisplayZoomControls = false;
			webView.Settings.UseWideViewPort = true;        

			webView.SetWebChromeClient (new WebChromeClient ());
       
			webView.ScrollBarStyle = ScrollbarStyles.OutsideOverlay; 

			webView.Settings.AllowFileAccess = true;
			webView.Settings.SetPluginState (WebSettings.PluginState.On);
			webView.Settings.LoadWithOverviewMode = true;

			// so there's no 'white line'            
			webView.ScrollbarFadingEnabled = false;
			webView.SetWebViewClient (new MyWebClientInvoice (this, llProgress));

			webView.LoadUrl(pathInvoice);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}

		[CLSCompliant(false)]
		public class MyWebClientInvoice: WebViewClient
		{
			Activity _activity;
			LinearLayout _llProgress;

			public MyWebClientInvoice(Activity _activity, LinearLayout llProgress){
				this._activity = _activity;
				this._llProgress = llProgress;
			}
			public override void OnPageStarted (WebView view, string url, Bitmap favicon)
			{
				base.OnPageStarted (view, url, favicon);
				_llProgress.Visibility = ViewStates.Visible;
			}

			public override void OnPageFinished (WebView view, string url)
			{
				base.OnPageFinished (view, url);
				_llProgress.Visibility = ViewStates.Gone;
			}
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}
	}
}

