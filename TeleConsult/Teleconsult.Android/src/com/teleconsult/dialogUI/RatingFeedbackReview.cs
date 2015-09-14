using System;
using Android.App;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class RatingFeedbackReview : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;

		public RatingFeedbackReview (Activity _activity) :base(_activity)
		{
			this._activity = _activity;
		}

		public void showFeedbackReview(int iRating, string content){
			var feedbackView = LayoutInflater.Inflate (Resource.Layout.popup_feedback_review, null);
			var imgRating = feedbackView.FindViewById<ImageView> (Resource.Id.imgRatingReivew);
			var tvContent = feedbackView.FindViewById<TextView> (Resource.Id.tvFeedbackReview);
			var btnOk = feedbackView.FindViewById<Button> (Resource.Id.btnOkFeedbackReview);

			imgRating.SetImageResource(utilsAndroid.getIconRatingResource(iRating));
			tvContent.Text = content;
			btnOk.Click += (sender, e) => {
				dialog.Dismiss ();			
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetView (feedbackView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside (false);
			dialog.Show ();
		}
	}
}

