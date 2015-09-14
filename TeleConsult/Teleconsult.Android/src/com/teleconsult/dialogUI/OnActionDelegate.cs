using System;
using CoreSystem;
using Android.Views;

namespace Teleconsult.Android
{
	public interface OnActionDelegate
	{
		void onSending();
		void onSuccess();
		void onFail();
		void onSelectTime(DateTime dateTime);
	}

	public interface OnActionGetBookingInfo{
		void onSendingGetBookingInfo();
		void onSuccessGetBookingInfo(BookingInfo bookingInfo);
		void onFailedGetBookingInfo();
	}

	public interface OnActionGetSpecInfo{
		void onSendingGetSpecInfo();
		void onSuccessGetSpecInfo(SpecialistProfileInfos specInfo);
		void onFailGetSpecInfo();
	}

	public interface OnActionDeferDelegate
	{
		void onDeferSending();
		void onDeferSuccess(DeferTalkNow deferTalkNowInfo, bool isCancelDefer);
		void onDeferFail(string title, string mess);
	}

	public interface OnActionNoticeDelegate
	{
		void onOkClick();
		void onOkClickToDestroy();
	}

	public interface OnActionConfirmDelegate
	{
		void onOkConfirmClick();
	}

	public interface OnActionLoadWebViewDelegate
	{
		void onLoadingPage();
		void onFinishedLoad();
	}

	public interface OnActionSignInDelegate
	{
		void onSendingSignIn();
		void onSignInFail(string strNotice);
		void onSignInSuccess();
		void onSignInSplashSuccess();
	}

	public interface OnRatingDelegate
	{
		void onSendingRating();
		void onSuccessRating(int iNumStar, string content);
		void onFailRating();
	}

	public interface OnTalkNowDelegate
	{
		void onTalkNowSending();
		void onTalkNowSucces();
		void onTalkNowFail(Constants.TALK_REQUEST_STATUS talkNowStatus);
	}

	public interface OnUpdateBookingStatusDelegate
	{
		void onUpdateBookingStatusSending();
		void onUpdateBookingStatusSuccess(ResultDTO result);
		void onUpdateBookingStatusFail();
	}

	public interface OnGetNumBookingDelegate
	{
		void onSuccessGetNumBooking(BookingNumber bookingNumber);
	}

	public interface OnUploadPhotoDelegate
	{
		void onSendingUpload();
		void onUploadFail();
		void onUploadSuccess(PhotoDTO photoDTO);
	}

	public interface OnViewInvoiceDelegate
	{
		void onSendingViewInvoice();
		void onViewInvoiceFail();
		void onViewInvoiceSuccess(InvoiceDTO invoice);
	}

	public interface OnGetSystemConfigDelegate
	{
		void onSendingGetConfig();
		void onSuccessGetConfig();
		void ondFailGetConfig();
	}

	public interface OnWaiveFeeDelegate
	{
		void onSendingWaiveFee();
		void onSuccessWaiveFee(bool status);
		void ondFailWaiveFee();
	}

	public interface OnTranscribeDelegate
	{
		void onSendingTranscribe();
		void onSuccessTranscribe(bool status);
		void ondFailTranscribe();
	}

	public interface OnDeleteAlertDelegate
	{
		void onDeleteAlertSuccess(bool status);
		void onDeleteAlertFail();
	}

	public interface OnSortSelectedDelegate
	{
		void onSelected(int pos, IMenu menuDashboard);
	}

	public interface OnChangeStatusDelegate
	{
		void onSelectedStatus(Constants.STATUS_CONSULTANT status);
	}

	public interface OnDeleteFileDelegate
	{
		void onDeleteSending();
		void onDeleteSuccess(bool status, BookingDocumentDto document);
		void onDeleteFail();
	}

	public interface OnUpdateStatusDelegate
	{
		void onSendingUpdateStatus();
		void onSuccessUpdateStatus(ResultDTO result, int iStatus);
		void onFailUpdateStatus();
	}

	public interface OnNoticeBetaDelegate
	{
		void onOK();
	}
}

