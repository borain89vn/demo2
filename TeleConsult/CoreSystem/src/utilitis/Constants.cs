using System;
using System.ComponentModel;


namespace CoreSystem
{
	public class Constants
	{
		// Key for parse data
		public const string kStatus = "Success";
		public const string kMessage = "Error";

		public const int pTimeWaiveFee = 30;

		// Preference key
		public const string kAccessToken = "ACCESS_TOKEN";
		public const string kRememberLogin = "REMEMBER_LOGIN";
		public const string kUserName = "USERNAME";
		public const string kEmail = "EMAIL";
		public const string kPassWord = "PASSWORD";
		public const string kScreenW = "SCREEN_WIDTH";
		public const string kScreenH = "SCREEN_HEIGHT";
		public const string kFirstTimeGPS = "FIRST_TIME_GPS";
		public const String kShowPassWord = "SHOW_PASSWORD";
		// Notification Key
		public const string kPostCallDuration = "CALL_DURATION";
		public const string kPostUploadFileSuccess = "UPLOAD_FILE_SUCCESS";
		public const string kPostDeleteFileSuccess = "DELETE_FILE_SUCCESS";
		public const string kPostStopCall = "STOP_CALL";
		public const string kPostFolloUp = "FOLLOW_UP_START";
		public const string kUpdateTalkNowStep = "TALKNOW_UPDATE_STEP";
		public const string kPostNotifyCloseBalance = "NOTIFY_CLOSE_BALANCE";
		public const string kPostNotifyCloseBalanceCalling = "NOTIFY_CLOSE_BALANCE_CALLING";
		public const string kPostDeferOrRescheduleTalkNow = "DEFER_OR_RESCHEDULE_TALK_NOW";
		public const string kPostNotifyAlertChange = "NOTIFY_ALERT_CHANGE";
		public const string kPostNotifySignOut = "NOTIFY_ACCOUNT_SIGNOUT";
		public const string kPostNotifyDeferAccept = "ACCEPT_DEFER_TALK_NOW";
		public const string kPostNotifyDeclineConferrence = "DECLINE_CONFERRENCE";
		public const string kNetworkOff = "NETWORK_CHANGED_OFF";
		public const string kNetworkNotAvailable = "NETWORK_NOT_AVAILABLE";
		public const string kDissmisRefreshHeaderTable = "DISSMIS_REFRESH_HEADER_TABLE";
		public const string kPushAvailabilityStatus = "PUSH_AVAILABILITY_STATUS";
		// Key for Book time request
		public const string pSpecialistID = "SpecialistID";
		public const string pCustomerID = "CustomerID";
		public const string pEnquiry = "Enquiry";
		public const string pStartTime = "StartTime";
		public const string pEndTime = "EndTime";
		public const string pCostPerMinute = "CostPerMinute";
		public const string pRatePerMinute = "RatePerMinute";
		public const string pCustomerMinCharge = "CustomerMinCharge";
		public const string pSpecialistMinCharge = "SpecialistMinCharge";
		public const string pIsTalkNow = "IsTalkNow";
		public const string pType = "Type";
		public const string pBookingId = "bookingId";
		public const string pDocumentId = "FileId";
		public const string pBookingAlertId = "Id";
		public const string pBookingEventId = "BookingEventId";
		public const string pIsDefer = "IsDefer";
		// Key for Update booking
		public const string pID = "ID";
		public const string pStatus = "Status";

		// Key for Reschedule booking
		// id, startTime, endTime, IsSpecialist
		public const string pIsSpecialist = "IsSpecialist";
		public const string pRecordUrl = "recordUrl";
		// Key for getListBookingRequest
		public const string pUserId = "UserId";
		public const string pIsConsultant = "IsConsultant";
		public const string pListtype = "listtype";

		// Key for Send Upload Photo
		public const string pInConference = "inConference";
		public const string pCallSid = "callSid";
		public const string pUploadFile = "UPLOAD_FILE";

		// Key for Send Email Profile
		// customerId, specialistId, DestinationEmailAddress
		public const string pDestinationEmailAddress = "DestinationEmailAddress";
		public const string pSourceEmailAddress = "SourceEmailAddress";
		public const string pPersonalMessage = "PersonalMessage";

		// Key for Add/Remove Favorite
		// customerId, specialistId

		// Key for giving feedback
		// customerId, specialistId
		public const string pCallId = "CallId";
		public const string pStars = "Stars";
		public const string pFeedbackMessage = "FeedbackMessage";

		// Key for Login
		public const string pEmail = "Email";
		public const string pUserName = "UserName";
		public const string pPassword = "Password";
		public const string pActivationCode = "ActivationCode";


		// Key for Search
		public const string pKeySearch = "KeySearch";
		public const string pSize = "Size";
		public const string pStart = "Start";
		public const string pLongtitude = "Longtitude";
		public const string pLatitude = "Latitude";
		public const string pTypeSort = "TypeSort";

		//Key for Password
		public const string pOldPassword = "OldPassword";
		public const string pNewPassword = "NewPassword";
		public const string pConfirmPassword = "ConfirmPassword";
	
		public enum LOGIN_STATUS
		{
			NULL = 0, // for new user before confirming email
			InActive = 1, //for user has just confirmed email but not yet activate payment account
			Active = 2,
			Locked = 3, // for user has been disabled by admin
			Expired = 4
		}

		public enum STATUS
		{
			Cancel = 0,
			Requested = 1,
			Confirmed = 2,
			SpecialistRescheduled = 3,
			CustomerRescheduled = 4,
			Finish = 5
		};

		public enum TALKNOWTYPE
		{
			TALKNOW = 1,
			ASAP = 2,
			//BOOKTIME = 3,
			STANDARD = 4,
			OUTOFF = 5
		};

		public enum VERIFIED_TYPE 
		{
			[Description("Unlicensed (not required)")]
			Unlicense,
			[Description("Unverified")]
			Unverified,
			[Description("Expired")]
			Expired,
			[Description("License Verified")]
			Verified 
		};
	
		public enum ALERT_EVENT_TYPE 
		{
			PHOTO = 0,
			REQUEST = 1,
			CONFIRMED = 2,
			PAST = 3,
			IN_PROGRESS = 4
		};


		public enum TALK_REQUEST_STATUS
		{
			None = 0,
			BalanceIsExpire = 1,
			CallInProgress = 2, 
			SystemError = 3,
			BookingCanceled = 4,
			BookingCalling = 5,
			CallServiceUnavailable = 6
		};

				
		public enum LISTTYPE{
			ALERTS = 0,
			BOOKINGREQUESTS = 1,
			CONFIRMEDBOOKINGS = 2,
			PASTHISTORY = 3
		};

		public enum STATUS_CONSULTANT{
			[Description("Not Available")]
			NotAvailable = 0,
			[Description("May be Available")]
			MaybeAvailable = 1,
			[Description("Available")]
			Available = 2
		};

		public enum USERTYPE{
			CUSTOMER = 1,
			CONSULTANT = 2
		};

		public enum PaymentMethod
		{
			CreditCard = 1,
			PrePayment = 2
		}

		public const string EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		public const string PASSWORD_PATTERN = @"^(?=.*?[A-Z])(?=.*?[0-9]).{7,30}$";

		public enum SortBy
		{
			ProximityASC,
			ProximityDESC,
			RateASC,
			RateDESC,
			Availability,
			TypeASC,
			TypeDESC,
			FeedbackASC,
			FeedbackDESC,
			NameASC,
			NameDESC
		}

		// AlertShortDescription
		public const string BookingRequestMade = "Booking request made";
		public const string RequiredOnBookingRequest = "Required on booking request";
		public const string BookingTimeApproach = "Start time is approaching";
		public const string BookingRequestConfirmed = "Booking request confirmed";
		public const string BookingRequestDeclined = "Booking request declined";
		public const string ScheduleDeclined = "Schedule declined";
		public const string ConfirmedBookingTimeApproach = "Confirmed booking time is approaching";
		public const string ConfirmedBookingIsCancelled = "Confirmed booking is cancelled";
		public const string FailedConferenceAttempt = "Failed conference attempt";
		public const string FailedAttemptsCancellation = "Failed attempts cancellation";
		public const string EndOfConsultationWindow = "End of consultation window";
		public const string FileUploadedToBooking = "File uploaded to booking";

		public enum ParamatricBusinessRules
		{
			SUBSCRIPTION_FEES,
			COMMISSION_LEVELS,
			MARGINS,
			FILE_UPLOAD_LIMITS,
			EXPIRY_TIMEFRAME,
			MINIMUM_BOOKING,
			MAXIMUM_BOOKING,
			MINIMUM_LEAD_TIME,
			MAXIMUM_LEAD_TIME,
			VIRTUAL_CONSULTATION_COST,
			MARK_UP_ON_PLATFORM,
			MARK_UP_ON_SPECIALIST_RATE,
			BASIC_FEE,
			STARTING_TIME
		}
	}
}