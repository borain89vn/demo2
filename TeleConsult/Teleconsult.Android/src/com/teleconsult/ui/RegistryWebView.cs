using Android.Widget;
using Android.Webkit;
using Android.App;
using Android.Views;
using Android.OS;
using System;
using Android.Graphics;
using CoreSystem;
using Android.Content;
using Java.IO;
using Uri = Android.Net.Uri;
using Android.Provider;
using Java.Interop;
using Android.Runtime;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "RegistryWebView", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class RegistryWebView : BaseActivity
	{
		bool isRegistry;
		IValueCallback mUploadMessage;
		private static int FILECHOOSER_RESULTCODE = 2888;
		private Uri mCapturedImageURI = null;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.registry_webview_layout);

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);

			isRegistry = false;
			if (this.Intent.Extras != null) {
				if (this.Intent.Extras.ContainsKey (constants.pIsRegistry)) {
					isRegistry = this.Intent.Extras.GetBoolean (constants.pIsRegistry);
				}
			} else {
				Finish ();
			}

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			if (isRegistry) {
				ActionBar.SetTitle (Resource.String.registry_title);
				setHeadingTitle (Resource.String.registry_title);
			} else {
				ActionBar.Title = "Profile management";
				setHeadingTitle ("Profile management");
			}
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			WebView webView = FindViewById<WebView>(Resource.Id.LocalWebView);
			webView.Settings.JavaScriptEnabled = true;

			// allow zooming/panning            
			webView.Settings.BuiltInZoomControls = true;
			webView.Settings.SetSupportZoom(true);        
			webView.Settings.DisplayZoomControls = false;
			webView.Settings.UseWideViewPort = true;

			webView.Settings.AllowFileAccess = true;
			webView.Settings.AllowContentAccess = true;
			webView.Settings.SetPluginState (WebSettings.PluginState.On);
			webView.Settings.JavaScriptCanOpenWindowsAutomatically = true;
			webView.Settings.PluginsEnabled = true;
			webView.Settings.LoadWithOverviewMode = true;

			var chrome = new MyWCC ((uploadMsg, acceptType, capture) => {
				mUploadMessage = uploadMsg;
				selectActionUpload();
			});
				
			webView.SetWebChromeClient (chrome);

			webView.SetWebViewClient (new MyWebClient (this,llProgress, isRegistry));

			if (isRegistry) {
				constants.currentActivityNotLogIn = this;
				webView.LoadUrl(HttpConstants.BASE_URL + string.Format("Account/Register?role=Customer&accessToken={0}", Guid.Empty));
			} else {
				string pathUpdate = string.Format ("My/Profile/Index?accessToken={0}", Utils.getAccessToken());
				webView.LoadUrl(HttpConstants.BASE_URL+ pathUpdate);
				constants.currentActivity = this;
			}
		}

		AlertDialog.Builder builder;
		Dialog dialog;
		public void selectActionUpload(){
			var optionView = LayoutInflater.Inflate (Resource.Layout.popup_option_select_photo, null);

			var btnFromLibrary = optionView.FindViewById<Button> (Resource.Id.btnLibrary);
			var btnTakePhoto = optionView.FindViewById<Button> (Resource.Id.btnTakePhoto);

			btnFromLibrary.Click += (sender, e) => {
				openChooserFileUpload(false);
				dialog.Dismiss();
			};	
			btnTakePhoto.Click += (sender, e) => {
				TakeAPicture(sender, e);
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (this);
			builder.SetView (optionView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.SetOnCancelListener (new OnCancelDialogWebView (this, mUploadMessage));
			dialog.Show ();
		}

		private void TakeAPicture(object sender, EventArgs eventArgs){
			File imageStorageDir = new File(global::Android.OS.Environment.GetExternalStoragePublicDirectory( global::Android.OS.Environment.DirectoryPictures), "AndroidExampleFolder");
			if (!imageStorageDir.Exists()) {
				// Create AndroidExampleFolder at sdcard
				imageStorageDir.Mkdir();
			}

			// Create camera captured image file path and name 
			File file = new File(imageStorageDir + File.Separator + "IMG_" + Utils.RandomString(10) + ".jpg");

			mCapturedImageURI = Uri.FromFile(file); 

			// Camera capture image intent
			Intent captureIntent = new Intent(global::Android.Provider.MediaStore.ActionImageCapture);

			captureIntent.PutExtra(MediaStore.ExtraOutput, mCapturedImageURI);

			StartActivityForResult(captureIntent, FILECHOOSER_RESULTCODE);
		}

		private void openChooserFileUpload(bool isTakePhoto){
			var i = new Intent (Intent.ActionGetContent);
			i.AddCategory (Intent.CategoryOpenable);
			i.SetType ("image/*");
			StartActivityForResult (Intent.CreateChooser (i, "File Chooser"), FILECHOOSER_RESULTCODE);
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent intent)
		{
			if (requestCode == FILECHOOSER_RESULTCODE) {
				if (null == mUploadMessage)
					return;
				Uri result=null;
				if (resultCode == Result.Ok) {
					result = intent == null ? mCapturedImageURI : intent.Data;
				}
				mUploadMessage.OnReceiveValue (result);
				mUploadMessage = null;
			}
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				TCNotificationCenter.defaultCenter.postNotification (constants.kGetStatusCurrentUser, null);
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		public override bool OnKeyUp (Keycode keyCode, KeyEvent e)
		{
			if (keyCode == Keycode.Back) {
				TCNotificationCenter.defaultCenter.postNotification (constants.kGetStatusCurrentUser, null);
			}
			return base.OnKeyUp (keyCode, e);
		}
	}		

	[CLSCompliant(false)]
	public class OnCancelDialogWebView: Java.Lang.Object, IDialogInterfaceOnCancelListener
	{
		Activity _activity;
		IValueCallback _mUploadMessage;
		public OnCancelDialogWebView(Activity _activity, IValueCallback mUploadMessage)
		{
			this._activity = _activity;
			this._mUploadMessage = mUploadMessage;
		}

		public void OnCancel(IDialogInterface dialog)
		{
			dialog.Dismiss ();
			this._mUploadMessage.OnReceiveValue (null);
			this._mUploadMessage = null;
		}
	}

	[CLSCompliant(false)]
	public class MyWebClient: WebViewClient
	{
		Activity _activity;
		bool isRegistry;
		LinearLayout _llProgress;

		public MyWebClient(Activity _activity, LinearLayout llProgress, bool isRegistry){
			this._activity = _activity;
			this.isRegistry = isRegistry;
			this._llProgress = llProgress;
		}
		public override void OnPageStarted (WebView view, string url, Bitmap favicon)
		{
			_llProgress.Visibility = ViewStates.Visible;
			if (isRegistry) {
				if (url.Equals(HttpConstants.BASE_URL + "Account/Login")) {
					_llProgress.Visibility = ViewStates.Gone;
					_activity.Finish ();
				}
			} else {
				if (url.Contains("Booking/ListBooking")) {
					_llProgress.Visibility = ViewStates.Gone;
					TCNotificationCenter.defaultCenter.postNotification (constants.kGetStatusCurrentUser, null);
					_activity.Finish ();
				}
			}
			if (url.Contains (HttpConstants.BASE_URL + "S3/teleconsult-web-dev")
			    && (url.Contains (".pdf") || url.Contains (".doc") || url.Contains (".docx"))) {
				// || url.Contains (".png") || url.Contains (".jpg") || url.Contains (".jpeg") || url.Contains (".gif") || url.Contains (".bmp")
				utilsAndroid.onViewFile (_activity, url);
			} else {
				base.OnPageStarted (view, url, favicon);
			}
		}

		public override void OnPageFinished (WebView view, string url)
		{
			base.OnPageFinished (view, url);
			_llProgress.Visibility = ViewStates.Gone;
		}
	}

	partial class MyWCC : WebChromeClient
	{
		Action<IValueCallback, Java.Lang.String, Java.Lang.String> callback;

		public MyWCC (Action<IValueCallback, Java.Lang.String, Java.Lang.String> callback)
		{
			this.callback = callback;
		}

		//For Android 4.1
		[Java.Interop.Export]
		public void openFileChooser (IValueCallback uploadMsg, Java.Lang.String acceptType, Java.Lang.String capture)
		{
			callback (uploadMsg, acceptType, capture);
		}

//		public void openFileChooser(IValueCallback uploadMsg, String acceptType, String capture) {
//
//		}   
//		public void openFileChooser(IValueCallback uploadMsg, String acceptType) {
//
//		}   
//		public void openFileChooser(IValueCallback uploadMsg) {
//
//		}
//		public void OpenFileChooser(IValueCallback uploadMsg, Java.Lang.String acceptType, Java.Lang.String capture) {
//
//		}
	}
}

