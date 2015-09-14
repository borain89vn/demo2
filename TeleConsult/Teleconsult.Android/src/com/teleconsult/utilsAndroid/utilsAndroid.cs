using System;
using System.Text.RegularExpressions;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Android.Widget;
using Android.Graphics;
using CoreSystem;
using Android.App;
using Android.Content;
using Uri = Android.Net.Uri;
using System.Linq;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class utilsAndroid
	{
		public static void addFileView(Context context, List<BookingDocumentDto> documents, bool isInConference, OnAddFileToView addFiles, DeleteFile deleteFile, LinearLayout llFileAttachment){
			if (addFiles == null) {
				addFiles = new OnAddFileToView (context, deleteFile, isInConference);
			}
			addFiles.InitView (documents);
			llFileAttachment.RemoveAllViews ();
			llFileAttachment.AddView (addFiles);
		}

		public static bool checkIsExpired (DateTime datetimeEnd)
		{
			bool status = false;

			DateTime tNowTime = Utils.getDateTimeNow (MApplication.getInstance().timezoneName);

			if (datetimeEnd < tNowTime) {
				status = true;
			}

			return status;
		}
		 
		public static string getNameImageFromPath(string path){
			string strName = null;
			try {
				string[] fileNames = path.Split (new string[] { "/" }, StringSplitOptions.None);
				strName = fileNames.Last<string> ();
			} catch(Exception e){
				Console.Write (e.Message);
			}
			return strName;
		}

		public static long getMinDateMilliSeconds(){
			DateTime origin = new DateTime(1970, 1, 1);
			string tarih = origin.Date.ToString("dd/MM/yyyy");
			DateTime dt = Convert.ToDateTime(tarih);
			var datetime = Convert.ToDateTime(tarih);
			long sayi = (long)(Utils.getDateTimeNow(MApplication.getInstance().timezoneName).Date - origin.Date).TotalMilliseconds;
			return sayi;
		}

		public static void onStartRegistry(Context context){
			Intent intent = new Intent(context, typeof(RegistryWebView));
			intent.PutExtra(constants.pIsRegistry, true);
			context.StartActivity(intent);
		}

		public static void onSelectImageOk(Context context, UploadPhoto uploadPhoto, PopupNoticeInfomation popupNotice,  int requestCode, Result resultCode, Intent data, Guid bookingId, bool isInConference){				
			if (data == null) {
				try{
					Intent mediaScanIntent = new Intent (Intent.ActionMediaScannerScanFile);
					Uri contentUri = Uri.FromFile (App._file);
					mediaScanIntent.SetData (contentUri);
					//SendBroadcast (mediaScanIntent);
					uploadPhoto.onResultChoosed (contentUri, isInConference, bookingId);
				} catch(Exception e){
					Console.Write (e.Message);
					popupNotice.showNoticeDialog (context.GetString(Resource.String.title_notice), context.GetString(Resource.String.get_img_from_lib));
				}
			} else {
				uploadPhoto.onResultChoosed (data, isInConference, bookingId);
			}
		}

		public static void onStartUserProfile(Context context){
//			if(MApplication.getInstance().isConsultant) {
//				string pathUpdate = HttpConstants.BASE_URL + "My/Profile/Index";
//				Intent browserIntent = new Intent(Intent.ActionView, global::Android.Net.Uri.Parse(pathUpdate));
//				context.StartActivity(browserIntent);
//			} else {
				Intent intent = new Intent(context, typeof(RegistryWebView));
				intent.PutExtra(constants.pIsRegistry, false);
				context.StartActivity(intent);
//			}
		}

		public static void onViewFile(Context context, string path){
			Intent intent = new Intent(context, typeof(ViewWebInvoice));
			intent.PutExtra (constants.pViewFile, true);
			string fileUrl = "";
			if(path.Contains(HttpConstants.BASE_URL))
				fileUrl = System.Web.HttpUtility.UrlPathEncode (path.Trim());
			else
				fileUrl = System.Web.HttpUtility.UrlPathEncode (HttpConstants.BASE_URL + path.Trim());

			if (path.EndsWith (".pdf") || path.EndsWith (".doc") || path.EndsWith (".docx") || path.EndsWith (".xls") || path.EndsWith (".xlsx")) {
				intent.PutExtra(constants.pPathInvoice, "https://docs.google.com/gview?embedded=true&url=" + fileUrl);
			} else {
				intent.PutExtra(constants.pPathInvoice, fileUrl);
			}

			context.StartActivity(intent);

//			if (path.EndsWith (".pdf") || path.EndsWith (".doc") || path.EndsWith (".docx") || path.EndsWith (".xls") || path.EndsWith (".xlsx")) {
//				Intent intent = new Intent(context, typeof(ViewWebInvoice));
//				intent.PutExtra (constants.pViewFile, true);
//				string fileUrl = System.Web.HttpUtility.UrlPathEncode (HttpConstants.BASE_URL + path.Trim());
//				intent.PutExtra(constants.pPathInvoice, "https://docs.google.com/gview?embedded=true&url=" + fileUrl);
//				context.StartActivity(intent);
//			} else {
//				Intent intent = new Intent (context, typeof(ViewImageURL));
//				intent.PutExtra (constants.kFilePath, HttpConstants.BASE_URL + path.Trim ());
//				context.StartActivity (intent);
//			}
		}

		public static void onSignOutRequest(Activity _activity){
			new System.Threading.Thread(new System.Threading.ThreadStart(() => {
				//TCSignalRClient.getInstance().stop();
				if(MApplication.getInstance().tcSignalR != null){
					MApplication.getInstance().tcSignalR.stop();
				}
			})).Start();

			if (constants.isSignInFromSplashScreen) {
				constants.isSignInFromSplashScreen = false;
				Intent intent = new Intent (_activity, typeof(HomeActivity));
				_activity.StartActivity (intent);
			} else {
				_activity.SetResult (Result.Ok);
			}

			// Clear observer
			if (HomeDashBoard.homeDashBoardActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (HomeDashBoard.homeDashBoardActivity, Constants.kPostNotifyAlertChange);
				try{
					HomeDashBoard.homeDashBoardActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if(SearchResultActivity.searchActivity != null){
				TCNotificationCenter.defaultCenter.removeObserver (SearchResultActivity.searchActivity, constants.kAddFavoriteSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (SearchResultActivity.searchActivity, constants.kRemoveFavoriteSuccess);
				try {
					SearchResultActivity.searchActivity.Finish();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (SpecialistDetailActivity.specDetailActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (SpecialistDetailActivity.specDetailActivity, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (SpecialistDetailActivity.specDetailActivity, constants.kDeferSuccess);
				try{
					SpecialistDetailActivity.specDetailActivity.Finish();
				} catch(Exception e){
					#if DEBUG
					Console.Write(e.Message);
					#endif
				}
				//SpecialistDetailActivity.specDetailActivity = null;
			}

			if (ListFavoriteActivity.listFavoriteActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (ListFavoriteActivity.listFavoriteActivity, constants.kRemoveFavoriteSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (ListFavoriteActivity.listFavoriteActivity, constants.kAddFavoriteSuccess);
				try {
					ListFavoriteActivity.listFavoriteActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (AlertActivity.eventActivity != null) {
				try {
					TCNotificationCenter.defaultCenter.removeObserver (AlertActivity.eventActivity, Constants.kPostDeleteFileSuccess);
					TCNotificationCenter.defaultCenter.removeObserver (AlertActivity.eventActivity, constants.kUpdateAlertWhenDeleteFileLocal);
					AlertActivity.eventActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (ConfirmedRequestsActivity.confirmedActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (ConfirmedRequestsActivity.confirmedActivity, constants.kDeleteFileConfirmed);
				TCNotificationCenter.defaultCenter.removeObserver (ConfirmedRequestsActivity.confirmedActivity, Constants.kPostDeleteFileSuccess);
				try {
					ConfirmedRequestsActivity.confirmedActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if(PastBookingActivity.pastBookingActivity != null){
				TCNotificationCenter.defaultCenter.removeObserver (PastBookingActivity.pastBookingActivity, constants.kDeleteFilePast);
				TCNotificationCenter.defaultCenter.removeObserver (PastBookingActivity.pastBookingActivity, constants.kNotifyUpdateBookingInfo);
				TCNotificationCenter.defaultCenter.removeObserver (PastBookingActivity.pastBookingActivity, Constants.kPostDeleteFileSuccess);
				try {
					PastBookingActivity.pastBookingActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (PastHistoryDetail.pastDetailActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (PastHistoryDetail.pastDetailActivity, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (PastHistoryDetail.pastDetailActivity, constants.kDeferSuccess);
				try {
					PastHistoryDetail.pastDetailActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (MyProfileActivity.myProfileActivity != null) {
				try {
					TCNotificationCenter.defaultCenter.removeObserver(MyProfileActivity.myProfileActivity, constants.kGetStatusCurrentUser);
					MyProfileActivity.myProfileActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (CallingDurationActivity.callingActivity != null) {
				TCNotificationCenter.defaultCenter.removeObserver (CallingDurationActivity.callingActivity, Constants.kPostStopCall);
				TCNotificationCenter.defaultCenter.removeObserver (CallingDurationActivity.callingActivity, Constants.kPostFolloUp);
				TCNotificationCenter.defaultCenter.removeObserver (CallingDurationActivity.callingActivity, Constants.kPostUploadFileSuccess);
				try {
					CallingDurationActivity.callingActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (BookingRequestsActivity.bookingActivity != null) {
				try {
					BookingRequestsActivity.bookingActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			if (ChangePasswordActivity.changePassActivity != null) {
				try {
					ChangePasswordActivity.changePassActivity.Finish ();
				} catch(Exception ex){
					#if DEBUG
					Console.Write(ex.Message);
					#endif
				}
			}

			try {
				_activity.Finish();
			} catch(Exception ex){
				#if DEBUG
				Console.Write(ex.Message);
				#endif
			}
		}

		public static int getIconStatusResource(int iStatus){
			int iResource = Resource.Drawable.ic_available;
			switch (iStatus) {
			case (int)Constants.STATUS_CONSULTANT.Available:
				iResource = Resource.Drawable.ic_available;
				break;
			case (int)Constants.STATUS_CONSULTANT.MaybeAvailable:
				iResource = Resource.Drawable.ic_maybe_available;
				break;
			case (int)Constants.STATUS_CONSULTANT.NotAvailable:
				iResource = Resource.Drawable.ic_not_available;
				break;
			}
			return iResource;
		}

		public static int getIconRatingResource(int iRating){
			int iResource;
			switch (iRating) {
			case 1:
				iResource = Resource.Drawable.ic_1_star;
				break;
			case 2:
				iResource = Resource.Drawable.ic_2_star;
				break;
			case 3:
				iResource = Resource.Drawable.ic_3_star;
				break;
			case 4:
				iResource = Resource.Drawable.ic_4_star;
				break;
			default:
				iResource = Resource.Drawable.ic_0_star;
				break;
			}
			return iResource;
		}

		public static int getIconLiceseResource(int iType){
			int iResource;
			switch (iType) {
			case (int)Constants.VERIFIED_TYPE.Expired:
				iResource = Resource.Drawable.ic_expired;
				break;
			case (int)Constants.VERIFIED_TYPE.Unlicense:
				iResource = Resource.Drawable.ic_unlicensed;
				break;
			case (int)Constants.VERIFIED_TYPE.Unverified:
				iResource = Resource.Drawable.ic_unverified;
				break;
			case (int)Constants.VERIFIED_TYPE.Verified:
				iResource = Resource.Drawable.ic_verified;
				break;
			default:
				iResource = Resource.Drawable.ic_unlicensed;
				break;
			}
			return iResource;
		}

		public static Bitmap getRoundedShape(Bitmap scaleBitmapImage, int targetWidth, int targetHeight) {
			try{
			Bitmap targetBitmap = Bitmap.CreateBitmap(targetWidth, 
				targetHeight,Bitmap.Config.Argb8888);

			Canvas canvas = new Canvas(targetBitmap);
			global::Android.Graphics.Path path = new global::Android.Graphics.Path();
			path.AddCircle(((float) targetWidth - 1) / 2,
				((float) targetHeight - 1) / 2,
				(Math.Min(((float) targetWidth), 
					((float) targetHeight)) / 2),
				global::Android.Graphics.Path.Direction.Ccw);

			canvas.ClipPath(path);
			Bitmap sourceBitmap = scaleBitmapImage;
			canvas.DrawBitmap(sourceBitmap, 
				new Rect(0, 0, sourceBitmap.Width,
					sourceBitmap.Height), 
				new Rect(0, 0, targetWidth, targetHeight), null);
			return targetBitmap;
			}catch(Exception e){
				Console.Write (e.Message);
				return null;
			}
		}

		public static bool checkValidateTimeBooking (Activity _activity, DateTime currentTime, DateTime startTime, DateTime endTime, TextView tvTimeError)
		{
			TimeSpan tsDiffStart = startTime - currentTime;
			if (tsDiffStart.TotalMinutes >= (MApplication.getInstance().systemConfig.minimumLeadTime - 1)) {
				if (tsDiffStart.TotalMinutes <= MApplication.getInstance ().systemConfig.maximumLeadTime) {
					TimeSpan tsDiffEnd = endTime - startTime;
					if (tsDiffEnd.TotalMinutes >= MApplication.getInstance ().systemConfig.minimumBooking) {
						if (tsDiffEnd.TotalMinutes <= MApplication.getInstance ().systemConfig.maximumBooking) {
							return true;
						} else {
							tvTimeError.Text = String.Format (_activity.GetString(Resource.String.max_endTime_err), MApplication.getInstance().systemConfig.maximumBooking);
							return false;
						}
					} else {
						tvTimeError.Text = String.Format (_activity.GetString(Resource.String.min_endTime_err), MApplication.getInstance().systemConfig.minimumBooking);
						return false;
					}
				} else {
					tvTimeError.Text = String.Format (_activity.GetString(Resource.String.max_startTime_err), MApplication.getInstance().systemConfig.maximumLeadTime);
					return false;
				}
			} else {
				tvTimeError.Text = String.Format (_activity.GetString(Resource.String.min_startTime_err), MApplication.getInstance().systemConfig.minimumLeadTime);
				return false;
			}
		}

		private static bool checkWhiteSpace(EditText input){
			bool b = Regex.IsMatch (input.Text, constants.WhiteSpace);//@"\s"
			return b;
		}

		/// <summary>
		/// Checks the validation.
		/// </summary>
		/// <returns><c>true</c>, if validation was checked, <c>false</c> otherwise.</returns>
		public static bool checkValidationUserName(EditText input){
			if (checkWhiteSpace (input))
				return false;
			else
				return Regex.IsMatch (input.Text.ToString (), constants.Username);
		}

		public static bool checkValidationPass(EditText input){
			return Regex.IsMatch (input.Text.ToString (), constants.Password);
		}

		public static bool checkValidateConfirmPass(EditText pass, EditText confirmPass){
			return pass.Text.Equals (confirmPass.Text);
		}

		public static bool checkValidateEmail(EditText email){
			return Regex.IsMatch (email.Text, constants.EMAIL_PATTERN);
		}
		public static bool IsValidEmail(EditText email)
		{
			try
			{
				var addr = new System.Net.Mail.MailAddress(email.Text);
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool IsValidEmailConfirm(EditText email, EditText emailConfirm){
			return email.Text.Equals (emailConfirm.Text);
		}

		public static bool checkValidateLenghtStr(EditText input){
			return Regex.IsMatch (input.Text, constants.LenghtSTR);
		}			

		// Get list time zone
		public static List<string> GetTimeZoneList()
		{
			List<string> result = new List<string>();

			var listTimeZone = TimeZoneInfo.GetSystemTimeZones();
			foreach (var item in listTimeZone)
			{
				string str = item.DisplayName + "-" + item.DaylightName + " - " + item.BaseUtcOffset + "-" + item.StandardName;
				result.Add(str);//result.Add(item.DisplayName);
			}
			return result;
		}

		public static List<string> getListCuture(){
			List<string> listCountry = new List<string> ();
			foreach (CultureInfo ci in CultureInfo.GetCultures(CultureTypes.SpecificCultures))
			{
				string str = ci.EnglishName +" - " + ci.Name;
				listCountry.Add (str);
			}
			return listCountry;
		}
	}
}

