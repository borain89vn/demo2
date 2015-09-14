
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCSearchCellTemplate : UITableViewCell
	{
		public static readonly NSString Key = new NSString ("TCSearchCellTemplate");
		public static readonly UINib Nib;
		public SpecialistProfileInfos data { get; set; }
		static TCSearchCellTemplate ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCSearchCellTemplate_iPhone", NSBundle.MainBundle);
			else
				Nib = UINib.FromName ("TCSearchCellTemplate_iPhone", NSBundle.MainBundle);
		}

		public TCSearchCellTemplate (IntPtr handle) : base (handle)
		{
		}

		public static TCSearchCellTemplate Create ()
		{
			return (TCSearchCellTemplate)Nib.Instantiate (null, null) [0];
		}

		public override void LayoutSubviews ()  
		{
			base.LayoutSubviews ();

			this.avatar.Layer.CornerRadius = this.avatar.Frame.Height / 2;
			this.avatar.Layer.MasksToBounds = true;
			this.avatar.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.avatar.Layer.BorderWidth = 1;

			this.lbFullName.Text = data.Account.Name == null ? "" : data.Account.Name;
			this.imageRate.Image = MUtils.getRatingImage (data.SpecialistDetail.RatingRatio);
			string textDescription = data.SpecialistDetail.Description;
			if (textDescription != null && textDescription.Length > 113) {
				textDescription = textDescription.Substring (0, 110);
				textDescription = textDescription.Trim() + "...";
			}

			string strProximity = MUtils.getProximity (data.Proximity);
			this.lbDistance.Text = strProximity + " km";
			this.lbDescription.Text = textDescription;
			this.lbSpecialisation.Text = (data.SpecialistDetail.Specializations [0].ProfessionalOrTrade == null ? "" : data.SpecialistDetail.Specializations [0].ProfessionalOrTrade) + " - " + (data.SpecialistDetail.Specializations [0].Name == null ? "" : data.SpecialistDetail.Specializations [0].Name);

			decimal lowestPrice = Math.Min (Math.Min (data.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow, data.SpecialistDetail.Specializations [0].CustomerPricing.Standard), data.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
			decimal hgihtestPrice = Math.Max (Math.Max (data.SpecialistDetail.Specializations [0].CustomerPricing.TalkNow, data.SpecialistDetail.Specializations [0].CustomerPricing.Standard), data.SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);

			string textRate = "$" +  MUtils.getCost ((double)lowestPrice) + " up to $" + MUtils.getCost ((double)hgihtestPrice) + " ($" + MUtils.getCost((double)data.SpecialistDetail.Specializations [0].CustomerPricing.Minimum) + " minimum)";

			this.lbTalkNowRate.Text = textRate;
			this.lbStatusConsultant.Text = CoreSystem.Utils.getStatusConsultant (data.Account.CurrentAvailabilityStatus);

			MLicenseDTO licenseDto = MUtils.getLicenseStatus (data);
			this.imageLicense.Image = licenseDto.image;
			this.lbLicense.Text = licenseDto.text;
			this.lbLicense.TextColor = licenseDto.colorText;

			this.lbOnTime.Text = String.Format (TCLocalizabled.getText("TextLableOntime"), data.SpecialistDetail.OnTime, data.SpecialistDetail.TotalConsultation);
		}
	}
}

