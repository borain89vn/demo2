using System;
using Foundation;
using System.Drawing;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCRatingBar : UIView
	{
		public enum RBRating
		{
			rb0,
			rb1_h,
			rb1,
			rb2_h,
			rb2,
			rb3_h,
			rb3,
			rb4_h,
			rb4,
			rb5_h,
			rb5
		};

		public TCRatingBarDelegate pDelegate { get; set; }

		private int numStar;

		public SizeF imageSize;

		public RBRating ratingPoint { get; set;}

		public TCRatingBar (RectangleF rect):base(rect)
		{

		}
		public void addRating(){
			RectangleF rect = (RectangleF)this.Frame;
			imageSize = new SizeF (rect.Width / this.numStar, rect.Height);
			ratingPoint=RBRating.rb0;
			float x=0;
			for (int i=0; i < this.numStar ; i++) {
				//[this addSubview:[self imageViewWithFrame:CGRectMake(x, 0, imageSize.width, imageSize.height) andTag:i+1]];
				this.AddSubview (this.imageViewWithFrame(new RectangleF(x,0,imageSize.Width, imageSize.Height),i+1));
				x+=imageSize.Width;
			}
		}

		public TCRatingBar (SizeF size,PointF position, int numStar):base(new RectangleF (position.X, position.Y, size.Width, size.Height))
		{
			this.numStar = numStar;
			imageSize = new SizeF (size.Width/ this.numStar, size.Height);
			ratingPoint=RBRating.rb0;
			float x=0;
			for (int i=0;i< this.numStar;i++) {
				//[this addSubview:[self imageViewWithFrame:CGRectMake(x, 0, imageSize.width, imageSize.height) andTag:i+1]];
				this.AddSubview (this.imageViewWithFrame(new RectangleF(x,0,imageSize.Width, imageSize.Height),i+1));
				x+=imageSize.Width;
			}
		}
		public UIImageView imageViewWithFrame(RectangleF rect,int itag){
			UIImageView image = new UIImageView (rect);
			image.Image = UIImage.FromBundle ("star_inactive");
			image.Tag = itag;
			return image;
		}
		/*
         * -(UIImageView*)imageViewAtIndex:(int)index
{
   return  (UIImageView*)[self viewWithTag:index];
}
            */
		public UIImageView imageViewAtIndex(int index){
			return (UIImageView)(this.ViewWithTag(index));
		}
		public void fillStartillPoint(PointF point){




			Console.Write("\nPresssss");
			if (point.X<imageSize.Width/2 && point.X>0) {

				Console.Write("\nFirst");
			


				for (int i = 1; i <= this.numStar; i++) {
					if (i == 1) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb1_h;
			}
			if (point.X<imageSize.Width*2 && point.X>=imageSize.Width/2) {
				Console.Write("\nSirst");
			
				for (int i = 1; i <= this.numStar; i++) {
					if (i == 1) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb1;
			}
			if (point.X<imageSize.Width*2-imageSize.Width/2  && point.X>=imageSize.Width) {


				for (int i = 1; i <= this.numStar; i++) {
					if (i <=2) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb2_h;
			}
			//if (point.X<imageSize.Width*3 && point.X>=imageSize.Width*3-imageSize.Width/2) {
			if (point.X<imageSize.Width*2 && point.X>=imageSize.Width*2-imageSize.Width/2) {

				for (int i = 1; i <= this.numStar; i++) {
					if (i <=2) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb2;
			}
			if (point.X<imageSize.Width*3-imageSize.Width/2 && point.X>=imageSize.Width*2) {

				for (int i = 1; i <= this.numStar; i++) {
					if (i <=3) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb3_h;
			}
			if (point.X<imageSize.Width*3 && point.X>=imageSize.Width*3-imageSize.Width/2) {

				for (int i = 1; i <= this.numStar; i++) {
					if (i <=3) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}

				ratingPoint=RBRating.rb3;
			}
			if (point.X<imageSize.Width*4-imageSize.Width/2 && point.X>=imageSize.Width*3) {

				for (int i = 1; i <= this.numStar; i++) {
					if (i <=4) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}


				ratingPoint=RBRating.rb4_h;
			}
			if (point.X<imageSize.Width*4 && point.X>=imageSize.Width*4-imageSize.Width/2) {

				for (int i = 1; i <= this.numStar; i++) {
					if (i <=4) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
					}
				}


				ratingPoint=RBRating.rb4;
			}
			if (point.X<imageSize.Width*5-imageSize.Width/2 && point.X>=imageSize.Width*4) {

				for (int i = 1; i <= this.numStar; i++) {
					this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
				}


				ratingPoint=RBRating.rb5_h;
			}
			if (point.X<imageSize.Width*5 && point.X>=imageSize.Width*5-imageSize.Width/2) {

				for (int i = 1; i <= this.numStar; i++) {
					this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
				}
					
				ratingPoint=RBRating.rb5;
			}

		}
		public int getcurrentRatings()
		{

			//AppDelegate.showAlert (""+(int)ratingPoint);
			return (int)this.ratingPoint;
		}

		public override void TouchesBegan (NSSet touches, UIEvent evt)
		{

			UITouch touch=(UITouch)touches.AnyObject;

			PointF pt = (PointF)touch.LocationInView (this);

			if ((pt.X>=0 && pt.X<=this.Frame.Size.Width) && (pt.Y>0 && pt.Y<=this.Frame.Size.Height)) {
				//[self fillStartillPoint:pt];
				this.fillStartillPoint (pt);
				if (this.pDelegate != null)
					this.pDelegate.ratingBarClicked ();
			}
		}
		public override void TouchesMoved (NSSet touches, UIEvent evt)
		{
			base.TouchesMoved (touches, evt);

			UITouch touch=(UITouch)touches.AnyObject;
			PointF pt = (PointF)touch.LocationInView (this);

			if ((pt.X>=0 && pt.X<=this.Frame.Size.Width) && (pt.Y>0 && pt.Y<=this.Frame.Size.Height)) {
				//[self fillStartillPoint:pt];
				this.fillStartillPoint (pt);
			}
		}
		public void setRatings(double rate1){

			RBRating rate = (RBRating)(rate1 * 2);
			ratingPoint=rate;

			if (rate == RBRating.rb0) {
				for (int i = 1; i <= this.numStar; i++) {
					this.imageViewAtIndex(i).Image=UIImage.FromBundle ("star_inactive");
				}
			}
			if (rate == RBRating.rb1_h) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i == 1) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
			if (rate == RBRating.rb1) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i == 1) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}

			if (rate == RBRating.rb2_h) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <=2) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}

			if (rate == RBRating.rb2) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 2) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
			if (rate == RBRating.rb3_h) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 3) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
			if (rate == RBRating.rb3) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 3) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
			if (rate == RBRating.rb4_h) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 4) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}

			if (rate == RBRating.rb4) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 4) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}

			if (rate == RBRating.rb5_h) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 5) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
			if (rate == RBRating.rb5) {
				for (int i = 1; i <= this.numStar; i++) {
					if (i <= 5) {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_active");
					} else {
						this.imageViewAtIndex (i).Image = UIImage.FromBundle ("star_inactive");
					}
				}
			}
		}
	}

	public interface TCRatingBarDelegate
	{
		void ratingBarClicked();
	}

}
