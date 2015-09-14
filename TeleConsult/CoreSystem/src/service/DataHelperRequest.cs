using System;
using RestSharp;
using System.Collections.Generic;

namespace CoreSystem
{
	public class DataHelperRequest
	{
		static DataHelperRequest instance;
		public DataHelperRequest ()
		{
		}

		public static DataHelperRequest getInstance()
		{
			if (instance == null) {
				instance = new DataHelperRequest ();
			}

			return instance;
		}

		public void sendLoginRequest(string username, string password, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pUserName, CoreSystem.Utils.Encrypt (username));
			jsonRequest.Add (Constants.pPassword, CoreSystem.Utils.Encrypt (password));

			TCServices.sendLogin (jsonRequest, successful, failure);
		}

		public void sendLogOutRequest(Action<string> successful, Action<string> failure)
		{
			TCServices.sendLogOut (null, successful, failure);
		}

		public void sendBookTimeRequest(Guid specialistID, Guid customerID, string strEnquiry, DateTime datetimeStart, DateTime datetimeEnd, double costPerMinute, double ratePerMinute, double customerMinCharge,double specialistMinCharge, int itype, int iStatus, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pSpecialistID, specialistID);
			jsonRequest.Add (Constants.pCustomerID, customerID);
			jsonRequest.Add (Constants.pEnquiry, strEnquiry);
			jsonRequest.Add (Constants.pStartTime, DateTime.SpecifyKind(datetimeStart, DateTimeKind.Utc));
			jsonRequest.Add (Constants.pEndTime, DateTime.SpecifyKind(datetimeEnd, DateTimeKind.Utc));
			jsonRequest.Add (Constants.pCostPerMinute, costPerMinute);
			jsonRequest.Add (Constants.pRatePerMinute, ratePerMinute);
			jsonRequest.Add (Constants.pCustomerMinCharge, customerMinCharge);
			jsonRequest.Add (Constants.pSpecialistMinCharge, specialistMinCharge);
			jsonRequest.Add (Constants.pType, itype);
			jsonRequest.Add (Constants.pStatus, iStatus);
			TCServices.sendBookingRequest (jsonRequest, successful, failure);
		}

		public void sendTalkNowRequest(Guid specialistID, Guid customerID, string strEnquiry, int itype, bool isCustomerTalkNow, Guid bookingId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();

			jsonRequest.Add (Constants.pSpecialistID, specialistID);
			jsonRequest.Add (Constants.pCustomerID, customerID);
			jsonRequest.Add (Constants.pEnquiry, strEnquiry);
			jsonRequest.Add (Constants.pIsTalkNow, isCustomerTalkNow);
			jsonRequest.Add (Constants.pBookingId, bookingId);

			TCServices.sendTakNowRequest (jsonRequest, successful, failure);
		}

		public void sendFeedbackRequest(Guid specialistID, Guid customerID, Guid iCallId, int iNumRating, string sFeedback, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();

			jsonRequest.Add (Constants.pSpecialistID, specialistID);
			jsonRequest.Add (Constants.pCustomerID, customerID);
			jsonRequest.Add (Constants.pCallId, iCallId);
			if (iNumRating > 0) {
				jsonRequest.Add (Constants.pStars, iNumRating);
			} else {
				jsonRequest.Add (Constants.pStars, null);
			}
			jsonRequest.Add (Constants.pFeedbackMessage, sFeedback);

			TCServices.sendFeedback (jsonRequest, successful, failure);
		}

		public void sendUploadPhotoRequest(bool inConference, Guid bookingId, HttpRequestFileMetadata fileMetaData, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pInConference,inConference);
			jsonRequest.Add (Constants.pBookingId,bookingId);
			jsonRequest.Add (Constants.pUploadFile, fileMetaData);
			TCServices.sendUploadPhoto (jsonRequest, successful, failure);
		}

		public void sendEmailProfileRequest(Guid specialistID, string myEmail, List<string> emails, string personalMessage, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pSpecialistID, specialistID);
			jsonRequest.Add (Constants.pDestinationEmailAddress, emails);
			jsonRequest.Add (Constants.pSourceEmailAddress, myEmail);
			jsonRequest.Add (Constants.pPersonalMessage, personalMessage);
			TCServices.sendEmailProfile (jsonRequest, successful, failure);
		}

		public void sendAddToFavorite(Guid specialistID, Guid customerID, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pCustomerID, customerID);
			jsonRequest.Add (Constants.pSpecialistID, specialistID);

			TCServices.sendAddToFavourite (jsonRequest, successful, failure);
		}

		public void sendRemoveFavorite(Guid specialistID, Guid customerID, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pCustomerID, customerID);
			jsonRequest.Add (Constants.pSpecialistID, specialistID);

			TCServices.sendRemoveFavourite (jsonRequest, successful, failure);
		}

		public void getListBookingInfos(Guid userId, bool isConsultant, int iListType,  Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pUserId, userId);
			jsonRequest.Add (Constants.pIsConsultant, isConsultant);
			jsonRequest.Add (Constants.pListtype, iListType);

			TCServices.getListBookingRequest (jsonRequest, successful, failure);
		}

		public void sendResheduleBooking(Guid idBooking, DateTime datetimeStart, DateTime datetimeEnd, bool isConsultant, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pID, idBooking);
			jsonRequest.Add (Constants.pStartTime, DateTime.SpecifyKind(datetimeStart, DateTimeKind.Utc));
			jsonRequest.Add (Constants.pEndTime, DateTime.SpecifyKind(datetimeEnd, DateTimeKind.Utc));
			jsonRequest.Add (Constants.pIsSpecialist, isConsultant);

			TCServices.sendRescheduleRequest (jsonRequest, successful, failure);
		}

		public void sendUpdateBookingStatus(Guid idBooking, int iStatus, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pID, idBooking);
			jsonRequest.Add (Constants.pStatus, iStatus);

			TCServices.sendUpdateBookingStatusRequest (jsonRequest, successful, failure);
		}

		public void sendChangePassword(string oldPassword, string newPassword, string confirmPassword, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pEmail, CoreSystem.Utils.Encrypt(CoreSystem.Utils.getEmail()));
			jsonRequest.Add (Constants.pOldPassword, CoreSystem.Utils.Encrypt(oldPassword));
			jsonRequest.Add (Constants.pNewPassword, CoreSystem.Utils.Encrypt(newPassword));
			jsonRequest.Add (Constants.pConfirmPassword, CoreSystem.Utils.Encrypt(confirmPassword));


			TCServices.changePassword (jsonRequest, successful, failure);
		}

		public void sendForgetPassword(string email, Action<string> successful, Action<string> failure){
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pEmail, CoreSystem.Utils.Encrypt(email));

			TCServices.forgetPassword (jsonRequest, successful, failure);
		}

		public void getSpecialistProfileSearch(string KeySearch, int Size, int Start, double Longtitude, double Latitude, string TypeSort, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pKeySearch, KeySearch);
			jsonRequest.Add (Constants.pSize, Size);
			jsonRequest.Add (Constants.pStart, Start);
			jsonRequest.Add (Constants.pLongtitude, Longtitude);
			jsonRequest.Add (Constants.pLatitude, Latitude);
			jsonRequest.Add (Constants.pTypeSort, TypeSort);

			TCServices.getSpecialistProfilesSearchRequest (jsonRequest, successful, failure);
		}
			
		public void getSpecialistProfileRequest (Guid specialistId, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pSpecialistID, specialistId);
			TCServices.getSpecialistProfileRequest (jsonRequest, responseSuccessful, responseFailure);
		}

		public void getListFavorites(double Longtitude, double Latitude, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pLongtitude, Longtitude);
			jsonRequest.Add (Constants.pLatitude, Latitude);
			TCServices.getListFavoritesRequest (jsonRequest, successful, failure);
		}

		public void getSpecialistProfile(Guid SpecialistId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pSpecialistID, SpecialistId);

			TCServices.getSpecialistProfileRequest (jsonRequest, successful, failure);
		}

		public void getBookingInfo(Guid bookingId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, bookingId);

			TCServices.getBookingInfoRequest (jsonRequest, successful, failure);
		}

		public void getBookingNumber(Action<string> successful, Action<string> failure){
			TCServices.getBookingNumberRequest (null, successful, failure);
		}

		public void getStatusCurrentUser(Action<string> successful, Action<string> failure)
		{
			TCServices.getStatusCurrentUser (null, successful, failure);
		}
			
		public void getInvoice(Guid bookingId, Action<string> successful, Action<string> failure) 
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, bookingId);

			TCServices.getInvoiceRequest (jsonRequest, successful, failure);
		}

		public void updateReadBookingEvent(Guid bookingEventId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingEventId, bookingEventId);

			TCServices.updateReadBookingEventRequest (jsonRequest, successful, failure);
		}
			
		public void sendAcceptTalkNowDeferRequest(Guid bookingId, bool isDefer, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, bookingId);
			jsonRequest.Add (Constants.pIsDefer, isDefer);
			TCServices.sendAcceptTalkNowDeferRequest (jsonRequest, successful, failure);
		}

		public void sendCancelTalkNowDeferRequest(Guid bookingId, bool isDefer, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, bookingId);
			jsonRequest.Add (Constants.pIsDefer, isDefer);

			TCServices.sendCancelTalkNowDeferRequest (jsonRequest, successful, failure);
		}

		public void sendActiveAccountRequest(Guid userId, string activationCode, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pUserId, userId);
			jsonRequest.Add (Constants.pActivationCode, activationCode);

			TCServices.sendActiveAccountRequest (jsonRequest, successful, failure);
		}

		public void getSystemConfig(Action<string> successful, Action<string> failure)
		{
			TCServices.getSystemConfigRequest (null, successful, failure);
		}

		public void getTranscript(Guid callId, string recordUrl, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pRecordUrl, recordUrl);
			jsonRequest.Add (Constants.pCallId, callId);

			TCServices.getTranscript (jsonRequest, successful, failure);
		}

		public void updateWaiveFee(Guid BookingId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, BookingId);

			TCServices.sendUpdateWaiveFeeRequest (jsonRequest, successful, failure);
		}

		public void deleteAlert(Guid BookingEventId, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingAlertId, BookingEventId);

			TCServices.sendDeleteAlert (jsonRequest, successful, failure);
		}

		public void deleteDocument(bool InConference, Guid BookingId, Guid DocumentId,Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pBookingId, BookingId);
			jsonRequest.Add (Constants.pDocumentId, DocumentId);
			jsonRequest.Add (Constants.pInConference, InConference);

			TCServices.sendDeleteDocument (jsonRequest, successful, failure);
		}

		public void changeStatusExpert(Guid userId, int status, Action<string> successful, Action<string> failure)
		{
			JsonObject jsonRequest = new JsonObject ();
			jsonRequest.Add (Constants.pUserId, userId);
			jsonRequest.Add (Constants.pStatus, status);

			TCServices.sendChangeStatusExpert (jsonRequest, successful, failure);
		}
	}
}

