using System;

namespace CoreSystem
{

	public class HttpConstants
	{
		//public const String BASE_URL = "http://123.30.92.157/"; // Thai
		//"http://192.168.107.81/"; a Thu
		//public const String BASE_URL = "http://192.168.106.64/";
		//public const String BASE_URL = "https://teleconsult.expert/";
		//public const String BASE_URL = "https://staging.teleconsult.expert/";
		//public const String BASE_URL = "https://qa.teleconsult.expert/";
	public const String BASE_URL = "https://dev.teleconsult.expert/"; 
		//public const String BASE_URL = "http://192.168.107.82:1111/";

		// GET
		public const String GET_TRANSCRIPT_DATA = "api/bookingapi/TranscriptionRequest";
		public const String GET_INVOICE_URL = "api/BookingApi/ViewInvoice";
		public const String GET_LIST_BOOKING_REQUESTS_URL = "api/BookingApi/ListBookingApiByType";
		public const String GET_SPECIALIST_PROFILE_URL = "api/SpecialistProfileApi/SpecialistProfile";
		public const String GET_SPECIALIST_PROFILES_SEARCH_URL = "api/SearchApi/StandardSearch";
		public const String GET_LIST_FAVORITE_URL = "api/FavouriteApi/Favourites";
		public const String GET_BOOKING_NUMBER_URL = "api/BookingApi/NumberBooking";
		public const String GET_BOOKING_INFO_URL = "api/BookingApi/BookingInfo";
		public const String GET_SYSTEM_CONFIG_URL = "api/SystemConfigApi/GetSystemConfig";
		public const String GET_STATUS_CURRENT_USER = "api/AccountApi/IsAccountActived";

		// SEND
		public const String SEND_DELETE_DOCUMENT = "api/bookingapi/DeleteBookingDocument";
		public const String SEND_UPDATE_WAIVE_FEE = "api/bookingapi/UpdateWaiveFee";
		public const String SEND_ACTIVE_ACCOUNT_REQUEST_URL = "api/AccountApi/VerifyPhoneNumber";
		public const String SEND_TALKNOW_REQUEST_URL = "api/Callapi/TalkNow";
		public const String SEND_BOOKING_REQUEST_URL = "api/bookingapi/CreateBooking";
		public const String SEND_RESCHEDULE_URL = "api/Bookingapi/RescheduleBooking";
		public const String SEND_UPDATEBOOKINGSTATUS_URL = "api/BookingApi/UpdateBookingStatus";
		public const String SEND_ADDFAVOURITE_URL = "api/FavouriteApi/AddToFavourite";
		public const String SEND_REMOVEFAVOURITE_URL = "api/FavouriteApi/RemoveFromFavourite";
		public const String SEND_EMAILPROFILE_URL = "api/SendEmailApi/EmailProfileToSomeone";
		public const String SEND_LOGIN_URL = "api/AccountApi/Login";//AccountApi //LoginApi
		public const String SEND_LOGOUT_URL = "api/AccountApi/Logoff";//AccountApi //LoginApi
		public const String SEND_UPLOAD_PHOTO_URL = "api/UploadFilesApi/UploadAFile";
		public const String SEND_FEEDBACK_URL = "api/FeedbackAndRatingApi/FeedbackAndRating";
		public const String SEND_CHANGE_PASSWORD_URL = "api/AccountApi/ChangePassword";
		public const String SEND_FORGET_PASSWORD_URL = "api/AccountApi/ForgetPassword";
		public const String SEND_UPDATE_BOOKING_EVENT = "api/BookingApi/UpdateBookingEventStatus";
		public const String SEND_ACCEPT_TALK_NOW_DEFER = "api/BookingApi/TalkNowDeferAndReSchedule";
		public const String SEND_CANCEL_TALK_NOW_DEFER = "api/BookingApi/CancelTalkNowDeferAndReSchedule";
		public const String SEND_DELETE_ALERT = "api/BookingApi/DeleteBookingEventById";
		public const String SEND_CHANGE_STATUS = "api/AccountApi/UpdateUserStatus";
	}
}
