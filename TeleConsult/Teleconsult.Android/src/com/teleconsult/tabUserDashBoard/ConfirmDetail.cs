using Android.App;
using Android.OS;
using Android.Views;
using Android.Widget;
using System;
using CoreSystem;
using Android.Text;
using Android.Content;
using Android.Graphics;
using System.Globalization;
using UrlImageViewHelper;
using Android.Graphics.Drawables;
using Uri = Android.Net.Uri;
using System.Collections.Generic;


namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "ConfirmDetail", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]			
	public class ConfirmDetail : BaseActivity, IUrlImageViewCallback, OnActionDelegate, OnUpdateBookingStatusDelegate, OnUploadPhotoDelegate, OnTalkNowDelegate, OnActionNoticeDelegate, OnDeleteFileDelegate
	{
		DateTime datetimeStart;
		DateTime datetimeEnd;
		UpdateBookingStatus updateBookingStatus;
		UploadPhoto uploadPhoto;
		LinearLayout llFileAttachment;
		LinearLayout llProgress;
		TalkNowUI talkNowUI;
		PopupNoticeInfomation popupNotice;
		OnAddFileToView addFiles;
		DeleteFile deleteFile;
		List<BookingDocumentDto> bookingDocs = new List<BookingDocumentDto>();

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.popup_confirm_bookings);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo;
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo);

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			popupNotice = new PopupNoticeInfomation(this);
			popupNotice.noticeDelegate = this;

			deleteFile = new DeleteFile (this);
			deleteFile.deleteFileAction = this;

			var avatar = FindViewById<ImageView> (Resource.Id.avatar_popup_booking);
			var tvName = FindViewById<TextView> (Resource.Id.tv_name_popup_booking);
			var tvTitleTime = FindViewById<TextView> (Resource.Id.tv_title_proposed_time);
			var tvConfirmedTime = FindViewById<TextView> (Resource.Id.tv_time_popup_booking);
			var tvFee = FindViewById<TextView> (Resource.Id.tv_fee_popup_booking);
			var btnAddfile = FindViewById<Button> (Resource.Id.btn_addfile_confirm_booking);
			var btnTalkNowRequest = FindViewById<Button> (Resource.Id.btn_request_talknow_booking);
			var btnDecline = FindViewById<Button> (Resource.Id.btn_decline_confirm_booking);
			llFileAttachment = FindViewById<LinearLayout> (Resource.Id.llFileAttachConfirmed);
			var tvEnquiry = FindViewById<TextView> (Resource.Id.tv_enquiry_booking);
			var tvFeeTitle = FindViewById<TextView> (Resource.Id.tv_title_cost_confirm);

			btnTalkNowRequest.SetText(Resource.String.talkNow_title_button);
			btnAddfile.SetText(Resource.String.add_file_btn);
			tvTitleTime.SetText(Resource.String.confirmed_time_title);

			btnTalkNowRequest.Visibility = ViewStates.Gone;
			if (MApplication.getInstance ().isConsultant) {
				if (Utils.isShowTalkNowRequest (DateTime.Parse (constants.bookingInfo.StartTime), DateTime.Parse (constants.bookingInfo.EndTime), MApplication.getInstance ().timezoneName)){
					btnTalkNowRequest.Visibility = ViewStates.Visible;
				}
			}
			tvEnquiry.Text = constants.bookingInfo.Enquiry;
			datetimeStart = DateTime.Parse (constants.bookingInfo.StartTime);
			datetimeEnd = DateTime.Parse (constants.bookingInfo.EndTime);
			if (datetimeStart.Date == datetimeEnd.Date) {
				tvConfirmedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			} else {
				tvConfirmedTime.Text = datetimeStart.ToString (constants.sDateFormat) + " " + datetimeStart.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper () + " - " + datetimeEnd.ToString (constants.sDateFormat) + " " + datetimeEnd.ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper ();
			}

			string fee = "";
			if (MApplication.getInstance ().isConsultant) {
				fee = "$" + Utils.getCost (constants.bookingInfo.RatePerMinute) + " " + GetString (Resource.String.price_per_minute);
			} else {
				fee = "$" + Utils.getCost (constants.bookingInfo.CostPerMinute) + " " + GetString (Resource.String.price_per_minute);
			}
			if (!MApplication.getInstance ().isConsultant) {
				fee += " ($" + Utils.getCost(constants.bookingInfo.CustomerMinCharge) + " minimum)";
			} else if(!constants.bookingInfo.IsApplyNoMinimumCharge){
				fee += " ($" + Utils.getCost (constants.bookingInfo.SpecialistMinCharge) + " minimum)";
			}
			tvFee.Text = fee;

			if (MApplication.getInstance().isConsultant) {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.CustomerAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.bookingInfo.CustomerName;
				tvFeeTitle.Text = "CONSULTATION FEE";
			} else {
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.SpecialistAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvName.Text = constants.bookingInfo.SpecialistName;
				tvFeeTitle.Text = "APPLICABLE COST";
			}

			btnTalkNowRequest.Click += (sender, e) => {
				if (Utils.isShowTalkNowRequest (DateTime.Parse (constants.bookingInfo.StartTime), DateTime.Parse (constants.bookingInfo.EndTime), MApplication.getInstance ().timezoneName)){
					MApplication.getInstance().customerID = constants.bookingInfo.CustomerId;
					if(talkNowUI == null){
						talkNowUI = new TalkNowUI(this);
						talkNowUI.actionTalknowDelegate = this;
					}
					talkNowUI.talknowRequest(false, constants.bookingInfo.Id);
				} else {
					showExpiredNotice();
				}
			};
			uploadPhoto = new UploadPhoto(this);
			uploadPhoto.actionUploadPhotoDelegate = this;

			btnAddfile.Click += (sender, e) => {
				if (!utilsAndroid.checkIsExpired(DateTime.Parse (constants.bookingInfo.EndTime))){
					if(uploadPhoto == null){
						uploadPhoto = new UploadPhoto(this);
						uploadPhoto.actionUploadPhotoDelegate = this;
					}
					uploadPhoto.selectActionUpload();
				} else {
					showExpiredNotice();
				}
			};

			btnDecline.Text = GetString (Resource.String.cancel_consultation);
			btnDecline.Click += (sender, e) => {
				if (!utilsAndroid.checkIsExpired(DateTime.Parse (constants.bookingInfo.EndTime))){
					if(updateBookingStatus == null){
						updateBookingStatus = new UpdateBookingStatus(this);
						updateBookingStatus.actionUpdateBookingStatus = this;
					}
					updateBookingStatus.showDeclineBookingConfirm();
				} else {
					showExpiredNotice();
				}
			};	

			if (constants.bookingInfo.BookingDocuments != null && constants.bookingInfo.BookingDocuments.Count > 0) {
				int isize = constants.bookingInfo.BookingDocuments.Count;
				for (int i = 0; i < isize; i++) {
					bookingDocs.Add(constants.bookingInfo.BookingDocuments[i]);
				}
				utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
			}

			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostUploadFileSuccess, new TCSelector (onUploadFileSuccess));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteFileSuccess));
		}

		public void onUploadFileSuccess(object documentDTO) {
			this.RunOnUiThread (() => {
				BookingDocumentDto document = (BookingDocumentDto)documentDTO;
				if(document.BookingId == constants.bookingInfo.Id) {
					bookingDocs.Add(document);
					utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
				}
			});
		}

		public void onDeleteFileSuccess(object documentDTO) {
			this.RunOnUiThread (() => {
				BookingDocumentDto document = (BookingDocumentDto)documentDTO;
				onActionDeleteFile(document);
			});
		}

		private void onActionDeleteFile(BookingDocumentDto document){
			if (document.BookingId == constants.bookingInfo.Id) {
				TCNotificationCenter.defaultCenter.postNotification(constants.kDeleteFileConfirmed, document);
				TCNotificationCenter.defaultCenter.postNotification(constants.kUpdateAlertWhenDeleteFileLocal, document);
				var documentDto = bookingDocs.Find (x => x.Id == document.Id) as BookingDocumentDto;
				if(documentDto != null) {
					bookingDocs.Remove((BookingDocumentDto)documentDto);
					utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
				}
			}
		}

		private void showExpiredNotice() {
			popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice), GetString(Resource.String.expired_time_request_talkNow_notice));
			TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyAlertChange, null);
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if ((requestCode == constants.SELECT_PICTUER) && (resultCode == Result.Ok)) {
				utilsAndroid.onSelectImageOk (this, uploadPhoto, popupNotice, requestCode, resultCode, data, constants.bookingInfo.Id, true);
			}
		}
			
		public override void OnBackPressed ()
		{
			base.OnBackPressed ();
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
		}

		#region OnActionDelegate implementation

		public void onSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccess ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onSelectTime (DateTime dateTime)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		#endregion

		#region OnDeclineBookingDelegate implementation

		public void onUpdateBookingStatusSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onUpdateBookingStatusSuccess (ResultDTO result)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(result != null) {
					if(result.status) {
						popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice), GetString(Resource.String.request_success));
					} else {
						if(result.message != null) {
							popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice), result.message);
						} else {
							popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
						}
					}
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
				}
			});
		}

		public void onUpdateBookingStatusFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		#region OnUploadPhotoDelegate implementation

		public void onSendingUpload ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onUploadFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onUploadSuccess (PhotoDTO photoDTO)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;

				bookingDocs.Add(photoDTO.bookingDocument);
				utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
			});
		}

		#endregion

		#region OnTalkNowDelegate implementation

		public void onTalkNowSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onTalkNowSucces ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(popupNotice == null){
					popupNotice = new PopupNoticeInfomation(this);
					popupNotice.noticeDelegate = this;
				}
				popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.expert_dial_title));
				ConfirmedRequestsActivity.setDataToListView();
			});
		}
			
		public void onTalkNowFail (Constants.TALK_REQUEST_STATUS talkNowStatus)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				switch(talkNowStatus) {
				case Constants.TALK_REQUEST_STATUS.BalanceIsExpire:
					popupNotice.showNoticeDialog(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.talknow_notice_balance));
					break;
				case Constants.TALK_REQUEST_STATUS.CallInProgress:
					popupNotice.showNoticeDialog(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.talknow_notice_inprogress));
					break;
				case Constants.TALK_REQUEST_STATUS.SystemError:
					popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.connection_fail));
					break;
				case Constants.TALK_REQUEST_STATUS.BookingCanceled:
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.talknow_cancel_notice));
					TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyAlertChange, null);
					break;
				case Constants.TALK_REQUEST_STATUS.CallServiceUnavailable:
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.twilio_expired));
					break;
				default:
					break;
				}
			});
		}
		#endregion

		#region OnActionConfirmDelegate implementation

		public void onOkClick ()
		{
		}
		public void onOkClickToDestroy ()
		{
			Finish ();
		}
		#endregion

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		#region OnDeleteFileDelegate implementation

		public void onDeleteSending ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}
		 
		public void onDeleteSuccess (bool status, BookingDocumentDto document)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(status) {
					onActionDeleteFile(document);
				} else {
					popupNotice.showNoticeDialog (GetString (Resource.String.delete_title), String.Format(GetString (Resource.String.delete_fail), document.OriginalFileName));
				}
			});
		}

		public void onDeleteFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				popupNotice.showNoticeDialog (GetString (Resource.String.title_notice), GetString (Resource.String.connection_fail));
			});
		}

		#endregion
	}
}

