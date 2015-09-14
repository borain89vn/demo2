using System;
using System.Collections.Generic;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CoreSystem;
using Android.Views.InputMethods;
using System.Linq;
using UrlImageViewHelper;
using Android.Graphics.Drawables;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "SpecialistDetail", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class SpecialistDetailActivity : BaseActivity, IUrlImageViewCallback, OnActionDelegate, OnActionFavoriteDelegate, OnTalkNowDelegate, OnActionNoticeDelegate, OnActionGetSpecInfo, OnActionConfirmDelegate
	{
		bool isStandardHour = false;
	
		ImageView btnAddFavorite;
		ImageView btnEmailProfile;
		TextView tvExpiredNotice;
		LinearLayout llSoonest;
		LinearLayout llStandard;
		LinearLayout llAnotherTime;
		LinearLayout llTalkNow;

		LinearLayout llStatus;
		LinearLayout llBookTime;
		LinearLayout llBookTime1;
		LinearLayout llSpecDetail;
		ImageView imgIconStep2;
		TextView tvDeferInfo;
		TextView tvDialStep2;
		TextView tvProfession;
		TextView tvSpecialisation;
		TextView tvGST;
		TextView tvShortDes;
		TextView tvDetailBiography;
		TextView tvQualifications;
		TextView tvLanguageSpoken;
		TextView tvKm;
		ImageView ratingBar;
		ImageView avatar;
		TextView tvCostStandard;
		TextView tvCostOutOf;
		TextView tvCostTalkNow;
		TextView tvDay;
		TextView tvStartTime;
		TextView tvEndTime;
		TextView tvStatus;
		TextView tvMinCharge;
		LinearLayout llGroupInfo;
		TextView tvLicenseStatus;
		TextView tvOnTime;
		ImageView ic_license;
		BookPreTimeUI dialogBookPreTime;
		FavoriteUI dialogFavorite;
		SendEmailUI emailDialog;
		BookASAPUI asapDialog;
		TalkNowUI talkNowDialog;
		PopupNoticeInfomation popupNotice;
		PopUpConfirm popupConfirm;
		public static SpecialistDetailActivity specDetailActivity;
		LinearLayout llProgress;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			RequestWindowFeature (WindowFeatures.ActionBar);
			SetContentView (Resource.Layout.specialist_profile_layout);

			ActionBar.NavigationMode = ActionBarNavigationMode.Standard;
			ActionBar.Title = constants.specialistInfo.Account.Name;
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			specDetailActivity = this;

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);
			llProgress.Visibility = ViewStates.Gone;

			popupNotice = new PopupNoticeInfomation(this);
			popupNotice.noticeDelegate = this;

			tvProfession = FindViewById<TextView> (Resource.Id.tv_profession_spec_detail);
			tvSpecialisation = FindViewById<TextView> (Resource.Id.tv_specialisation_detail);
			tvGST = FindViewById<TextView> (Resource.Id.tv_gst_spec_detail);
			tvShortDes = FindViewById<TextView> (Resource.Id.tv_short_description_spec_detail);
			tvDetailBiography = FindViewById<TextView> (Resource.Id.tv_long_description_spec_detail);
			tvQualifications = FindViewById<TextView> (Resource.Id.tv_qualifications_spec_detail);
			tvLanguageSpoken = FindViewById<TextView> (Resource.Id.tv_language_spoken_spec_detail);
			tvKm = FindViewById<TextView> (Resource.Id.tv_km_spec_detail);
			ratingBar = FindViewById<ImageView> (Resource.Id.img_ic_rating_detail);
			avatar = FindViewById<ImageView> (Resource.Id.img_avatar_spec_detail);
			tvExpiredNotice = FindViewById<TextView> (Resource.Id.tv_expired_notice);
			//llSoonest = FindViewById<LinearLayout> (Resource.Id.llSoonestDetail);
			//llStandard = FindViewById<LinearLayout> (Resource.Id.llStandardDetail);
			//llAnotherTime = FindViewById<LinearLayout> (Resource.Id.llAnotherTimeDetail);
			llTalkNow = FindViewById<LinearLayout> (Resource.Id.llTalkNowDetail);
			btnAddFavorite = FindViewById<ImageView> (Resource.Id.img_add_favorite_detail);
			btnEmailProfile = FindViewById<ImageView> (Resource.Id.img_email_profile_detail);
			tvCostStandard = FindViewById<TextView> (Resource.Id.tvDolarStandard);
			//tvCostOutOf = FindViewById<TextView> (Resource.Id.tvDolarAnotherTime);
			tvCostTalkNow = FindViewById<TextView> (Resource.Id.tvDolarTalkNow);
			tvDay = FindViewById<TextView> (Resource.Id.tvDayStandards);
			tvStartTime = FindViewById<TextView> (Resource.Id.tvStartTimeStandard);
			tvEndTime = FindViewById<TextView> (Resource.Id.tvEndTimeStandard);
			tvStatus = FindViewById<TextView> (Resource.Id.tv_status_spec_detail);
			llStatus = FindViewById<LinearLayout> (Resource.Id.llGroupStatus);
			llBookTime = FindViewById<LinearLayout> (Resource.Id.llBookTime);
			llBookTime1 = FindViewById<LinearLayout> (Resource.Id.llBookTime1);
			llSpecDetail = FindViewById<LinearLayout> (Resource.Id.ll_spec_detail);
			imgIconStep2 = FindViewById<ImageView> (Resource.Id.imgIconCallingStep2);
			tvDeferInfo = FindViewById<TextView> (Resource.Id.tv_sub_waiting_call_1);
			tvDialStep2 = FindViewById<TextView> (Resource.Id.tvDialStep2);
			tvMinCharge = FindViewById<TextView> (Resource.Id.tv_min_charge_specialist_detail);
			tvLicenseStatus = FindViewById<TextView> (Resource.Id.tv_licence_status_detail);
			tvOnTime = FindViewById<TextView> (Resource.Id.tv_ontime_detail);
			ic_license = FindViewById<ImageView> (Resource.Id.ic_license_status_detail);

			tvDeferInfo.Visibility = ViewStates.Gone;
			llStatus.Visibility = ViewStates.Gone;
			tvExpiredNotice.Visibility = ViewStates.Gone;

			setDataToView ();
			this.SetEventForView ();
		}

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		private void setDataToView(){
			this.RunOnUiThread (() => {
				setHeadingTitle (constants.specialistInfo.Account.Name);
				UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable (avatar, HttpConstants.BASE_URL + constants.specialistInfo.Account.AvatarPath, Resource.Drawable.special_home, constants.iTimeLoading, this);
				tvStatus.Text = Utils.getStatusConsultant((int)constants.specialistInfo.Account.CurrentAvailabilityStatus);

				if (constants.specialistInfo.IsFavourite){
					btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
				}

				Constants.VERIFIED_TYPE statusLicense = Utils.getStatusLicense(constants.specialistInfo);
				if(statusLicense == Constants.VERIFIED_TYPE.Expired || statusLicense == Constants.VERIFIED_TYPE.Unverified) {
					tvLicenseStatus.SetTextColor(global::Android.Graphics.Color.Red);
				} else if(statusLicense == Constants.VERIFIED_TYPE.Verified){
					tvLicenseStatus.SetTextColor (Resources.GetColor (Resource.Color.green));
				}
				tvLicenseStatus.Text = Utils.getDescriptionEnum(statusLicense);
				ic_license.SetImageResource(utilsAndroid.getIconLiceseResource((int)statusLicense));
				tvOnTime.Text = string.Format(GetString(Resource.String.on_time_status), constants.specialistInfo.SpecialistDetail.OnTime + "/" + constants.specialistInfo.SpecialistDetail.TotalConsultation);

				//if(statusLicense == Constants.VERIFIED_TYPE.Expired){
				if(constants.specialistInfo.Account.Status == (int)Constants.LOGIN_STATUS.Expired){
					tvExpiredNotice.Visibility = ViewStates.Visible;
					/*llSoonest.Enabled = false;
					llStandard.Enabled = false;
					llAnotherTime.Enabled = false;*/
					llTalkNow.Enabled = false;
				}

				if (constants.specialistInfo.Proximity == null) {
					tvKm.Text = "N/A km";
				} else {
					tvKm.Text = Math.Round (constants.specialistInfo.Proximity.Value) + " km";
				}

				string strFeeInfo = "";
				strFeeInfo = String.Format (GetString (Resource.String.minimum_charge_info), Utils.getCost ((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum));
				if(constants.specialistInfo.ConnectionFee > 0){
					strFeeInfo = strFeeInfo + " - "+ String.Format (GetString (Resource.String.connection_fee_info), Utils.getCost ((double)constants.specialistInfo.ConnectionFee));
				}
				tvMinCharge.Text = strFeeInfo;

				ratingBar.SetImageResource (utilsAndroid.getIconRatingResource ((int)constants.specialistInfo.SpecialistDetail.RatingRatio));

				tvProfession.Text = constants.specialistInfo.SpecialistDetail.Specializations [0].ProfessionalOrTrade;
				tvSpecialisation.Text = constants.specialistInfo.SpecialistDetail.Specializations [0].Name;
				tvGST.Text = "No";
				if (constants.specialistInfo.SpecialistDetail.Specializations [0].GST) {
					tvGST.Text = "Yes";
				}

				if (constants.specialistInfo.SpecialistDetail.Description != null)
					tvShortDes.Text = constants.specialistInfo.SpecialistDetail.Description;
				else
					tvShortDes.Visibility = ViewStates.Gone;
				if (constants.specialistInfo.SpecialistDetail.Biography != null)
					tvDetailBiography.Text = constants.specialistInfo.SpecialistDetail.Biography;
				else
					tvDetailBiography.Visibility = ViewStates.Gone;
				tvQualifications.Text = constants.specialistInfo.SpecialistDetail.Qualification;
				tvLanguageSpoken.Text = constants.specialistInfo.SpecialistDetail.Languages;
				tvDay.Text = "";
				tvStartTime.Text = "";
				tvEndTime.Text = "";
				foreach (var standarHour in constants.specialistInfo.SpecialistDetail.ListStandardHour) {
					if (standarHour.Day != null) {
						tvDay.Text += standarHour.Day.Trim ().ToUpper ().ToUpper () + "\n";
						tvStartTime.Text += standarHour.Start.Trim () + "  -" + "\n";
						tvEndTime.Text += standarHour.End.Trim () + "\n";
					}
				}
				//tvCostStandard.Text = Utils.getCost ((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Standard);
			//	tvCostOutOf.Text = Utils.getCost ((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
				tvCostTalkNow.Text = Utils.getCost ((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow);
				llGroupInfo = new SpecialisationView (this, constants.specialistInfo);
			});
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
				if(deferTalkNowInfo.BookingId != Guid.Empty) {
					if(constants.deferInfo.IsDefer){
						tvDeferInfo.Text = String.Format(this.GetString(Resource.String.delay_tv_info), (int)deferTalkNowInfo.DeferMinuted);
					}else{
						tvDeferInfo.Text = String.Format(this.GetString(Resource.String.reschedule_tv_info), (int)(deferTalkNowInfo.DeferMinuted/60));
					}
					tvDeferInfo.Visibility = ViewStates.Visible;
				}
			});
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);
			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				if (constants.isRemoveObserverTalkNow) {
					TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
					TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
					constants.isRemoveObserverTalkNow = false;
				}
				Finish ();
				break;
			default:
				break;
			}
			return true;
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			if (MApplication.getInstance ().isLoginAfterSearch && !constants.specialistInfo.isLoaded) {
				GetSpecialistProfile getSpecInfo = new GetSpecialistProfile (this);
				getSpecInfo.actionDelegate = this;
				getSpecInfo.getSpecProfile (MApplication.getInstance ().specialistID);
			}

			if (MApplication.getInstance ().isLogedIn) {
				constants.currentActivity = this;
			} else {
				constants.currentActivity = null;
				constants.currentActivityNotLogIn = this;
			}

			if (MApplication.getInstance ().isConsultant) {
				llBookTime.Visibility = ViewStates.Gone;
				llBookTime1.Visibility = ViewStates.Gone;

				btnAddFavorite.Visibility = ViewStates.Gone;
				btnEmailProfile.Visibility = ViewStates.Gone;
			}
			if (constants.specialistInfo.IsFavourite)
				btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
		}

		protected override void OnActivityResult (int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult (requestCode, resultCode, data);
		}

		public override void OnBackPressed ()
		{
			if (constants.isRemoveObserverTalkNow) {
				TCNotificationCenter.defaultCenter.removeObserver (this, Constants.kUpdateTalkNowStep);
				TCNotificationCenter.defaultCenter.removeObserver (this, constants.kDeferSuccess);
				constants.isRemoveObserverTalkNow = false;
			}

			base.OnBackPressed ();
		}

		private void SetEventForView ()
		{
			llTalkNow.Click += delegate {
				if(MApplication.getInstance().isLogedIn){
					if(MApplication.getInstance ().isCompleteProfile) {
						if(constants.specialistInfo.Account.CurrentAvailabilityStatus == (int)Constants.STATUS_CONSULTANT.NotAvailable){
							if(popupNotice == null){
								popupNotice = new PopupNoticeInfomation(this);
								popupNotice.noticeDelegate = this;
							}
							popupNotice.showNoticeDialog(GetString(Resource.String.title_notice), constants.specialistInfo.Account.Name +" is not available. You can't use this feature");
						} else{
							if(talkNowDialog == null){
								talkNowDialog = new TalkNowUI(this);
								talkNowDialog.actionTalknowDelegate = this;
							}
							talkNowDialog.ShowTalkNowEnquiry();
						}
					} else {
						showNoticeUpdateProfile();
					}
				} else {
					callLogInActivity();
				}
			};
			//ltthuc/13/08
			/*llSoonest.Click += delegate {
				if(MApplication.getInstance().isLogedIn){
					if(MApplication.getInstance ().isCompleteProfile) {
						if(asapDialog == null){
							asapDialog = new BookASAPUI(this);
							asapDialog.actionDelegate = this;
						}
						asapDialog.showASAPEnquiry();
					} else {
						showNoticeUpdateProfile();
					}
				} else {
					callLogInActivity();
				}
			};

			llStandard.Click += delegate {
				isStandardHour = true;
				if(MApplication.getInstance().isLogedIn){
					if(MApplication.getInstance ().isCompleteProfile) {
						if(dialogBookPreTime == null) {
							dialogBookPreTime = new BookPreTimeUI(this, isStandardHour);
							dialogBookPreTime.actionDelegate = this;
						}
						dialogBookPreTime.showPreTimeEnquiry(isStandardHour);
					} else {
						showNoticeUpdateProfile();
					}
				} else {
					callLogInActivity();
				}
			};*

			llAnotherTime.Click += delegate {
				isStandardHour = false;
				if(MApplication.getInstance().isLogedIn){
					if(MApplication.getInstance ().isCompleteProfile) {
						if(dialogBookPreTime == null){
							dialogBookPreTime = new BookPreTimeUI(this, isStandardHour);
							dialogBookPreTime.actionDelegate = this;
						}
						dialogBookPreTime.showPreTimeEnquiry(isStandardHour);
					} else {
						showNoticeUpdateProfile();
					}
				} else {
					callLogInActivity();
				}
			};*/

			btnAddFavorite.Click += delegate {
				if(MApplication.getInstance().isLogedIn) {
					if(dialogFavorite == null){
						dialogFavorite = new FavoriteUI(this);
						dialogFavorite.actionFavoriteDelegate = this;
					}
					if (constants.specialistInfo.IsFavourite) {
						dialogFavorite.removeFavoriteRequest(MApplication.getInstance ().specialistID);
					} else {
						dialogFavorite.addToFavouriteRequest(MApplication.getInstance ().specialistID);
					}
				} else {
					callLogInActivity();
				}
			};

			Background bgEmailProfile = new Background (this, Resource.Drawable.ic_emailprofile, Resource.Drawable.ic_emailprofile_pressed);
			btnEmailProfile.SetBackgroundDrawable (bgEmailProfile);
			btnEmailProfile.Click += delegate {
				if(emailDialog == null){
					emailDialog = new SendEmailUI(this);
					emailDialog.actionDelegate = this;
				}
				emailDialog.showEmailDialog(MApplication.getInstance ().specialistID);				
			};
		}

		private void callLogInActivity(){
			MApplication.getInstance ().isLoginAfterSearch = true;
			Intent intent = new Intent(this, typeof(LoginActivity));
			StartActivity(intent);
		}

		private void showNoticeUpdateProfile(){
			if(popupConfirm == null){
				popupConfirm = new PopUpConfirm(this);
				popupConfirm.actionConfirmDelegate = this;
			}
			popupConfirm.showConfirmDialog(GetString(Resource.String.require_update_profile_title), GetString(Resource.String.require_update_profile_content), "Yes", "No");
		}

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
				TCNotificationCenter.defaultCenter.addObserver (this, Constants.kUpdateTalkNowStep, new TCSelector (onUpdateTalkNowStep));
				TCNotificationCenter.defaultCenter.addObserver (this, constants.kDeferSuccess, new TCSelector (onUpdateDeferSuccess));
				constants.isRemoveObserverTalkNow = true;
				llStatus.Visibility = ViewStates.Visible;
				llBookTime.Visibility = ViewStates.Gone;
				llBookTime1.Visibility = ViewStates.Gone;
				llSpecDetail.Visibility = ViewStates.Gone;
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
					break;
				case Constants.TALK_REQUEST_STATUS.CallServiceUnavailable:
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.talknow_notice_title), GetString(Resource.String.twilio_expired));
					break;
				}
			});
		}

		#endregion

		#region OnActionDelegate implementation

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

		public void onSending(){
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSelectTime (DateTime dateTime)
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
				constants.specialistInfo.IsFavourite = true;
				btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);

				TCNotificationCenter.defaultCenter.postNotification (constants.kAddFavoriteSuccess, new FavoriteDTO (MApplication.getInstance ().specialistID, true));
			});
		}

		public void onAddFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				constants.specialistInfo.IsFavourite = false;
				btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_unselect);
			});
		}

		public void onRemoveFavoriteSuccess ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				constants.specialistInfo.IsFavourite = false;
				btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_unselect);

				TCNotificationCenter.defaultCenter.postNotification (constants.kRemoveFavoriteSuccess, new FavoriteDTO (MApplication.getInstance ().specialistID, false));
			});
		}

		public void onRemoveFavoriteFail ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				constants.specialistInfo.IsFavourite = true;
				btnAddFavorite.SetImageResource (Resource.Drawable.ic_favorite_selected);
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
				Finish();
			});
		}

		#endregion

		#region OnActionGetSpecInfo implementation

		public void onSendingGetSpecInfo ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Visible;
			});
		}

		public void onSuccessGetSpecInfo (SpecialistProfileInfos specInfo)
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(specInfo != null) {
					constants.specialistInfo = specInfo;
					constants.specialistInfo.isLoaded = true;
					setDataToView();
				} else {
					if(popupNotice == null) {
						popupNotice = new PopupNoticeInfomation(this);
						popupNotice.noticeDelegate = this;
					}
					popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
				}
			});
		}

		public void onFailGetSpecInfo ()
		{
			this.RunOnUiThread (() => {
				llProgress.Visibility = ViewStates.Gone;
				if(popupNotice == null) {
					popupNotice = new PopupNoticeInfomation(this);
					popupNotice.noticeDelegate = this;
				}
				popupNotice.showNoticeDialogToDestroy(GetString(Resource.String.title_notice),GetString(Resource.String.cannot_get_data));
			});
		}

		#endregion

		#region OnActionConfirmDelegate implementation

		public void onOkConfirmClick ()
		{
			this.RunOnUiThread (() => {
				utilsAndroid.onStartUserProfile (this);
			});
		}

		#endregion
	}
}

