using System;
using Android.App;
using Android.Widget;
using Android.Views;
using System.Linq;
using Android.Text;
using CoreSystem;
using Android.Content;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class TalkNowUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		string strEnquiry = "";
		public OnTalkNowDelegate actionTalknowDelegate { set; get; }

		public TalkNowUI (Activity _activity) : base(_activity)
		{
			this._activity = _activity;
		}

		public void ShowTalkNowEnquiry(){
			var talknowView = LayoutInflater.Inflate (Resource.Layout.popup_request_layout, null);

			var tvTitle = talknowView.FindViewById<TextView> (Resource.Id.tv_title_request_popup);
			var editDescription = talknowView.FindViewById<EditText> (Resource.Id.edit_entertext_popup);
			var btnOK = talknowView.FindViewById<Button> (Resource.Id.btn_confirm_entertext_popup);
			var btnCancel = talknowView.FindViewById<Button> (Resource.Id.btn_cancel_entertext_popup);
			var tvError = talknowView.FindViewById<TextView> (Resource.Id.tv_enquiry_error);

			btnOK.Enabled = false;
			tvTitle.SetText (Android.Resource.String.titleTalknowRequest);
			btnOK.Click += (sender, e) => {
				if (editDescription.Text.Trim().Length <= 0) {
					btnOK.Enabled = false;
					tvError.Visibility = ViewStates.Visible;
				} else {
					strEnquiry = editDescription.Text.ToString ();
					dialog.Dismiss();
					showTalkNowConfirm();
				}
			};

			btnCancel.Click += (sender, e) => {
				dialog.Dismiss();
			};

			editDescription.TextChanged += (sender, e) => {
				if(editDescription.Text.Count() <= 0) {
					btnOK.Enabled = false;
				}else {
					btnOK.Enabled = true;
				}
				tvError.Visibility = ViewStates.Gone;
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (talknowView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.Show ();
		}

		private void showTalkNowConfirm(){
			var confirmTalknowView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);
			var tvTitle = confirmTalknowView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvConfirm = confirmTalknowView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirmTalknow = confirmTalknowView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnDecline = confirmTalknowView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvConfirm.Gravity = GravityFlags.Left;
			tvTitle.SetText (Android.Resource.String.titleTalknowConfirm);
			tvConfirm.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.talknow_confirm), constants.specialistInfo.Account.Name, Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow), Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.Minimum)));
//			if (constants.specialistInfo.SpecialistDetail.Specializations [0].IsApplyNoMinimumCharge) {
//				tvConfirm.TextFormatted = Html.FromHtml(String.Format (_activity.GetString(Resource.String.talknow_confirm), constants.specialistInfo.Account.Name, Utils.getCost((double)constants.specialistInfo.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow), Utils.getCost(MApplication.getInstance().systemConfig.basicFee)));
//			}
			btnConfirmTalknow.Click += (sender, e) => {
				dialog.Dismiss();
				talknowRequest (true, Guid.Empty);
			};

			btnDecline.Click += (sender, e) => {
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (confirmTalknowView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		public void talknowRequest (bool isCustomerTalkNow, Guid bookingId)
		{
			actionTalknowDelegate.onTalkNowSending();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					TalkNowDTO talkNowDTO = ParseDataHelper.parseDataTalkNow(response);
					if (talkNowDTO.success) {					
						actionTalknowDelegate.onTalkNowSucces();
					} else {
						actionTalknowDelegate.onTalkNowFail(talkNowDTO.status);
					}
				});
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionTalknowDelegate.onTalkNowFail(Constants.TALK_REQUEST_STATUS.SystemError);
				});
			});

			DataHelperRequest.getInstance ().sendTalkNowRequest (MApplication.getInstance ().specialistID,
				MApplication.getInstance ().customerID, strEnquiry.Trim(), (int)Constants.TALKNOWTYPE.TALKNOW, isCustomerTalkNow, bookingId, successful, failure);
		}
	}
}

