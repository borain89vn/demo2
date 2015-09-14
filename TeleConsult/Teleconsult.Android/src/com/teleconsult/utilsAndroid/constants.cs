using System;
using CoreSystem;
using Android.App;


namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class constants
	{
		// Regular validation
		public const string Password = @"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,20}$";
		public const string Email = @"^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$";
		public const string Image = @"([^\s]+(\.(?i)(jpg|png|gif|bmp))$)";
		public const string Username = @"^[_a-zA-Z][\w\S]*[a-zA-Z]*.{2,20}$";
		public const string Number = @"^[0-9]+$";
		public const string WhiteSpace = @"\s";
		public const string CharactersAndNumbers = @"^[a-zA-Z0-9][\w\s]*[a-zA-Z0-9]$";
		public const string CurrencyExcepNegative = @"^(\()?[0-9]+(?>,[0-9]{3})*(?>\.[0-9]{2})?(?(1)\))$";
		public const string EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		public const string LenghtSTR = @"^.{3,20}$";

		public const int EXIT_ACTIVITY = 50;
		public const int SELECT_PICTUER = 100;

		public static SpecialistProfileInfos specialistInfo;
		public static BookingInfo bookingInfo;
		public static BookingEvent eventInfo;
		public const string pKeyWordSearch = "TextSearch";
		public const string pIsRegistry = "Registry";
		public const string pPathInvoice = "pathInvoice";
		public const string pPathAudioFile = "pathAudioFile";
		public const string pViewFile = "ViewFile";
		public const string pIsStandard = "isStandard";
		public const string pEnquiry = "strEnquiry";
		public static bool isSearchHome = false;
		public const int iTimeLoading = 1000;
		public const string kAddFavoriteSuccess = "AddFavoriteSuccess";
		public const string kRemoveFavoriteSuccess = "RemoveFavoriteSuccess";
		public static bool isSignInFromSplashScreen { get; set; }
		public static Activity currentActivity { get; set; }
		public static Activity currentActivityNotLogIn { get; set; }
		public static DurationInfo durationInfo { get; set; }
		public static DeferInfo deferInfo { get; set; }
		public const string kDeferSuccess = "DeferSuccessNotice";
		public const string kFilePath = "FilePath";
		public const string kUploadFileCalling = "UploadFileCalling";
		public const string kDeleteFileConfirmed = "DeleteFileConfirmed";
		public const string kUpdateAlertWhenDeleteFileLocal = "UpdateAlertWhenDeleteFileLocal";
		public const string kDeleteFilePast = "DeleteFilePast";
		public const string kGetStatusCurrentUser = "GetStatusCurrentUser";
		public const string kNotifyUpdateBookingInfo = "NotifyUpdateBookingInfo";
		public const string sDateFormat = "dd/MM/yyyy";
		public const string sTimeFormat = "hh:mm tt";
		public const string sDateTimeFormat = "dd/MM/yyyy hh:mm tt";

		public static bool isRemoveObserverTalkNow { get; set; }

		public static bool isLoginByAnother { get; set; }
		public static NetworkStatusMonitor network;
	}

//	public class UploadImageDTO
//	{
//		public Guid bookingId;
//		public string imgPath;
//		public UploadImageDTO (Guid bookingId, string imgPath)
//		{
//			this.bookingId = bookingId;
//			this.imgPath = imgPath;
//		}
//	}
}

