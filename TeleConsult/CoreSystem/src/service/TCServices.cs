using System;
using System.Collections;
using System.Collections.Generic;
using RestSharp;

namespace CoreSystem
{

	public class TCServices
	{
		/*---------------------------Get data from server ----------------------*/
		public static void getListBookingRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_LIST_BOOKING_REQUESTS_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getSpecialistProfileRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_SPECIALIST_PROFILE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getBookingInfoRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_BOOKING_INFO_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}


		public static void getSpecialistProfilesSearchRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_SPECIALIST_PROFILES_SEARCH_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getListFavoritesRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_LIST_FAVORITE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getBookingNumberRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_BOOKING_NUMBER_URL);
			request.sendGetRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getInvoiceRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_INVOICE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getSystemConfigRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_SYSTEM_CONFIG_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getTranscript (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_TRANSCRIPT_DATA);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void getStatusCurrentUser (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.GET_STATUS_CURRENT_USER);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		/*---------------------------Send API to Server---------------------------*/

		public static void sendUpdateWaiveFeeRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_UPDATE_WAIVE_FEE);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendBookingRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_BOOKING_REQUEST_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendTakNowRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_TALKNOW_REQUEST_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendRescheduleRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_RESCHEDULE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		// Confirm booking and Decline booking
		public static void sendUpdateBookingStatusRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_UPDATEBOOKINGSTATUS_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendAddToFavourite (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_ADDFAVOURITE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendRemoveFavourite (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_REMOVEFAVOURITE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendEmailProfile (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_EMAILPROFILE_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendLogin (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_LOGIN_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendLogOut (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_LOGOUT_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendUploadPhoto (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_UPLOAD_PHOTO_URL);
			request.sendFileRequest (pData, responseSuccessful, responseFailure);
		}
		public static void sendFeedback (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_FEEDBACK_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void changePassword (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_CHANGE_PASSWORD_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void forgetPassword (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_FORGET_PASSWORD_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
		public static void updateReadBookingEventRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_UPDATE_BOOKING_EVENT);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendAcceptTalkNowDeferRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_ACCEPT_TALK_NOW_DEFER);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendCancelTalkNowDeferRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_CANCEL_TALK_NOW_DEFER);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendActiveAccountRequest (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_ACTIVE_ACCOUNT_REQUEST_URL);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendDeleteAlert (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_DELETE_ALERT);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendDeleteDocument (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_DELETE_DOCUMENT);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}

		public static void sendChangeStatusExpert (JsonObject pData, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			TCHttpRequest request = new TCHttpRequest (HttpConstants.SEND_CHANGE_STATUS);
			request.sendPostRequest (pData, responseSuccessful, responseFailure);
		}
	}
}

