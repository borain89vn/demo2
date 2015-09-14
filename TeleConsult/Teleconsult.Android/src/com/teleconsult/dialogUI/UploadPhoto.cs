using System;
using System.Collections.Generic;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Graphics;
using Android.OS;
using Android.Provider;
using Android.Widget;
using Java.IO;
using Environment = Android.OS.Environment;
using Uri = Android.Net.Uri;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public static class App{
		public static File _file;
		public static File _dir;     
		public static Bitmap bitmap;
	}

	[CLSCompliant(false)]
	public class UploadPhoto : Dialog, OnActionNoticeDelegate
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		byte[] bImages;

		public OnUploadPhotoDelegate actionUploadPhotoDelegate { set; get; }

		public UploadPhoto (Activity _activity):base(_activity)
		{
			this._activity = _activity;

			if (IsThereAnAppToTakePictures())
			{
				CreateDirectoryForPictures();
			}

		}

		private void CreateDirectoryForPictures()
		{
			App._dir = new File(Environment.GetExternalStoragePublicDirectory(Environment.DirectoryPictures), "Tele");
			if (!App._dir.Exists())
			{
				App._dir.Mkdirs();
			}
		}

		private void TakeAPicture(object sender, EventArgs eventArgs)
		{
			Intent intent = new Intent(MediaStore.ActionImageCapture);

			App._file = new File(App._dir, String.Format("myPhoto_{0}.jpg", Guid.NewGuid()));

			intent.PutExtra(MediaStore.ExtraOutput, Uri.FromFile(App._file));

			_activity.StartActivityForResult(intent, constants.SELECT_PICTUER);
		}

		private bool IsThereAnAppToTakePictures()
		{
			Intent intent = new Intent(MediaStore.ActionImageCapture);
			IList<ResolveInfo> availableActivities = _activity.PackageManager.QueryIntentActivities(intent, PackageInfoFlags.MatchDefaultOnly);
			return availableActivities != null && availableActivities.Count > 0;
		}


		public void selectActionUpload(){
			var optionView = LayoutInflater.Inflate (Resource.Layout.popup_option_select_photo, null);

			var btnFromLibrary = optionView.FindViewById<Button> (Resource.Id.btnLibrary);
			var btnTakePhoto = optionView.FindViewById<Button> (Resource.Id.btnTakePhoto);

			btnFromLibrary.Click += (sender, e) => {
				openChooserFileUpload(false);
				dialog.Dismiss();
			};

//			btnTakePhoto.Click += (sender, e) => {
//				openChooserFileUpload(true);
//				dialog.Dismiss();
//			};

			btnTakePhoto.Click += (sender, e) => {
				TakeAPicture(sender, e);
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (optionView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.Show ();
		}

		private void openChooserFileUpload(bool isTakePhoto){
			if (isTakePhoto) {
				Intent camera = new Intent(MediaStore.ActionImageCapture);   
				_activity.StartActivityForResult(camera, constants.SELECT_PICTUER);
			} else {
				Intent fromLib = new Intent();
				fromLib.SetType("image/*");
				fromLib.SetAction(Intent.ActionGetContent);
				_activity.StartActivityForResult(Intent.CreateChooser(fromLib, "Select Picture"), constants.SELECT_PICTUER);
			}
		}

		public void onResultChoosed(Intent data, bool isInconference, Guid bookingId){
			Uri uri = global::Android.Net.Uri.Parse(data.DataString);
			string path = GetPathToImage (uri);
			if (path == null) {
				Bitmap bitmap = null;
				try {
					bitmap = MediaStore.Images.Media.GetBitmap (_activity.ContentResolver, uri);
				} catch (FileNotFoundException e) {
					e.PrintStackTrace ();
				} catch (IOException e) {
					e.PrintStackTrace ();
				}
				bImages = Utils.getByteFromBitmap (bitmap);
				if (bImages == null) {
					PopupNoticeInfomation popupNotice = new PopupNoticeInfomation (_activity);
					popupNotice.showNoticeDialog (_activity.GetString (Resource.String.title_notice), _activity.GetString (Resource.String.get_img_from_lib));
					return;
				}
			} else {
				bImages = Utils.GetByteArrayFromFile (path);
			}
			if (bImages != null) {
				sendUploadPhotoRequest (isInconference, bookingId, bImages, utilsAndroid.getNameImageFromPath(path));
			} else {
				PopupNoticeInfomation popupNotice = new PopupNoticeInfomation (_activity);
				popupNotice.showNoticeDialog (_activity.GetString (Resource.String.title_notice), _activity.GetString (Resource.String.get_img_from_lib));
				return;
			}
		}

		public void onResultChoosed(Uri uri, bool isInconference, Guid bookingId){
			string path = uri.Path;
			if (path == null) {
				PopupNoticeInfomation popupNotice = new PopupNoticeInfomation (_activity);
				popupNotice.showNoticeDialog (_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.get_img_from_lib));
				return;
			}
			bImages = Utils.GetByteArrayFromFile (path);
			if (bImages != null) {
				sendUploadPhotoRequest (isInconference, bookingId, bImages, utilsAndroid.getNameImageFromPath(path));
			}
		}

		private string GetPathToImage(Uri uri)
		{
			string path = null;
			try{
				string docId = "";
				using (var cr = _activity.ContentResolver.Query (uri, null, null, null, null)) {
					cr.MoveToFirst ();
					String documentId = cr.GetString (0);
					docId = documentId.Substring (documentId.LastIndexOf (":") + 1);
				}

				// The projection contains the columns we want to return in our query.
				string selection = global::Android.Provider.MediaStore.Images.Media.InterfaceConsts.Id + " =? ";
				using (var cursor = _activity.ManagedQuery(global::Android.Provider.MediaStore.Images.Media.ExternalContentUri, null, selection, new string[] {docId}, null))
				{
					if (cursor == null) return path;
					var columnIndex = cursor.GetColumnIndexOrThrow(global::Android.Provider.MediaStore.Images.Media.InterfaceConsts.Data);
					cursor.MoveToFirst();
					path = cursor.GetString(columnIndex);
				}
			}catch(Exception e){
				System.Console.WriteLine (e.Message);
			}
			return path;
		}

		private void sendUploadPhotoRequest (bool isInconference, Guid bookingId, byte[] bImages, string fileName)
		{
			actionUploadPhotoDelegate.onSendingUpload ();
			Action<string> successful = (response => {
				PhotoDTO photoDTO = ParseDataHelper.parseResponseUploadPhoto(response);
				_activity.RunOnUiThread (()=>{
					if(photoDTO.status){
						actionUploadPhotoDelegate.onUploadSuccess(photoDTO);
					} else {
						actionUploadPhotoDelegate.onUploadFail();
						if(photoDTO.message != null && !photoDTO.message.Equals("")){
							PopupNoticeInfomation popup = new PopupNoticeInfomation(_activity);
							popup.showNoticeDialog(_activity.GetString(Resource.String.upfile_title), photoDTO.message);
						}
						else {
							PopupNoticeInfomation popup = new PopupNoticeInfomation(_activity);
							popup.showNoticeDialog(_activity.GetString(Resource.String.upfile_title), _activity.GetString(Resource.String.uploadPhotoFail));
						}
					}
				});
			});
			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					actionUploadPhotoDelegate.onUploadFail();
					PopupNoticeInfomation popup = new PopupNoticeInfomation(_activity);
					popup.showNoticeDialog(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
				});
			});
			if (fileName == null || fileName.Equals("")) {
				fileName = Utils.RandomString (20) + ".png";
			}
			HttpRequestFileMetadata metaData = new HttpRequestFileMetadata (bImages, fileName);
			DataHelperRequest.getInstance ().sendUploadPhotoRequest (isInconference, bookingId, metaData, successful, failure);
		}

		#region OnActionNoticeDelegate implementation

		public void onOkClick ()
		{

		}

		public void onOkClickToDestroy ()
		{

		}

		#endregion
	}
}

