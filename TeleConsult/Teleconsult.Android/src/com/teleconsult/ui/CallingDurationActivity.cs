using Android.App;
using Android.OS;
using CoreSystem;
using Android.Widget;
using Android.Content;
using System;
using Android.Views;
using Uri = Android.Net.Uri;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR.Client;
using UrlImageViewHelper;
using System.Collections.Generic;
using Android.Graphics.Drawables;
using System.Globalization;
using Android.Graphics;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "CallDuration", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class CallingDurationActivity : BaseActivity, IUrlImageViewCallback, OnActionDelegate,
	OnRatingDelegate, OnUploadPhotoDelegate, OnActionNoticeDelegate, OnActionFavoriteDelegate,
	OnTranscribeDelegate, OnWaiveFeeDelegate, OnActionConfirmDelegate, OnDeleteFileDelegate
	{
		TextView tvName;
		TextView tvTimeDuration;
		TextView tvCostDuration;
		LinearLayout llFileAttach;
		LinearLayout llGrFollowUpAction;
		ImageView imgRatingFollowUp;
		ImageView imgFavoriteFollowUp;
		ImageView imgEmailFollowUp;
		ImageView imgWaiveFeeFollowUp;
		ImageView imgTranscribeFollowUp;
		ImageView imgUpPhotoFollowUp;
		ImageView imgReplayFollowUp;
		LinearLayout llRatingFollowUp;
		LinearLayout llFavoriteFollowUp;
		LinearLayout llEmailFollowUp;
		LinearLayout llWaiveFollowUp;
		LinearLayout llTransribeFollowUp;
		LinearLayout llUpphotoFollowUp;
		LinearLayout llReplayFollowUp;
		LinearLayout llProgress;
		TextView tvWaiveFeeNotice;

		public static CallingDurationActivity callingActivity;
		ImageView img_upfile;
		Guid bookingId;
		Guid callId;
		Guid specId;
		string sRefNo;
		bool isFavorite { get; set;}
		string recordUrl = "";
		UploadPhoto uploadPhoto;
		RatingFeedbackUI dialogFeedback;
		RatingFeedbackReview dialogFeedbackReview;
		FavoriteUI dialogFavorite;
		bool bloaded;
		PopupNoticeInfomation popupNotice;
		PopUpConfirm popupConfirm;
		bool isFeeback = false;
		string sFeedBackContent = "";
		int iRatingNumber = 0;
		DateTime dtEndWaiveFee;
		List<BookingDocumentDto> bookingDocs = new List<BookingDocumentDto>();
		OnAddFileToView addFiles;
		DeleteFile deleteFile;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			SetContentView (Resource.Layout.customer_calling_layout);

			bloaded = false;

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.SetTitle(Resource.String.calling_title);
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle (Resource.String.calling_title);

			callingActivity = this;

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			tvName = FindViewById<TextView> (Resource.Id.tv_name_spec_calling);
			tvTimeDuration = FindViewById<TextView> (Resource.Id.tv_time_customer_calling);
			tvCostDuration = FindViewById<TextView> (Resource.Id.tv_cost_customer_calling);
			img_upfile = FindViewById<ImageView> (Resource.Id.img_upfile_calling);
			var avatar = FindViewById<ImageView> (Resource.Id.img_avatar_customer_calling);
			llFileAttach = FindViewById<LinearLayout> (Resource.Id.ll_file_attach_customer_calling);

			// Follow up action
			llGrFollowUpAction = FindViewById<LinearLayout> (Resource.Id.llGrFollowUpAction);
			imgRatingFollowUp = FindViewById<ImageView> (Resource.Id.imgRatingFolowUp);
			imgFavoriteFollowUp = FindViewById<ImageView> (Resource.Id.imgFavoriteFolowUp);
			imgEmailFollowUp = FindViewById<ImageView> (Resource.Id.imgEmailFollowUp);
			imgWaiveFeeFollowUp = FindViewById<ImageView> (Resource.Id.imgWaiveFeeFollowUp);
			imgTranscribeFollowUp = FindViewById<ImageView> (Resource.Id.imgTranscribeFollowUp);
			imgUpPhotoFollowUp = FindViewById<ImageView> (Resource.Id.imgUpPhotoFollowUp);
			imgReplayFollowUp = FindViewById<ImageView> (Resource.Id.imgReplayFollowUp);
			llRatingFollowUp = FindViewById<LinearLayout> (Resource.Id.llRatingFollowUp);
			llFavoriteFollowUp = FindViewById<LinearLayout> (Resource.Id.llFavoriteFollowUp);
			llEmailFollowUp = FindViewById<LinearLayout> (Resource.Id.llEmailFollowUp);
			llWaiveFollowUp = FindViewById<LinearLayout> (Resource.Id.llWaiveFeeFollowUp);
			llTransribeFollowUp = FindViewById<LinearLayout> (Resource.Id.llTranscribeFollowUp);
			llUpphotoFollowUp = FindViewById<LinearLayout> (Resource.Id.llUploadPhotoFollowUp);
			llReplayFollowUp = FindViewById<LinearLayout> (Resource.Id.llReplayFollowUp);
			tvWaiveFeeNotice = FindViewById<TextView> (Resource.Id.tv_notice_waived_calling);

			UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable (avatar, HttpConstants.BASE_URL + constants.durationInfo.AvatarPath, Resource.Drawable.special_home, constants.iTimeLoading, this);

			tvName.Text = constants.durationInfo.UserFullName;

			llGrFollowUpAction.Visibility = ViewStates.Gone;

			uploadPhoto = new UploadPhoto(this);
			uploadPhoto.actionUploadPhotoDelegate = this;

			deleteFile = new Teleconsult.Android.DeleteFile (this);
			deleteFile.deleteFileAction = this;

			// Action
			Background bgUpfile = new Background (this, Resource.Drawable.camera, Resource.Drawable.camera_pressed);
			img_upfile.SetBackgroundDrawable (bgUpfile);
			img_upfile.Click += (sender, e) => {
				if(uploadPhoto == null){
					uploadPhoto = new UploadPhoto(this);
					uploadPhoto.actionUploadPhotoDelegate = this;
				}
				uploadPhoto.selectActionUpload();
			};

			Background bgRating = new Background (this, Resource.Drawable.icon_feedback, Resource.Drawable.icon_feedback_pressed);
			imgRatingFollowUp.SetBackgroundDrawable (bgRating);
			imgRatingFollowUp.Click += (sender, e) => {
				if(isFeeback) {
					if(dialogFeedbackReview == null){
						dialogFeedbackReview = new RatingFeedbackReview(this);
					}
					dialogFeedbackReview.showFeedbackReview(iRatingNumber, sFeedBackContent);
				} else {
					if(dialogFeedback == null){
						dialogFeedback = new RatingFeedbackUI(this, callId);
						dialogFeedback.actionRatingDelegate = this;
					}
					dialogFeedback.showRatingFeedback();
				}
			};

			imgFavoriteFollowUp.Click += (sender, e) => {
				if (isFavorite) {
					if(dialogFavorite == null){
						dialogFavorite = new FavoriteUI(this);
						dialogFavorite.actionFavoriteDelegate = this;
					}
					dialogFavorite.removeFavoriteRequest(specId);
				} else {
					if(dialogFavorite == null){
						dialogFavorite = new FavoriteUI(this);
						dialogFavorite.actionFavoriteDelegate = this;
					}
					dialogFavorite.addToFavouriteRequest(specId);
				}
			};

			Background bgEmail = new Background (this, Resource.Drawable.ic_emailprofile, Resource.Drawable.ic_emailprofile_pressed);
			imgEmailFollowUp.SetBackgroundDrawable (bgEmail);
			imgEmailFollowUp.Click += (sender, e) => {
				SendEmailUI dialog = new SendEmailUI(this);
				dialog.actionDelegate = this;
				dialog.showEmailDialog(specId);
			};

			Background bgWaivefee = new Background (this, Resource.Drawable.ic_waive, Resource.Drawable.ic_waive_pressed);
			imgWaiveFeeFollowUp.SetBackgroundDrawable (bgWaivefee);
			imgWaiveFeeFollowUp.Click += (sender, e) => {
				if(dtEndWaiveFee != null && dtEndWaiveFee.AddMinutes (Constants.pTimeWaiveFee) >= Utils.getDateTimeNow (MApplication.getInstance ().timezoneName)){
					if (popupConfirm == null) {
						popupConfirm = new PopUpConfirm (this);
						popupConfirm.actionConfirmDelegate = this;
					}
					popupConfirm.showConfirmDialog (GetString(Resource.String.waive_fee_title), GetString(Resource.String.waive_fee_content), "Yes", "No");
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_expired_title), GetString(Resource.String.waive_fee_expired));
					imgWaiveFeeFollowUp.Enabled = false;
					imgWaiveFeeFollowUp.SetBackgroundResource(Resource.Drawable.ic_waive_disable);
					imgWaiveFeeFollowUp.SetImageResource(Resource.Drawable.ic_waive_disable);
				}
			};

			Background bgTranscribe = new Background (this, Resource.Drawable.ic_transcribe, Resource.Drawable.ic_transcribe_pressed);
			imgTranscribeFollowUp.SetBackgroundDrawable (bgTranscribe);
			imgTranscribeFollowUp.Click += (sender, e) => {
				TranscribeRequest transcribe = new TranscribeRequest(this);
				transcribe.transcribeDelegate = this;
				transcribe.getTranscribe(callId, recordUrl);
			};

			Background bgUpphoto = new Background (this, Resource.Drawable.camera, Resource.Drawable.camera_pressed);
			imgUpPhotoFollowUp.SetBackgroundDrawable (bgUpphoto);
			imgUpPhotoFollowUp.Click += (sender, e) => {
				if(uploadPhoto == null){
					uploadPhoto = new UploadPhoto(this);
					uploadPhoto.actionUploadPhotoDelegate = this;
				}
				uploadPhoto.selectActionUpload();
			};

			Background bgReplay = new Background (this, Resource.Drawable.ic_replay, Resource.Drawable.ic_replay_pressed);
			imgReplayFollowUp.SetBackgroundDrawable (bgReplay);
			imgReplayFollowUp.Click += (sender, e) => {
				if(recordUrl != null){
					if(!recordUrl.Equals("")){
						Intent intent = new Intent(this, typeof(PlayAudioManager));
						intent.PutExtra(constants.pPathAudioFile, recordUrl);
						StartActivity(intent);
					} else {
						popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.replay_not_exist_notice));
					}
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), GetString(Resource.String.replay_not_exist_notice));
				}
			};

			popupNotice = new PopupNoticeInfomation (this);
			popupNotice.noticeDelegate = this;

			updateCallStart (constants.durationInfo);
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostStopCall, new TCSelector (updateCallStop));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostFolloUp, new TCSelector (onFollowUpAction));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostUploadFileSuccess, new TCSelector (onUploadFileSuccess));
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, new TCSelector (onDeleteFileSuccess));
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			bloaded = false;
			constants.currentActivity = this;
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);

			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostStopCall);
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostFolloUp);
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}
			
		int iTotalSeconds = 0;
		double dcost = 0;
		double dCostPerSecond = 0;
		double dcostMinimum = 0;
		int iFreeTime = 0;

		System.Timers.Timer timer;
		DateTime dtStart;
		DateTime dtCurrentServer;

		private void updateCallStart(DurationInfo info){
			if (timer != null)
				return;
			timer = new System.Timers.Timer();
			callingActivity.RunOnUiThread (() => {
				bookingId = info.BookingId;
				if(info.ReferenceNo != null && !info.ReferenceNo.Equals("")){
					sRefNo = GetString(Resource.String.consultation_titile) + info.ReferenceNo;
				} else {
					sRefNo = GetString(Resource.String.consultation_titile) + "N/A";
				}

//				DateTimeStyles style=DateTimeStyles.AllowWhiteSpaces;
//				DateTime.TryParseExact(info.startTime, "MM/dd/yyyy hh:mm:ss zzz", CultureInfo.InvariantCulture, style, out dtStart);
//				DateTime.TryParseExact(info.currentTimeServerSend, "MM/dd/yyyy hh:mm:ss zzz", CultureInfo.InvariantCulture, style, out dtCurrentServer);

				dtStart = (DateTime)Utils.stringToDateTime(info.startTime);
				dtCurrentServer = (DateTime)Utils.stringToDateTime(info.currentTimeServerSend);

				TimeSpan ts = dtCurrentServer - dtStart;
				iTotalSeconds = (int)ts.TotalSeconds;

				dCostPerSecond = double.Parse (info.CostPerMinute, new CultureInfo ("en-us"))/60;
				dcostMinimum = double.Parse (info.MinimumCost, new CultureInfo ("en-us"));
				iFreeTime = int.Parse(info.FreeTime);

				dcost = getCostPerSeconds();
				tvCostDuration.Text = Utils.getCost(dcost);
				tvTimeDuration.Text = TimeSpan.FromSeconds(ts.TotalSeconds).ToString();

				CountDown();
			});
		}			

		private void CountDown ()
		{
			callingActivity.RunOnUiThread (() => {
				timer.Interval = 1000; 
				timer.Elapsed += OnTimedEvent;
				timer.Enabled = true;
			});
		}

		private void OnTimedEvent(object sender, System.Timers.ElapsedEventArgs e)
		{
			callingActivity.RunOnUiThread (() => {
				iTotalSeconds ++;

				dcost = getCostPerSeconds();
				tvCostDuration.Text = "$" + Utils.getCost(dcost);
				tvTimeDuration.Text = TimeSpan.FromSeconds(iTotalSeconds).ToString();
			});
		}

		private double getCostPerSeconds(){
			if (iTotalSeconds > iFreeTime) {
				return (dCostPerSecond * iTotalSeconds) > dcostMinimum ? (double)(dCostPerSecond * iTotalSeconds) : dcostMinimum;
			} else {
				return 0.00;
			}
		}

		public void updateCallStop(object endTime){
			callingActivity.RunOnUiThread (() => {
				img_upfile.Visibility = ViewStates.Gone;
				Console.Out.WriteLine("Da stop");
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostStopCall);
				if (timer == null)
					return;
				dtEndWaiveFee = Utils.getDateTimeNow(MApplication.getInstance().timezoneName);
				string sEndTime = (string)endTime;
				DateTime dtEnd = (DateTime)Utils.stringToDateTime(sEndTime);//DateTime.Parse (sEndTime);
				TimeSpan ts = dtEnd - dtStart;
				iTotalSeconds = (int)ts.TotalSeconds;
				if(timer != null){
					timer.Stop();
					timer = null;
				}
				tvTimeDuration.Text = TimeSpan.FromSeconds ((int)ts.TotalSeconds).ToString ();
			
				dcost = getCostPerSeconds();
				tvCostDuration.Text =  "$" + Utils.getCost(dcost);
				Console.Out.WriteLine("Da stop Tinh tien"+ "$" + Utils.getCost(dcost));
			});
		}

		public void onFollowUpAction(object followUpInfo){
			this.RunOnUiThread (() => {
				TCNotificationCenter.defaultCenter.removeObserver(this, Constants.kPostFolloUp);
				setHeadingTitle (sRefNo);
				if (!bloaded) {
					bloaded = true;
					FollowUpInfo info = (FollowUpInfo)followUpInfo;
					bookingId = info.BookingId;
					callId = info.CallId;
					specId = info.SpecialistId;
					isFavorite = info.IsFavourite;
					recordUrl = info.RecordUrl;

					if(iTotalSeconds > iFreeTime) {
						llGrFollowUpAction.Visibility = ViewStates.Visible;
						if(MApplication.getInstance().isConsultant) {
							llRatingFollowUp.Visibility = ViewStates.Gone;
							llFavoriteFollowUp.Visibility = ViewStates.Gone;
							llEmailFollowUp.Visibility = ViewStates.Gone;
						} else {
							llWaiveFollowUp.Visibility = ViewStates.Gone;
							if(isFavorite) {
								imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_selected);
							} else {
								imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_unselect);
							}
						}
					}

					tvTimeDuration.Text = info.Duration.Replace(" ", "");
					tvCostDuration.Text =  "$" + Utils.getCost((double)info.Cost);
				}
			});
		}

		public void onUploadFileSuccess(object documentDTO) {
			this.RunOnUiThread (() => {
				BookingDocumentDto document = (BookingDocumentDto)documentDTO;
				bookingDocs.Add(document);

				utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttach);
			});
		}

		public void onDeleteFileSuccess(object documentDTO) {
			this.RunOnUiThread (() => {
				BookingDocumentDto document = (BookingDocumentDto)documentDTO;
				onActionDeleteFile(document);
			});
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
			if ((requestCode == constants.SELECT_PICTUER) && (resultCode == Result.Ok)) {
				utilsAndroid.onSelectImageOk (this, uploadPhoto, popupNotice, requestCode, resultCode, data, bookingId, true);
			}
		}


		public override void OnBackPressed ()
		{
			base.OnBackPressed ();
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostStopCall);
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostFolloUp);
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kPostDeleteFileSuccess);
		}
		#region OnActionDelegate implementation

		public void onSending ()
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccess ()
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onFail ()
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onSelectTime (DateTime dateTime)
		{
		}

		#endregion

		#region OnUploadPhotoDelegate implementation

		public void onSendingUpload ()
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onUploadFail ()
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		public void onUploadSuccess (PhotoDTO photoDTO)
		{
			callingActivity.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				onUploadFileSuccess(photoDTO.bookingDocument);
			});
		}

		#endregion

		#region OnActionNoticeDelegate implementation

		public void onOkClick ()
		{
		}
		public void onOkClickToDestroy ()
		{
		}
		#endregion

		#region OnRatingDelegate implementation

		public void onSendingRating ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccessRating (int iNumStar, string content)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				iRatingNumber = iNumStar;
				sFeedBackContent = content;
				isFeeback = true;
			});
		}

		public void onFailRating ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
			});
		}

		#endregion

		#region OnActionFavoriteDelegate implementation
		public void onSendingFavorite ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onAddFavoriteSuccess ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				isFavorite = true;
				imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_selected);
				TCNotificationCenter.defaultCenter.postNotification (constants.kAddFavoriteSuccess, new FavoriteDTO(specId, true));
			});
		}

		public void onAddFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				isFavorite = false;
				imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_unselect);
			});
		}

		public void onRemoveFavoriteSuccess ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				isFavorite = false;
				imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_unselect);
				TCNotificationCenter.defaultCenter.postNotification (constants.kRemoveFavoriteSuccess, new FavoriteDTO(specId, false));
			});
		}

		public void onRemoveFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				isFavorite = true;
				imgFavoriteFollowUp.SetImageResource (Resource.Drawable.ic_favorite_selected);
			});
		}

		#endregion

		#region OnTranscribeDelegate implementation

		public void onSendingTranscribe ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccessTranscribe (bool status)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
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
				llProgress.Visibility = ViewStates.Gone;
				popupNotice.showNoticeDialog(GetString(Resource.String.transcribe_title), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		#region OnWaiveFeeDelegate implementation

		public void onSendingWaiveFee ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccessWaiveFee (bool status)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(status){
					tvWaiveFeeNotice.Visibility = ViewStates.Visible;
					imgWaiveFeeFollowUp.Enabled = false;
					imgWaiveFeeFollowUp.SetBackgroundResource(Resource.Drawable.ic_waive_disable);
					imgWaiveFeeFollowUp.SetImageResource(Resource.Drawable.ic_waive_disable);
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.request_success));
				} else {
					popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.request_fail));
				}
			});
		}

		public void ondFailWaiveFee ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				popupNotice.showNoticeDialog(GetString(Resource.String.waive_fee_title), GetString(Resource.String.connection_fail));
			});
		}

		#endregion

		#region OnActionConfirmDelegate implementation

		public void onOkConfirmClick ()
		{
			this.RunOnUiThread (() => {
				WaiveFeeRequest waiveFee = new WaiveFeeRequest(this);
				waiveFee.waiveFeeDelegate = this;
				waiveFee.sendWaiveFeeRequest(bookingId);
			});
		}

		#endregion

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

		private void onActionDeleteFile(BookingDocumentDto document){
			if (document.BookingId == bookingId) {
				TCNotificationCenter.defaultCenter.postNotification(constants.kUpdateAlertWhenDeleteFileLocal, document);
				var documentDto = bookingDocs.Find (x => x.Id == document.Id) as BookingDocumentDto;
				if (documentDto != null) {
					bookingDocs.Remove ((BookingDocumentDto)documentDto);
					utilsAndroid.addFileView (this, bookingDocs, true, addFiles, deleteFile, llFileAttach);
				}
			}
		}
	}
}

