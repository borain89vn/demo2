using System;
using Foundation;
using UIKit;
using System.Drawing;
using CoreGraphics;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCFeedbackInfoView")]
	public partial class TCFeedbackInfoView : UIView
	{
		public static readonly UINib Nib;

		static TCFeedbackInfoView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCFeedbackInfoView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCFeedbackInfoView_iPhone", NSBundle.MainBundle);
			}
		}

		public TCFeedbackInfoView (IntPtr p) : base(p)
		{

		}
			
		public static TCFeedbackInfoView Create ()
		{
			return (TCFeedbackInfoView)Nib.Instantiate (null, null) [0];
		}
			
		public void setInfo (int rating, string feedback)
		{
			this.BackgroundColor = UIColor.Clear;
			this.viewRating.BackgroundColor = UIColor.Clear;
			this.lbTextFeedback.BackgroundColor = UIColor.Clear;

			SizeF size= new Size((int)this.viewRating.Frame.Width, (int)this.viewRating.Frame.Height);
			TCRatingBar ratingBar  = new TCRatingBar (size, new PointF(0,0) , 4);
			ratingBar.setRatings (double.Parse(rating.ToString()));
			this.viewRating.AddSubview (ratingBar);

			CGRect frameText = this.lbTextFeedback.Frame;
			CGSize sizeText = MUtils.getSizeText (feedback, MUtils.getFontWithSize(false, 14.0f), frameText.Width);
			frameText.Height = sizeText.Height;
			this.lbTextFeedback.Frame = frameText;
			this.lbTextFeedback.Text = feedback == null ? "" : feedback;
			this.Frame = new CGRect (this.Frame.X, this.Frame.Y, this.Frame.Width, this.lbTextFeedback.Frame.Y + this.lbTextFeedback.Frame.Height);
		}
	}
}

