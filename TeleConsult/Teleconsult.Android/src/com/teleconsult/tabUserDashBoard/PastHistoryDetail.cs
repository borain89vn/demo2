using Android.App;
using Android.OS;
using Android.Widget;
using System.Collections.Generic;
using System;
using Android.Views;
using CoreSystem;
using Android.Views.InputMethods;
using Android.Content;
using System.Linq;
using Android.Graphics;
using Android.Text;
using System.Globalization;
using Android.Graphics.Drawables;
using UrlImageViewHelper;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "PastDetail", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]					
	public class PastHistoryDetail : BaseActivity, IUrlImageViewCallback,
		OnActionDelegate, OnActionFavoriteDelegate, OnRatingDelegate,
		OnTalkNowDelegate, OnUploadPhotoDelegate, OnViewInvoiceDelegate,
	OnActionNoticeDelegate, OnTranscribeDelegate, OnActionGetSpecInfo, 
	OnActionConfirmDelegate, OnWaiveFeeDelegate, OnDeleteFileDelegate,
	OnActionGetBookingInfo
	{
		ImageView imgFavorite;
		bool isStandardHour;
		BookPreTimeUI dialogBookPreTime;
		FavoriteUI dialogFavorite;
		RatingFeedbackUI dialogFeedback;
		RatingFeedbackReview dialogFeedbackReview;
		TextView tvStandardCost;
		TextView tvAnotherCost;
		TextView tvTalkNowCost;
		ImageView numRating;
		ImageView imgRating;
		ImageView imgEmailProfile;
		LinearLayout llStatusPass;
		LinearLayout llDetailPass;
		ImageView imgIconStep2;
		TextView tvDialStep2;
		TextView tvDeferInfo;
		UploadPhoto uploadPhoto;
		LinearLayout llFileAttachment;

		TextView tvExpiredNotice;
		LinearLayout llSoonest;
		LinearLayout llStandard;
		LinearLayout llAnother;
		LinearLayout llTalknow;
		LinearLayout llActionBooking;

		TextView tvDateStartCall;
		TextView tvTimeStartCall;
		TextView tvDateEndCall;
		TextView tvTimeEndCall;
		TextView tvDuration;
		LinearLayout llGroupFee;
		TextView tvNoticeWaivedFee;

		TextView tvCost;
		TextView tvFee;
		InvoiceDTO invoice;
		GetInvoiceRequest invoiceRequest;
		PopupNoticeInfomation popupNotice;
		PopUpConfirm popupConfirm;
		TranscribeRequest transcribe;
		public static PastHistoryDetail pastDetailActivity;
		OnAddFileToView addFiles;
		DeleteFile deleteFile;
		List<BookingDocumentDto> bookingDocs = new List<BookingDocumentDto>();

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.pastbooking_detail);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo;
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (GetString(Resource.String.consultation_titile) + constants.bookingInfo.ReferenceNo);

			var tvName = FindViewById<TextView> (Resource.Id.tv_name_past_detail);
			var avatar = FindViewById<ImageView> (Resource.Id.avatar_past_detail);
			numRating = FindViewById<ImageView> (Resource.Id.img_num_rating_pass);
			imgFavorite = FindViewById<ImageView> (Resource.Id.img_add_favorite_pass);
			imgEmailProfile = FindViewById<ImageView> (Resource.Id.img_email_profile_pass);
			imgRating = FindViewById<ImageView> (Resource.Id.img_rating_pass);

			tvExpiredNotice = FindViewById<TextView> (Resource.Id.tv_expired_notice);
			//llSoonest = FindViewById<LinearLayout> (Resource.Id.llSoonestDetail);
			//llStandard = FindViewById<LinearLayout> (Resource.Id.llStandardDetail);
			//llAnother = FindViewById<LinearLayout> (Resource.Id.llAnotherTimeDetail);
			llTalknow = FindViewById<LinearLayout> (Resource.Id.llTalkNowDetail);
			llActionBooking = FindViewById<LinearLayout> (Resource.Id.llActionBooking);

			tvDateStartCall = FindViewById<TextView> (Resource.Id.tv_start_date_past);
			tvTimeStartCall = FindViewById<TextView> (Resource.Id.tv_start_time_past);
			tvDateEndCall = FindViewById<TextView> (Resource.Id.tv_end_date_past);
			tvTimeEndCall = FindViewById<TextView> (Resource.Id.tv_end_time_past);
			tvDuration = FindViewById<TextView> (Resource.Id.tv_total_time_past);
			tvCost = FindViewById<TextView> (Resource.Id.tv_total_cost_past);
			tvFee = FindViewById<TextView> (Resource.Id.tv_total_fee_past);
			llFileAttachment = FindViewById<LinearLayout> (Resource.Id.llFileAtachment);
			llGroupFee = FindViewById<LinearLayout> (Resource.Id.llGroupFeePass);
			tvNoticeWaivedFee = FindViewById<TextView> (Resource.Id.tv_notice_waived_pass);
			tvStandardCost = FindViewById<TextView> (Resource.Id.tvDolarStandard);
			//tvAnotherCost = FindViewById<TextView> (Resource.Id.tvDolarAnotherTime);
			tvTalkNowCost = FindViewById<TextView> (Resource.Id.tvDolarTalkNow);
			llStatusPass = FindViewById<LinearLayout> (Resource.Id.llGroupStatus);
			llDetailPass = FindViewById<LinearLayout> (Resource.Id.llContentPass);
			imgIconStep2 = FindViewById<ImageView> (Resource.Id.imgIconCallingStep2);
			tvDeferInfo = FindViewById<TextView> (Resource.Id.tv_sub_waiting_call_1);
			tvDialStep2 = FindViewById<TextView> (Resource.Id.tvDialStep2);

			pastDetailActivity = this;

			popupNotice = new PopupNoticeInfomation(this);
			popupNotice.noticeDelegate = this;

			deleteFile = new DeleteFile (this);
			deleteFile.deleteFileAction = this;

			uploadPhoto = new UploadPhoto(this);
			uploadPhoto.actionUploadPhotoDelegate = this;

			transcribe = new TranscribeRequest (this);
			transcribe.transcribeDelegate = this;

			tvDeferInfo.Visibility = ViewStates.Gone;
			llStatusPass.Visibility = ViewStates.Gone;
			tvExpiredNotice.Visibility = ViewStates.Gone;

			numRating.SetImageResource(utilsAndroid.getIconRatingResource(0));
			if (MApplication.getInstance ().isConsultant) {
				progressDialogParent.Show ();
				GetBookingInfo getBookingInfo = new GetBookingInfo (this);
				getBookingInfo.actionDelegate = this;
				getBookingInfo.getBookingInfo (constants.bookingInfo.Id);
			} else {
				llActionBooking.Visibility = ViewStates.Gone;
				progressDialogParent.Show ();
				GetSpecialistProfile getSpecInfo = new GetSpecialistProfile (this);
				getSpecInfo.actionDelegate = this;
				getSpecInfo.getSpecProfile (MApplication.getInstance ().specialistID);
			}

			tvNoticeWaivedFee.Visibility = ViewStates.Gone;

			if (constants.bookingInfo.BookingDocuments != null && constants.bookingInfo.BookingDocuments.Count > 0) {
				int isize = constants.bookingInfo.BookingDocuments.Count;
				for (int i = 0; i < isize; i++) {
					bookingDocs.Add(constants.bookingInfo.BookingDocuments[i]);
				}
				utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
			}

			if (MApplication.getInstance ().isConsultant) {
				tvName.Text = constants.bookingInfo.CustomerName;
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.CustomerAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);

				imgFavorite.Visibility = ViewStates.Gone;
				imgEmailProfile.Visibility = ViewStates.Gone;
				llSoonest.Visibility = ViewStates.Gone;
				llStandard.Visibility = ViewStates.Gone;
				llAnother.Visibility = ViewStates.Gone;
				llTalknow.Visibility = ViewStates.Gone;
			} else {
				tvName.Text = constants.bookingInfo.SpecialistName;
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable(avatar, HttpConstants.BASE_URL + constants.bookingInfo.SpecialistAvatar, Resource.Drawable.special_home, constants.iTimeLoading, this);

				llGroupFee.Visibility = ViewStates.Gone;
			}

			tvDateStartCall.Text = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).ToString (constants.sDateFormat);
			tvTimeStartCall.Text = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
			tvDateEndCall.Text = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).ToString (constants.sDateFormat);
			tvTimeEndCall.Text = Utils.getDateTimeNow (MApplication.getInstance ().timezoneName).ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();

			setDataPastBookingToView ();

			setActionToView ();

			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostUploadFileSuccess, new TCSelector (onUploadFileSuccess));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteFileSuccess));
		}

		private void setDataPastBookingToView() {
			if (constants.bookingInfo.PastBooking != null) {
				if (!constants.bookingInfo.IsMinCharge) {
					if (constants.bookingInfo.PastBooking.CallStartTime != null && !constants.bookingInfo.PastBooking.CallStartTime.Equals ("")) {
						tvDateStartCall.Text = DateTime.Parse (constants.bookingInfo.PastBooking.CallStartTime).ToString (constants.sDateFormat);
						tvTimeStartCall.Text = DateTime.Parse (constants.bookingInfo.PastBooking.CallStartTime).ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
					} else {
						tvDateStartCall.Text = "N/A";
						tvTimeStartCall.Text = "N/A";
					}

					if (constants.bookingInfo.PastBooking.CallEndTime != null && !constants.bookingInfo.PastBooking.CallEndTime.Equals ("")) {
						tvDateEndCall.Text = DateTime.Parse (constants.bookingInfo.PastBooking.CallEndTime).ToString (constants.sDateFormat);
						tvTimeEndCall.Text = DateTime.Parse (constants.bookingInfo.PastBooking.CallEndTime).ToString (constants.sTimeFormat, new CultureInfo("en-us")).ToUpper();
					} else {
						tvDateEndCall.Text = "N/A";
						tvTimeEndCall.Text = "N/A";
					}
				}

				numRating.SetImageResource(utilsAndroid.getIconRatingResource((int)constants.bookingInfo.Rating));
				if (constants.bookingInfo.IsWaiveFee) {
					tvNoticeWaivedFee.Visibility = ViewStates.Visible;
					tvNoticeWaivedFee.SetText (Resource.String.customer_waived_fee_notice);
					if (MApplication.getInstance ().isConsultant) {
						tvNoticeWaivedFee.SetText (Resource.String.expert_waived_fee_notice);
					}
				}

				// Check == 0
				if (constants.bookingInfo.PastBooking.DurationMinute == 0) {
					tvDuration.Text = "N/A";
				} else {
					tvDuration.Text = TimeSpan.FromSeconds (constants.bookingInfo.PastBooking.DurationMinute).ToString ();
				}

				if (constants.bookingInfo.PastBooking.CustomerTotalRate == 0) {
					tvCost.Text = "$0.00";
				} else {
					tvCost.Text = "$" + Utils.getCost((double)constants.bookingInfo.PastBooking.CustomerTotalRate);
				}

				if (constants.bookingInfo.PastBooking.SpecialistTotalRate == 0) {
					tvFee.Text = "$0.00";
				} else {
					tvFee.Text = "$" + Utils.getCost((double)constants.bookingInfo.PastBooking.SpecialistTotalRate);
				}
			} else {
				tvDateStartCall.Text = "N/A";
				tvDateEndCall.Text = "N/A";
				tvTimeStartCall.Text = "N/A";
				tvTimeEndCall.Text = "N/A";
				tvCost.Text = "$0.00";
				tvFee.Text = "$0.00";
				tvDuration.Text = "N/A";
			}

			if (constants.bookingInfo.Status != (int)Constants.STATUS.Finish || constants.bookingInfo.PastBooking == null || constants.bookingInfo.PastBooking.CallId == Guid.Empty) {
				imgRating.Visibility = ViewStates.Gone;
			} else if (MApplication.getInstance ().isConsultant && !constants.bookingInfo.IsFeedback) {
				imgRating.Enabled = false;
				imgRating.SetBackgroundResource (Resource.Drawable.ic_rating_disable);
				imgRating.SetImageResource (Resource.Drawable.ic_rating_disable);
			}
		}

		private void setActionToView(){
			Background bgEmailProfile = new Background (this, Resource.Drawable.ic_emailprofile, Resource.Drawable.ic_emailprofile_pressed);
			imgEmailProfile.SetBackgroundDrawable (bgEmailProfile);
			imgEmailProfile.Click += (sender, e) => {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					SendEmailUI dialog = new SendEmailUI(this);
					dialog.actionDelegate = this;
					dialog.showEmailDialog(MApplication.getInstance ().specialistID);
				}
			};

			imgFavorite.Click += (sender, e) => {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					if (constants.specialistInfo.IsFavourite) {
						if(dialogFavorite == null){
							dialogFavorite = new FavoriteUI(this);
							dialogFavorite.actionFavoriteDelegate = this;
						}
						dialogFavorite.removeFavoriteRequest(MApplication.getInstance ().specialistID);
					} else {
						if(dialogFavorite == null){
							dialogFavorite = new FavoriteUI(this);
							dialogFavorite.actionFavoriteDelegate = this;
						}
						dialogFavorite.addToFavouriteRequest(MApplication.getInstance ().specialistID);
					}
				}
			};

			Background bgRating = new Background (this, Resource.Drawable.icon_feedback, Resource.Drawable.icon_feedback_pressed);
			imgRating.SetBackgroundDrawable (bgRating);
			imgRating.Click += (sender, e) => {
				if(constants.bookingInfo.IsFeedback){
					if(dialogFeedbackReview == null){
						dialogFeedbackReview = new RatingFeedbackReview(this);
					}
					dialogFeedbackReview.showFeedbackReview(constants.bookingInfo.Rating, constants.bookingInfo.Feedback);
				} else {
					if(dialogFeedback == null){
						dialogFeedback = new RatingFeedbackUI(this, constants.bookingInfo.PastBooking.CallId);
						dialogFeedback.actionRatingDelegate = this;
					}
					dialogFeedback.showRatingFeedback();
				}
			};

			llTalknow.Click += (sender, e) => {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					if(constants.specialistInfo.Account.CurrentAvailabilityStatus == (int)Constants.STATUS_CONSULTANT.NotAvailable){
						popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), constants.specialistInfo.Account.Name +" is not available. You can't use this feature");
					} else{
						TalkNowUI dialog = new TalkNowUI(this);
						dialog.actionTalknowDelegate = this;
						dialog.ShowTalkNowEnquiry();
					}
				}
			};				

			llStandard.Click += delegate {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					isStandardHour = true;
					if(dialogBookPreTime == null)
						dialogBookPreTime = new BookPreTimeUI(this, isStandardHour);
					dialogBookPreTime.actionDelegate = this;
					dialogBookPreTime.showPreTimeEnquiry(isStandardHour);
				}
			};

			llSoonest.Click += delegate {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					BookASAPUI dialog = new BookASAPUI(this);
					dialog.actionDelegate = this;
					dialog.showASAPEnquiry();
				}
			};

			llAnother.Click += delegate {
				if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
					isStandardHour = false;
					if(dialogBookPreTime == null)
						dialogBookPreTime = new BookPreTimeUI(this, isStandardHour);
					dialogBookPreTime.actionDelegate = this;
					dialogBookPreTime.showPreTimeEnquiry(isStandardHour);
				}
			};
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
				TCNotificationCenter.defaultCenter.postNotification(constants.kDeleteFilePast, document);
				TCNotificationCenter.defaultCenter.postNotification(constants.kUpdateAlertWhenDeleteFileLocal, document);
				var documentDto = bookingDocs.Find (x => x.Id == document.Id) as BookingDocumentDto;
				if(documentDto != null) {
					bookingDocs.Remove((BookingDocumentDto)documentDto);
					utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
				}
			}
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		IMenu _menu;
		public override bool OnCreateOptionsMenu(IMenu menu)
		{
			base.OnCreateOptionsMenu (menu);
			_menu = menu;
			MenuInflater inflater = this.MenuInflater;
			inflater.Inflate (Resource.Menu.menu_past_history, menu);
			if (!MApplication.getInstance().isConsultant || Utils.isDisableWaivedFee (constants.bookingInfo)) {
				menu.GetItem (0).SubMenu.GetItem (4).SetVisible (false);
			}
			if (MApplication.getInstance ().isConsultant) {
				menu.GetItem (0).SubMenu.GetItem (0).SetVisible (false);
			}
			return true;
		}			

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case Resource.Id.viewInvoice:
				if(invoice == null){
					if(invoiceRequest == null){
						invoiceRequest = new GetInvoiceRequest(this);
						invoiceRequest.viewInvoiceDelegate = this;
					}
					invoiceRequest.getInvoice(constants.bookingInfo.Id);
				} else {
					startViewInvoice(invoice);
				}
				break;
			case Resource.Id.uploadFile:
				if(uploadPhoto == null){
					uploadPhoto = new UploadPhoto(this);
					uploadPhoto.actionUploadPhotoDelegate = this;
				}
				uploadPhoto.selectActionUpload();
				break;
			case Resource.Id.talkReplay:
				onTalkReplay ();
				break;
			case Resource.Id.transcript:
				onTranscript ();
				break;
			case Resource.Id.waiveFee:
				if (Utils.isDisableWaivedFee (constants.bookingInfo)) {
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_expired_title), GetString(Resource.String.waive_fee_expired));
					_menu.GetItem (0).SubMenu.GetItem (4).SetVisible (false);
				} else {
					if (popupConfirm == null) {
						popupConfirm = new PopUpConfirm (this);
						popupConfirm.actionConfirmDelegate = this;
					}
					popupConfirm.showConfirmDialog (GetString (Resource.String.waive_fee_title), GetString (Resource.String.waive_fee_content), "Yes", "No");
				}
				break;
			case global::Android.Resource.Id.Home:
				if (constants.isRemoveObserverTalkNow) {
					TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
					TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
					constants.isRemoveObserverTalkNow = false;
				}
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}

		private void onTranscript(){
			if (constants.bookingInfo.PastBooking == null || constants.bookingInfo.PastBooking.RecordUrl == null || constants.bookingInfo.PastBooking.CallId == Guid.Empty) {
				popupNotice.showNoticeDialog (GetString(Resource.String.title_notice), GetString(Resource.String.request_fail));
			} else {
				transcribe.getTranscribe (constants.bookingInfo.PastBooking.CallId, constants.bookingInfo.PastBooking.RecordUrl);
			}
		}

		private void onTalkReplay(){
			if (constants.bookingInfo.PastBooking == null || constants.bookingInfo.PastBooking.RecordUrl == null || constants.bookingInfo.PastBooking.RecordUrl.Trim().Equals("")) {
				popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.replay_not_exist_notice));
			} else {	
				Intent intent = new Intent (this, typeof(PlayAudioManager));
				intent.PutExtra (constants.pPathAudioFile, constants.bookingInfo.PastBooking.RecordUrl.Trim());
				StartActivity (intent);					
			}
		}

		public void onUpdateTalkNowStep(object obj){
			this.RunOnUiThread(()=>{
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
				constants.isRemoveObserverTalkNow = false;
				imgIconStep2.SetImageDrawable (Resources.GetDrawable (Resource.Drawable.ic_check));
				tvDialStep2.SetText(Resource.String.info3);
			});
		}

		public void onUpdateDeferSuccess(object deferTalknowInfo){
			this.RunOnUiThread (() => {
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
				constants.isRemoveObserverTalkNow = false;
				DeferTalkNow deferTalkNowInfo = (DeferTalkNow)deferTalknowInfo;
				if(constants.deferInfo.IsDefer){
					tvDeferInfo.Text = String.Format(this.GetString(Resource.String.delay_tv_info), (int)deferTalkNowInfo.DeferMinuted);
				}else{
					tvDeferInfo.Text = String.Format(this.GetString(Resource.String.reschedule_tv_info), (int)(deferTalkNowInfo.DeferMinuted/60));
				}
				tvDeferInfo.Visibility = ViewStates.Visible;
			});
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
			if (constants.isRemoveObserverTalkNow) {
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
				constants.isRemoveObserverTalkNow = false;
			}
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			constants.currentActivity = this;
		}
		#region OnTalkNowDelegate implementation

		public void onTalkNowSending ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onTalkNowSucces ()
		{
			this.RunOnUiThread (() => {
				TCNotificationCenter.defaultCenter.addObserver (this, Constants.kUpdateTalkNowStep, new TCSelector (onUpdateTalkNowStep));
				TCNotificationCenter.defaultCenter.addObserver (this, constants.kDeferSuccess, new TCSelector (onUpdateDeferSuccess));
				constants.isRemoveObserverTalkNow = true;
				progressDialogParent.Hide ();
				llStatusPass.Visibility = ViewStates.Visible;
				llDetailPass.Visibility = ViewStates.Gone;
			});
		}
			
		public void onTalkNowFail (Constants.TALK_REQUEST_STATUS talkNowStatus)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
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
					break;
				case Constants.TALK_REQUEST_STATUS.CallServiceUnavailable:
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.twilio_expired));
					break;
				}
			});
		}

		#endregion

		#region OnUploadPhotoDelegate implementation

		public void onSendingUpload ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onUploadFail ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
			});
		}
			
		public void onUploadSuccess (PhotoDTO photoDTO)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				bookingDocs.Add(photoDTO.bookingDocument);
				utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttachment);
			});
		}

		#endregion

		#region OnActionDelegate implementation

		public void onSending ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onSuccess ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
			});
		}

		public void onFail ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
			});
		}

		public void onSelectTime (DateTime dateTime)
		{
		}
		#endregion

		#region OnRatingDelegate implementation

		public void onSendingRating ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onSuccessRating (int iNumStar, string content)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				numRating.SetImageResource(utilsAndroid.getIconRatingResource(iNumStar));
				constants.bookingInfo.IsFeedback = true;
				constants.bookingInfo.Rating = iNumStar;
				constants.bookingInfo.Feedback = content;
				TCNotificationCenter.defaultCenter.postNotification (constants.kNotifyUpdateBookingInfo, constants.bookingInfo);
			});
		}

		public void onFailRating ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
			});
		}

		#endregion

		#region OnActionFavoriteDelegate implementation
		public void onSendingFavorite ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onAddFavoriteSuccess ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				constants.specialistInfo.IsFavourite = true;
				imgFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
				TCNotificationCenter.defaultCenter.postNotification (constants.kAddFavoriteSuccess, new FavoriteDTO(MApplication.getInstance().specialistID, true));
			});
		}

		public void onAddFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				constants.specialistInfo.IsFavourite = false;
				imgFavorite.SetImageResource (Resource.Drawable.ic_favorite_unselect);
			});
		}

		public void onRemoveFavoriteSuccess ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				constants.specialistInfo.IsFavourite = false;
				imgFavorite.SetImageResource (Resource.Drawable.ic_favorite_unselect);
				TCNotificationCenter.defaultCenter.postNotification (constants.kRemoveFavoriteSuccess, new FavoriteDTO(MApplication.getInstance().specialistID, false));
			});
		}

		public void onRemoveFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				constants.specialistInfo.IsFavourite = true;
				imgFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
			});
		}

		#endregion

		#region OnViewInvoiceDelegate implementation

		public void onSendingViewInvoice ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
				this.invoice =  null;
			});
		}

		public void onViewInvoiceFail ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				this.invoice =  null;
			});
		}

		public void onViewInvoiceSuccess (InvoiceDTO invoice)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				this.invoice = invoice;
				startViewInvoice(invoice);
			});
		}

		#endregion

		#region OnActionConfirmDelegate implementation

		public void onOkClick ()
		{

		}
		public void onOkClickToDestroy ()
		{
			this.RunOnUiThread (() => {
				Finish ();
			});
		}
		#endregion

		#region OnTranscribeDelegate implementation

		public void onSendingTranscribe ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show ();
			});
		}

		public void onSuccessTranscribe (bool status)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				if(status){
					popupNotice.showNoticeDialog(GetString(Resource.String.transcribe_title), GetString(Resource.String.request_success));
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.transcribe_title), GetString(Resource.String.request_fail));
				}
			});
		}

		public void ondFailTranscribe ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide ();
				popupNotice.showNoticeDialog(GetString(Resource.String.transcribe_title), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		#region OnActionGetSpecInfo implementation

		public void onSendingGetSpecInfo ()
		{
		}

		public void onSuccessGetSpecInfo (SpecialistProfileInfos specInfo)
		{
			this.RunOnUiThread (() => {
				constants.specialistInfo = specInfo;
				if(constants.specialistInfo != null) {
					llActionBooking.Visibility = ViewStates.Visible;

					GetBookingInfo getBookingInfo = new GetBookingInfo (this);
					getBookingInfo.actionDelegate = this;
					getBookingInfo.getBookingInfo (constants.bookingInfo.Id);

					if(constants.specialistInfo.Account.Status == (int)Constants.LOGIN_STATUS.Expired){
						tvExpiredNotice.Visibility = ViewStates.Visible;
						llSoonest.Enabled = false;
						llStandard.Enabled = false;
						llAnother.Enabled = false;
						llTalknow.Enabled = false;
					}

					if (constants.specialistInfo.IsFavourite) {
						imgFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
					}
					if (constants.specialistInfo != null && constants.specialistInfo.SpecialistDetail != null) {
						tvStandardCost.Text = Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard);
						tvAnotherCost.Text = Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
						tvTalkNowCost.Text = Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow);
					} else {
						tvStandardCost.Text = "N/A";
						tvAnotherCost.Text = "N/A";
						tvTalkNowCost.Text = "N/A";
					}
				} else {
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
				}
			});
		}

		public void onFailGetSpecInfo ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
			});
		}

		#endregion

		#region OnActionGetBookingInfo implementation

		public void onSendingGetBookingInfo ()
		{

		}

		public void onSuccessGetBookingInfo (BookingInfo bookingInfo)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				if (bookingInfo != null) {
					if (bookingInfo.PastBooking != null) {
						constants.bookingInfo = bookingInfo;
						setDataPastBookingToView();
					}
				} else {
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
				}
			});
		}

		public void onFailedGetBookingInfo ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
			});
		}

		#endregion

		#region OnActionConfirmDelegate implementation

		public void onOkConfirmClick ()
		{
			this.RunOnUiThread (() => {
				WaiveFeeRequest waiveFee = new WaiveFeeRequest(this);
				waiveFee.waiveFeeDelegate = this;
				waiveFee.sendWaiveFeeRequest(constants.bookingInfo.Id);
			});
		}

		#endregion

		#region OnWaiveFeeDelegate implementation

		public void onSendingWaiveFee ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show();
			});
		}

		public void onSuccessWaiveFee (bool status)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				if(status){
					tvNoticeWaivedFee.Visibility = ViewStates.Visible;
					_menu.GetItem (0).SubMenu.GetItem (4).SetVisible (false);
					decimal dCostAfterWaiveFee = constants.bookingInfo.PastBooking.CustomerTotalRate - constants.bookingInfo.PastBooking.SpecialistTotalRate;
					tvCost.Text = "$" + Utils.getCost((double)dCostAfterWaiveFee);
					constants.bookingInfo.PastBooking.CustomerTotalRate = dCostAfterWaiveFee;
					constants.bookingInfo.IsWaiveFee = true;
					TCNotificationCenter.defaultCenter.postNotification(constants.kNotifyUpdateBookingInfo, constants.bookingInfo);
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.request_success));
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.request_fail));
				}
			});
		}

		public void ondFailWaiveFee ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
				popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		private void startViewInvoice(InvoiceDTO invoice){
			Intent intent = new Intent(this, typeof(ViewWebInvoice));
			intent.PutExtra(constants.pPathInvoice, "https://docs.google.com/gview?embedded=true&url=" + HttpConstants.BASE_URL + invoice.url);
			StartActivity(intent);
		}

		#region OnDeleteFileDelegate implementation

		public void onDeleteSending ()
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Show();
			});
		}

		public void onDeleteSuccess (bool status, BookingDocumentDto document)
		{
			this.RunOnUiThread (() => {
				progressDialogParent.Hide();
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
				progressDialogParent.Hide();
				popupNotice.showNoticeDialog (GetString (Resource.String.title_notice), GetString (Resource.String.connection_fail));
			});
		}

		#endregion
	}
}

