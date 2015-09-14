using System;
using Android.App;
using Android.Widget;
using Android.Views;
using System.Linq;
using Android.Text;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class RatingFeedbackUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		EditText edFeeback;
		Guid iCallId;
		int iNumStar;
		public OnRatingDelegate actionRatingDelegate { set; get; }

		public RatingFeedbackUI (Activity _activity, Guid iCallId) : base (_activity)
		{
			this._activity = _activity;
			this.iCallId = iCallId;
		}

		public void showRatingFeedback(){
			var ratingFeebackView = LayoutInflater.Inflate (Resource.Layout.popup_rating_feedback, null);

			edFeeback = ratingFeebackView.FindViewById<EditText> (Resource.Id.edit_feedback);

			var btnSend = ratingFeebackView.FindViewById<Button> (Resource.Id.btnSendFeedback);
			var btnCancel = ratingFeebackView.FindViewById<Button> (Resource.Id.btnCancelFeeback);
			var tvError = ratingFeebackView.FindViewById<TextView> (Resource.Id.tv_error_feedback);
			var imgStar1 = ratingFeebackView.FindViewById<ImageView> (Resource.Id.imgStar1);
			var imgStar2 = ratingFeebackView.FindViewById<ImageView> (Resource.Id.imgStar2);
			var imgStar3 = ratingFeebackView.FindViewById<ImageView> (Resource.Id.imgStar3);
			var imgStar4 = ratingFeebackView.FindViewById<ImageView> (Resource.Id.imgStar4);

			tvError.SetText (Resource.String.feeback_error);
			iNumStar = 0;

			imgStar1.Click += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				iNumStar = 1;
				imgStar1.SetImageResource(Resource.Drawable.ic_star);
				imgStar2.SetImageResource(Resource.Drawable.ic_star_disable);
				imgStar3.SetImageResource(Resource.Drawable.ic_star_disable);
				imgStar4.SetImageResource(Resource.Drawable.ic_star_disable);
			};

			imgStar2.Click += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				iNumStar = 2;
				imgStar1.SetImageResource(Resource.Drawable.ic_star);
				imgStar2.SetImageResource(Resource.Drawable.ic_star);
				imgStar3.SetImageResource(Resource.Drawable.ic_star_disable);
				imgStar4.SetImageResource(Resource.Drawable.ic_star_disable);
			};

			imgStar3.Click += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				iNumStar = 3;
				imgStar1.SetImageResource(Resource.Drawable.ic_star);
				imgStar2.SetImageResource(Resource.Drawable.ic_star);
				imgStar3.SetImageResource(Resource.Drawable.ic_star);
				imgStar4.SetImageResource(Resource.Drawable.ic_star_disable);
			};

			imgStar4.Click += (sender, e) => {
				tvError.Visibility = ViewStates.Gone;
				iNumStar = 4;
				imgStar1.SetImageResource(Resource.Drawable.ic_star);
				imgStar2.SetImageResource(Resource.Drawable.ic_star);
				imgStar3.SetImageResource(Resource.Drawable.ic_star);
				imgStar4.SetImageResource(Resource.Drawable.ic_star);
			};

			btnSend.Click += (sender, e) => {
				if(iNumStar == 0) {
					tvError.Visibility = ViewStates.Visible;
				} else {
					dialog.Dismiss();
					actionRatingDelegate.onSendingRating();
					sendFeedback();
				}
			};

			btnCancel.Click += (sender, e) => {
				dialog.Dismiss();
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetInverseBackgroundForced (true);
			builder.SetView (ratingFeebackView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}

		private void sendFeedback()
		{
			Action<string> successful = (response => {
				_activity.RunOnUiThread (()=>{
					bool status = ParseDataHelper.parseDataFeedback(response);
					if(status) {
						actionRatingDelegate.onSuccessRating(iNumStar, edFeeback.Text.Trim ());
						Toast.MakeText (_activity, _activity.GetString(Resource.String.send_feedback_success), ToastLength.Long).Show ();
					} else {
						actionRatingDelegate.onFailRating();
						Toast.MakeText (_activity, _activity.GetString(Resource.String.request_fail), ToastLength.Long).Show ();
					}
				});
			});
			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					actionRatingDelegate.onFailRating();
					Toast.MakeText (_activity, _activity.GetString(Resource.String.connection_fail), ToastLength.Long).Show ();
				});
			});	

			DataHelperRequest.getInstance ().sendFeedbackRequest (MApplication.getInstance ().specialistID,
				MApplication.getInstance ().customerID, iCallId, iNumStar, edFeeback.Text.Trim (), successful, failure);
		}
	}
}

