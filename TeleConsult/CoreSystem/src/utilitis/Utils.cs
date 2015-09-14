using System;
using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;

using System.Net;
using System.Reflection;

using System.Linq;
using Newtonsoft.Json.Linq;
using System.Text;
using System.Security.Cryptography;
using System.Globalization;
using System.ComponentModel;

#if __IOS__
using Foundation;

#else
#if __ANDROID__
using Android.Net;
using Android.OS;
using Android.Widget;
using Android.Graphics;
using Android.Util;
using Android.App;
using Android.Content;
using Android.Preferences;
#endif
#endif

namespace CoreSystem
{
	public class Utils
	{
		public const string EncryptionKey = "TeleConsult123x@X";

		private const string _chars = "123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

		public static string getPaymentName (int type)
		{
			string typeCard = "prepayment";
			if (type == 1) {
				typeCard = "credit card";
			} 

			return typeCard;
		}
			
		public static Constants.VERIFIED_TYPE getStatusLicense (SpecialistProfileInfos specialist)
		{
			SpecialistRegisterStep3ViewModel specialistDetail = specialist.SpecialistDetail;
			Constants.VERIFIED_TYPE status = Constants.VERIFIED_TYPE.Unlicense;

			if (specialistDetail != null) {
				if (specialistDetail.Specializations [0].LicenceToOperate) {
					if (specialistDetail.Specializations [0].ExpiredDate == null) {
						status = Constants.VERIFIED_TYPE.Unverified;
					} else {
						DateTime? expiredDate = convertDateTime (specialistDetail.Specializations [0].ExpiredDate);
						if (expiredDate == null ||  expiredDate.Value.Date >= DateTime.Now.Date) {
							status = Constants.VERIFIED_TYPE.Verified;
						} else {
							status = Constants.VERIFIED_TYPE.Expired;
						}
					}
				}
			}

			return status;
		}

		private static DateTime? convertDateTime (string sDateTime)
		{
			DateTime? parseTime = null;

			try {
				parseTime = DateTime.Parse (sDateTime);
			} catch (Exception ex) {
				#if DEBUG
				Console.Out.WriteLine (ex.Message);
				#endif
				return null;
			}

			return parseTime;
		}

		public static DateTime stringToDateTime (string date)
		{
			DateTime parseDate;
			try {
				parseDate = DateTime.Parse (date, CultureInfo.InvariantCulture, DateTimeStyles.None);
			} catch (Exception ex) {
				#if DEBUG
				Console.Out.WriteLine (ex.Message);
				#endif
				return DateTime.Now;
			}

			return parseDate;
		}


		public static string RandomString (int size)
		{
			Random _rng = new Random ();
			char[] buffer = new char[size];

			for (int i = 0; i < size; i++) {
				buffer [i] = _chars [_rng.Next (_chars.Length)];
			}
			return new string (buffer);
		}

		public static string getFileName (string filePath)
		{
			string path = "";
			try {
				string[] fileNames = filePath.Split (new string[] { "/" }, StringSplitOptions.None);
				path = fileNames.Last<string> ().Substring (22);
			} catch (Exception e) {
				return "";
			}
			return path;
		}

		// Get cost Format
		public static string getCost (double cost)
		{
			return cost.ToString ("F", new CultureInfo ("en-us"));
		}

		public static bool isShowTalkNowRequest (DateTime dtStart, DateTime dtEnd, string timezoneName)
		{
			dtStart = dtStart.AddMinutes (-5);
			DateTime dtNow;
			try {
				dtNow = TimeZoneInfo.ConvertTime (DateTime.UtcNow, System.TimeZoneInfo.Utc, System.TimeZoneInfo.FindSystemTimeZoneById (GetTimeZoneIdByName (timezoneName)));
			} catch (Exception e) {
				#if DEBUG
				Console.Write (e.Message);
				#endif
				return false;
			}

			if (dtStart <= dtNow && dtNow <= dtEnd)
				return true;
			else
				return false;
		}

		private static string GetTimeZoneIdByName (string timeZoneName)
		{
			var listTimeZone = System.TimeZoneInfo.GetSystemTimeZones ();
			System.TimeZoneInfo timeZone = listTimeZone.SingleOrDefault (x => x.DisplayName.Equals (timeZoneName));
			if (timeZone != null) {
				return timeZone.Id;
			}

			return TimeZoneInfo.Local.Id;
		}

		public static DateTime getDateTimeNow (string timezoneName)
		{
			DateTime dtNow;
			try {
				dtNow = TimeZoneInfo.ConvertTime (DateTime.UtcNow, System.TimeZoneInfo.Utc, System.TimeZoneInfo.FindSystemTimeZoneById (GetTimeZoneIdByName (timezoneName)));
			} catch (Exception e) {
				#if DEBUG
				Console.Write (e.Message);
				#endif
				return DateTime.Now;
			}

			return dtNow;
		}

		public static DateTime getDateTimeByTimeZone (DateTime dateTime,string timezoneName)
		{
			DateTime currentDate;
			try {
				currentDate = TimeZoneInfo.ConvertTime (dateTime, System.TimeZoneInfo.Utc, System.TimeZoneInfo.FindSystemTimeZoneById (GetTimeZoneIdByName (timezoneName)));
			} catch (Exception e) {
				#if DEBUG
				Console.Write (e.Message);
				#endif
				return DateTime.Now;
			}

			return currentDate;
		}

		public static bool isDisableWaivedFee(BookingInfo bookingInfo)
		{
			bool status = false;

			DateTime? tCreateInvoice = Utils.convertDateTime (bookingInfo.InvoiceCreatedDate);

			if (tCreateInvoice == null) {
				status = true;
			} else {
				DateTime timeCreateInvoice = (DateTime)tCreateInvoice;
				if (bookingInfo.IsWaiveFee || timeCreateInvoice.AddMinutes (CoreSystem.Constants.pTimeWaiveFee) <= CoreSystem.Utils.getDateTimeNow (MApplication.getInstance ().timezoneName)) {
					status = true;
				}
			}

			return status;
		}

		public static bool checkIsStandarHour (DateTime datetimeStart, DateTime datetimeEnd, List<StandardHour> listStandardHour)
		{
			bool status = false;

			if (!datetimeStart.ToShortDateString ().Equals (datetimeEnd.ToShortDateString ())) {
				status = false;
			} else {
				string dayOfWeek = datetimeStart.DayOfWeek.ToString ().Substring (0, 3);
				var specialistStandardDays = listStandardHour.Where (x => x.Day == dayOfWeek);
				if (specialistStandardDays.Count () > 0) {
					foreach (var standardHour in specialistStandardDays) {
						DateTime startStandardHour = GetDateByString (datetimeStart.ToShortDateString (), standardHour.Start.ToString ());
						DateTime endStandardHour = GetDateByString (datetimeStart.ToShortDateString (), standardHour.End.ToString ());
						if (datetimeStart >= startStandardHour) {
							if (datetimeEnd <= endStandardHour) {
								status = true;
								break;
							} else {
								status = false;
							}
						} else {
							status = false;
						}
					}
				} else {
					status = false;
				}
			}

			return status;
		}

		private static DateTime GetDateByString (string strDate, string strHour)
		{
			return DateTime.Parse (strDate + " " + strHour);
		}

		public static bool checkValidateEmail (string strEmail)
		{
			return Regex.IsMatch (strEmail, Constants.EMAIL_PATTERN);
		}

		public static bool checkValidationPass (string text)
		{
			return Regex.IsMatch (text, Constants.PASSWORD_PATTERN);
		}

		public static void getEmailsProfileFromString (string strEmails, List<string> strValidEmails, List<string> strInvalidEmails)
		{
			string[] arrEmail = strEmails.Split (',');
			foreach (var email in arrEmail) {
				if (checkValidateEmail (email.ToString ().Trim ())) {
					strValidEmails.Add (email.Trim ());
				} else {
					strInvalidEmails.Add (email.Trim ());
				}
			}
		}

		public static string getDescriptionEnum(Enum type)
		{
			DescriptionAttribute[] attributes = (DescriptionAttribute[])type.GetType().GetField(type.ToString()).GetCustomAttributes(typeof(DescriptionAttribute), false);
			return attributes.Length > 0 ? attributes[0].Description : string.Empty;
		}

		public static string Encrypt (string clearText)
		{
			byte[] clearBytes = Encoding.Unicode.GetBytes (clearText);
			using (Aes encryptor = Aes.Create ()) {
				Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes (EncryptionKey, new byte[] {
					0x49,
					0x76,
					0x61,
					0x6e,
					0x20,
					0x4d,
					0x65,
					0x64,
					0x76,
					0x65,
					0x64,
					0x65,
					0x76
				});
				encryptor.Key = pdb.GetBytes (32);
				encryptor.IV = pdb.GetBytes (16);
				using (MemoryStream ms = new MemoryStream ()) {
					using (CryptoStream cs = new CryptoStream (ms, encryptor.CreateEncryptor (), CryptoStreamMode.Write)) {
						cs.Write (clearBytes, 0, clearBytes.Length);
						cs.Close ();
					}
					clearText = Convert.ToBase64String (ms.ToArray ());
				}
			}
			return clearText;
		}

		/// <summary>
		/// Keeps the access token.
		/// </summary>
		/// <param name="accessToken">Access token.</param>
		/// <param name="context">IF iOS --- null</param>
		public static void keepAccessToken (string accessToken)
		{
			#if __IOS__
			NSUserDefaults.StandardUserDefaults.SetString(accessToken, Constants.kAccessToken);
			NSUserDefaults.StandardUserDefaults.Synchronize ();
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutString (Constants.kAccessToken, accessToken);
			editor.Commit ();
			#endif
			#endif
		}

		/// <summary>
		/// Gets the access token.
		/// </summary>
		/// <returns>The access token.</returns>
		/// <param name="context">IF iOS --- null </param>
		public static string getAccessToken ()
		{
			string accessToken = "";
			#if __IOS__
			accessToken=  NSUserDefaults.StandardUserDefaults.StringForKey (Constants.kAccessToken);
			if(accessToken == null) {
				accessToken = "";
			}
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			accessToken = prefs.GetString (Constants.kAccessToken, "");
			#endif
			#endif
			return accessToken;
		}

		public static void keepRememberLogin (bool isRemember)
		{
			#if __IOS__
			NSUserDefaults.StandardUserDefaults.SetBool(isRemember, Constants.kRememberLogin);
			NSUserDefaults.StandardUserDefaults.Synchronize ();
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutBoolean (Constants.kRememberLogin, isRemember);
			editor.Commit ();
			#endif
			#endif
		}

		public static bool getRememberLogin ()
		{
			bool isRemember = false;
			#if __IOS__
			isRemember=  NSUserDefaults.StandardUserDefaults.BoolForKey (Constants.kRememberLogin);
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			isRemember = prefs.GetBoolean (Constants.kRememberLogin, false);
			#endif
			#endif
			return isRemember;
		}
		//2015/0804 ltthuc 
		public static bool getShowPassWord ()
		{
			bool isShowPassword = false;

			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			isShowPassword = prefs.GetBoolean (Constants.kShowPassWord, false);

			return isShowPassword;
		}
		public static void keepShowPassWord (bool showpass)
		{
			
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutBoolean(Constants.kShowPassWord, showpass);
			editor.Commit ();

		}

		public static void keepUserName (string userName)
		{
			#if __IOS__
			NSUserDefaults.StandardUserDefaults.SetString(userName, Constants.kUserName);
			NSUserDefaults.StandardUserDefaults.Synchronize ();
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutString (Constants.kUserName, userName);
			editor.Commit ();
			#endif
			#endif
		}

		public static string getUserName ()
		{
			string userName = "";
			#if __IOS__
			userName=  NSUserDefaults.StandardUserDefaults.StringForKey (Constants.kUserName);
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			userName = prefs.GetString (Constants.kUserName, null);
			#endif
			#endif
			return userName;
		}


		public static void keepEmail (string email)
		{
			#if __IOS__
			NSUserDefaults.StandardUserDefaults.SetString(email, Constants.kEmail);
			NSUserDefaults.StandardUserDefaults.Synchronize ();
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutString (Constants.kEmail, email);
			editor.Commit ();
			#endif
			#endif
		}

		public static string getEmail ()
		{
			string email = "";
			#if __IOS__
			email =  NSUserDefaults.StandardUserDefaults.StringForKey (Constants.kEmail);
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			email = prefs.GetString (Constants.kEmail, null);
			#endif
			#endif
			return email;
		}


		public static void keepPassWord (string pass)
		{
			#if __IOS__
			NSUserDefaults.StandardUserDefaults.SetString(pass, Constants.kPassWord);
			NSUserDefaults.StandardUserDefaults.Synchronize ();
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutString (Constants.kPassWord, pass);
			editor.Commit ();
			#endif
			#endif
		}

		public static string getPassWord ()
		{
			string pass = "";
			#if __IOS__
			pass =  NSUserDefaults.StandardUserDefaults.StringForKey (Constants.kPassWord);
			#else
			#if __ANDROID__
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			pass = prefs.GetString (Constants.kPassWord, null);
			#endif
			#endif
			return pass;
		}

		public static string getStatusConsultant (int status)
		{
			string strStatus = "";
			switch (status) {
			case 0:
				strStatus = "Not Available";
				break;
			case 1:
				strStatus = "May be Available";
				break;
			case 2:
				strStatus = "Available Now";
				break;
			default:
				strStatus = "Not Available";
				break;
			}
			return strStatus;
		}

		#if __ANDROID__
		public static void keepScreenSize (int w, int h)
		{
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutInt (Constants.kScreenW, w);
			editor.PutInt (Constants.kScreenH, h);
			editor.Commit ();
		}

		public static int getScreenWidth ()
		{
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			return prefs.GetInt (Constants.kScreenW, 1000);
		}

		public static int getScreenHeight ()
		{
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			return prefs.GetInt (Constants.kScreenH, 1000);
		}

		public static void keepAskedFirstTimeGPS (bool isFirstTime)
		{
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			ISharedPreferencesEditor editor = prefs.Edit ();
			editor.PutBoolean (Constants.kFirstTimeGPS, isFirstTime);
			editor.Commit ();
		}

		public static bool getAskedFirstTimeGPS ()
		{
			ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences (Application.Context);
			return prefs.GetBoolean (Constants.kFirstTimeGPS, false);
		}



		public static byte[] GetByteArrayFromFile (string filename)
		{
			byte[] data = null;
			try {
				FileInfo fInfo = new FileInfo (filename);

				long numBytes = fInfo.Length;
				double dLen = Convert.ToDouble (fInfo.Length / 1000000);

				if (dLen < 4) {
					FileStream fStream = new FileStream (filename,
						                     FileMode.Open, FileAccess.Read);
					BinaryReader br = new BinaryReader (fStream);

					data = br.ReadBytes ((int)numBytes);
					br.Close ();

					fStream.Close ();
					fStream.Dispose ();
				} else {
					//Bitmap To Big
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write (ex.Message);
				#endif
			}
			return data;
		}

		public static byte[] getByteFromBitmap(Bitmap bitmap){
			byte[] byteArray = null;
			try {
				MemoryStream stream = new MemoryStream();
				bitmap.Compress(Bitmap.CompressFormat.Png, 100, stream);
				byteArray = stream.GetBuffer();
			} catch(Exception e){
				Console.Write (e.Message);
			}

			return byteArray;
		}
		#endif
	}
}
