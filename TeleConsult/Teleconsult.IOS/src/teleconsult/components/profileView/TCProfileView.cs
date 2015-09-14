using System;
using Foundation;
using UIKit;
using CoreSystem;
using System.Drawing;
using CoreGraphics;
using System.Collections.Generic;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCProfileView : UIView
	{
		public SpecialistProfileInfos specialistInfo { get; set; }
		private TCSpecialistProfileViewController parentVC;

		UIFont fontTitle;
		UIFont fontBody;
		UIFont fontBodyBold;

		const float paddingTop = 10.0f;
		const float paddingRight = 15.0f;
		const float distanceComponent = 10.0f;
		const float heightControl = 21.0f;

		CGRect frameScreen = UIScreen.MainScreen.Bounds;

		public TCProfileView (TCSpecialistProfileViewController parentVC)
		{
			this.parentVC = parentVC;
			fontBody = MUtils.getFontWithSize (false, 16.0f);
			fontTitle = MUtils.getFontWithSize (false, 20.0f);
			fontBodyBold = MUtils.getFontWithSize (true, 16.0f);
		}
			
		public void build (SpecialistProfileInfos specialistInfo)
		{
			// Create lable Title ProfessionalOrTrade
			UILabel lbTitleProfessionalOrTrade = new UILabel ();
			lbTitleProfessionalOrTrade.Frame = new CGRect (paddingRight, paddingTop, frameScreen.Width - paddingRight, heightControl);
			lbTitleProfessionalOrTrade.Text = "PROFESSION";
			lbTitleProfessionalOrTrade.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbTitleProfessionalOrTrade.Font = fontTitle;
			this.AddSubview (lbTitleProfessionalOrTrade);

			UILabel lbTextProfessional = new UILabel ();
			lbTextProfessional.Frame = new CGRect (paddingRight, lbTitleProfessionalOrTrade.Frame.Y + lbTitleProfessionalOrTrade.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTextProfessional.Text = specialistInfo.SpecialistDetail.Specializations [0].ProfessionalOrTrade;
			lbTextProfessional.Font = fontBody;//fontBodyBold
			this.AddSubview (lbTextProfessional);

			// Create Specialisations
			UILabel lbTitleSpecialisation = new UILabel ();
			lbTitleSpecialisation.Frame = new CGRect (paddingRight, lbTextProfessional.Frame.Y + lbTextProfessional.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTitleSpecialisation.Text = "SPECIALISATIONS";
			lbTitleSpecialisation.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbTitleSpecialisation.Font = fontTitle;
			this.AddSubview (lbTitleSpecialisation);

			UILabel lbTexSpecialisation = new UILabel ();
			lbTexSpecialisation.Frame = new CGRect (paddingRight, lbTitleSpecialisation.Frame.Y + lbTitleSpecialisation.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTexSpecialisation.Text = specialistInfo.SpecialistDetail.Specializations [0].Name;
			lbTexSpecialisation.Font = fontBody;//fontBodyBold
			this.AddSubview (lbTexSpecialisation);

			// Create GST Applies
			UILabel lbTitleGSTApplies = new UILabel ();
			lbTitleGSTApplies.Frame = new CGRect (paddingRight, lbTexSpecialisation.Frame.Y + lbTexSpecialisation.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTitleGSTApplies.Text = "GST APPLIES";
			lbTitleGSTApplies.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbTitleGSTApplies.Font = fontTitle;
			this.AddSubview (lbTitleGSTApplies);

			UILabel lbTextGSTApplies = new UILabel ();
			lbTextGSTApplies.Frame = new CGRect (paddingRight, lbTitleGSTApplies.Frame.Y + lbTitleGSTApplies.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTextGSTApplies.Text = specialistInfo.SpecialistDetail.Specializations [0].GST ? "Yes" : "No";
			lbTextGSTApplies.Font = fontBody;
			this.AddSubview (lbTextGSTApplies);

			// Create lable short description
			UILabel lbShortDescription = new UILabel ();
			lbShortDescription.Frame = new CGRect (paddingRight, lbTextGSTApplies.Frame.Y + lbTextGSTApplies.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbShortDescription.Text = "SHORT DESCRIPTION";
			lbShortDescription.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbShortDescription.Font = fontTitle;
			this.AddSubview (lbShortDescription);

			// Create text short description
			UILabel textShortDescription = new UILabel ();
			textShortDescription.Text = specialistInfo.SpecialistDetail.Description == null ? "" : specialistInfo.SpecialistDetail.Description;
			textShortDescription.Font = fontBody;
			textShortDescription.Lines = 0;
			CGSize size = MUtils.getSizeText (textShortDescription.Text, textShortDescription.Font, frameScreen.Width - paddingRight);
			textShortDescription.Frame = new CGRect (paddingRight, lbShortDescription.Frame.Y + lbShortDescription.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, size.Height);
			this.AddSubview (textShortDescription);

			// Show standard hour
			UILabel lbStandarHours = new UILabel ();
			lbStandarHours.Frame = new CGRect (paddingRight, textShortDescription.Frame.Y + textShortDescription.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbStandarHours.Text = "STANDARD HOURS";
			lbStandarHours.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbStandarHours.Font = fontTitle;
			this.AddSubview (lbStandarHours);

			// Create text short description
			List<StandardHour> standardHours = specialistInfo.SpecialistDetail.ListStandardHour;
			UIView textStandardHour = getViewStandardHourFormat (standardHours);
			string textStandarHours = "";

			foreach (StandardHour standarHour in standardHours) {
				if (standarHour.Day != null)
					textStandarHours += standarHour.Day + ": " + standarHour.Start + " - " + standarHour.End + "\u2028";
			}
				
			textStandardHour.Frame = new CGRect (paddingRight, lbStandarHours.Frame.Y + lbStandarHours.Frame.Height + distanceComponent, (float)frameScreen.Width - paddingRight * 2, textStandardHour.Frame.Height);
			this.AddSubview (textStandardHour);

			// Create Detailed biography
			UILabel lbDetailedBiography = new UILabel ();
			lbDetailedBiography.Frame = new CGRect (paddingRight, textStandardHour.Frame.Y + textStandardHour.Frame.Height + distanceComponent, frameScreen.Width, heightControl);
			lbDetailedBiography.Text = "DETAILED BIOGRAPHY";
			lbDetailedBiography.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbDetailedBiography.Font = fontTitle;
			this.AddSubview (lbDetailedBiography);

			// Create textView Detailed biography
			UILabel tvDetailedBiography = new UILabel ();

			string textBiography = "";
			if (specialistInfo.SpecialistDetail.Biography != null)
				textBiography = specialistInfo.SpecialistDetail.Biography;
			tvDetailedBiography.Text = textBiography;
			tvDetailedBiography.Font = fontBody;
			tvDetailedBiography.Lines = 0;
			var _size = MUtils.getSizeText (tvDetailedBiography.Text, tvDetailedBiography.Font, frameScreen.Width - paddingRight * 2);

			tvDetailedBiography.Frame = new CGRect (paddingRight, lbDetailedBiography.Frame.Y + lbDetailedBiography.Frame.Height + distanceComponent, (float)frameScreen.Width - paddingRight * 2, _size.Height);
			this.AddSubview (tvDetailedBiography);
			tvDetailedBiography.BackgroundColor = UIColor.Clear;

			// Create lable Title Qualifications
			UILabel lbQualifications = new UILabel ();
			lbQualifications.Frame = new CGRect (paddingRight, tvDetailedBiography.Frame.Y + tvDetailedBiography.Frame.Height + distanceComponent, frameScreen.Width, heightControl);
			lbQualifications.Text = "QUALIFICATIONS";
			lbQualifications.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbQualifications.Font = fontTitle;
			this.AddSubview (lbQualifications);

			// Create lable Text Qualifications 
			UILabel textLbQualifications = new UILabel ();

			textLbQualifications.Text = specialistInfo.SpecialistDetail.Qualification;
			textLbQualifications.Lines = 0;
			textLbQualifications.Font = fontBody;
			CGSize qSize = MUtils.getSizeText (textLbQualifications.Text, textLbQualifications.Font, frameScreen.Width - paddingRight);
			textLbQualifications.Frame = new CGRect (paddingRight, lbQualifications.Frame.Y + lbQualifications.Frame.Height + distanceComponent, frameScreen.Width, qSize.Height);
			this.AddSubview (textLbQualifications);

			UILabel lbTitleLanguages = new UILabel ();
			lbTitleLanguages.Frame = new CGRect (paddingRight, textLbQualifications.Frame.Y + textLbQualifications.Frame.Height + distanceComponent, frameScreen.Width - paddingRight, heightControl);
			lbTitleLanguages.Text = "LANGUAGES SPOKEN";
			lbTitleLanguages.TextColor = TCTheme.getInstance.getThemeColor (Theme.Header);
			lbTitleLanguages.Font = fontTitle;
			this.AddSubview (lbTitleLanguages);

			// Create lable Text Languages 
			UILabel textLanguages = new UILabel ();
			textLanguages.Text = specialistInfo.SpecialistDetail.Languages;
			textLanguages.Font = fontBody;
			textLanguages.Lines = 0;

			CGSize lSize = MUtils.getSizeText (textLanguages.Text, textLanguages.Font, frameScreen.Width - paddingRight);
			textLanguages.Frame = new CGRect (paddingRight, (float)lbTitleLanguages.Frame.Y + (float)lbTitleLanguages.Frame.Height + distanceComponent, (float)frameScreen.Width - paddingRight, lSize.Height);
			this.AddSubview (textLanguages);

			this.Frame = new CGRect (0.0f, 0.0f, frameScreen.Width, textLanguages.Frame.Height + textLanguages.Frame.Y + paddingTop);
		}
			
		private UIView getViewStandardHourFormat (List<StandardHour> standardHours)
		{
			float X = 0;
			float Y = 0;
			float widthDay = 60.0f;
			UIView view = new UIView ();
			view.BackgroundColor = UIColor.Clear;

			foreach (StandardHour standarHour in standardHours) {
				if (standarHour.Day != null) {
				
					UILabel lbDay = new UILabel ();
					lbDay.BackgroundColor = UIColor.Clear;
					lbDay.Frame = new CGRect (X, Y, widthDay, heightControl);
					lbDay.Text = standarHour.Day.ToUpper ();
					lbDay.Font = MUtils.getFontWithSize (false, 15.0f);
					lbDay.TextColor = UIColor.Black;

					UILabel lbTime = new UILabel ();
					lbTime.BackgroundColor = UIColor.Clear;
					lbTime.Frame = new CGRect (lbDay.Frame.X + lbDay.Frame.Width, lbDay.Frame.Y, frameScreen.Width - lbDay.Frame.Width, lbDay.Frame.Height);
					lbTime.Font = MUtils.getFontWithSize (false, 15.0f);
					lbTime.Text = standarHour.Start + " - " + standarHour.End;
					lbTime.TextColor = UIColor.Black;
					view.AddSubview (lbDay);
					view.AddSubview (lbTime);
					Y += heightControl;
				}
			}
			 
			view.Frame = new CGRect (0.0f, 0.0f, 0.0f, Y);

			return view;
		}
	}
}
 
