using System;
using Android.App;
using Android.Content;
using Android.Views;
using CoreSystem;
using Android.Widget;
using System.Collections.Generic;
using Android.Graphics;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class SpecialisationView : LinearLayout
	{
		int padTop = 10;
		int padTop1 = 5;
		int padTop2 = 20;
		int padLeft = 20;
		int padLeft1 = 50;
		int padLeft2 = 100;
		int padLeft3 = 150;
		int padLeft4 = 200;
		//int padLeft4 = 250;
		List<string> listFileName = new List<string>();
		Context context;
		SpecialistProfileInfos specInfos;
		public SpecialisationView(Context context, SpecialistProfileInfos specInfos):base(context){
			this.specInfos = specInfos;
			this.context = context;
			Init ();
		}			

		private void Init(){
			this.Orientation = Orientation.Vertical;
			this.SetBackgroundResource(Resource.Color.bg_color);
			int iSpecializationSize = specInfos.SpecialistDetail.Specializations.Count;
			for (int k = 0; k < iSpecializationSize; k++) {
				var tvSpecialisation = new TextView (this.Context) {
					Text = specInfos.SpecialistDetail.Specializations [k].ProfessionalOrTrade
				};
				tvSpecialisation.SetTextColor (Color.Black);
				tvSpecialisation.SetTypeface (null, TypefaceStyle.Bold);
				tvSpecialisation.SetPadding (padLeft, padTop, 0, 0);
				this.AddView (tvSpecialisation);

				var tvSpecialisationMajor = new TextView (this.Context) {
					Text = specInfos.SpecialistDetail.Specializations [k].Name
				};
				tvSpecialisationMajor.SetTextColor (Color.Black);
				tvSpecialisationMajor.SetTypeface (null, TypefaceStyle.Bold);
				tvSpecialisationMajor.SetPadding (padLeft1, padTop, 0, 0);
				this.AddView (tvSpecialisationMajor);

				string sTextLicense = " No";
				if (specInfos.SpecialistDetail.Specializations [k].LicenceToOperate) {
					sTextLicense = " Yes";
				}
				var tvLicence = new TextView (this.Context) {
					Text = context.GetString (Resource.String.licence_title) + sTextLicense
				};
				tvLicence.SetTextColor (Color.Black);
				tvLicence.SetPadding (padLeft2, padTop, 0, 0);
				tvLicence.SetTypeface (null, TypefaceStyle.Bold);
				this.AddView (tvLicence);
				if (specInfos.SpecialistDetail.Specializations [k].LicenceToOperate) {
					var tvLicenceNumber = new TextView (this.Context) {
						Text = "License Number: " + specInfos.SpecialistDetail.Specializations [k].LicenseNumber
					};
					tvLicenceNumber.SetTextColor (Color.Black);
					tvLicenceNumber.SetPadding (padLeft2, padTop, 0, 0);
					tvLicenceNumber.SetTypeface (null, TypefaceStyle.Bold);
					tvLicenceNumber.SetSingleLine (true);
					tvLicenceNumber.Ellipsize = global::Android.Text.TextUtils.TruncateAt.End;
					this.AddView (tvLicenceNumber);


//				ImageView img = new ImageView (context);
//				if (specInfos.SpecialistDetail.Specializations [k].LicenceToOperate)
//					img.SetImageResource (Resource.Drawable.ic_check);
//				else
//					img.SetImageResource (Resource.Drawable.ic_close_large);
//
//				RelativeLayout.LayoutParams param = new RelativeLayout.LayoutParams(32 ,32);
//				param.TopMargin = 15;
//				img.LayoutParameters = param;
//				LinearLayout ll = new LinearLayout (context);
//				ll.Orientation = Orientation.Horizontal;
//				ll.SetVerticalGravity (GravityFlags.CenterVertical);
//				ll.AddView (tvLicence);
//				ll.AddView (img);
//
//				this.AddView (ll);

					var tvCountryPermittedTitle = new TextView (this.Context) {
						Text = context.GetString (Resource.String.country_permitted)
					};
					tvCountryPermittedTitle.SetTextColor (Color.Black);
					tvCountryPermittedTitle.SetPadding (padLeft2, padTop, 0, 0);
					tvCountryPermittedTitle.SetTypeface (null, TypefaceStyle.Bold);
					this.AddView (tvCountryPermittedTitle);

					int size = specInfos.SpecialistDetail.Specializations [k].lstCountryPermitted.Count;
					for (int n = 0; n < size; n++) {
						var tvCountry = new TextView (this.Context) {
							Text = specInfos.SpecialistDetail.Specializations [k].lstCountryPermitted [n].Name
						};
						tvCountry.SetTextColor (Color.Black);
						tvCountry.SetPadding (padLeft3, padTop, 0, 0);
						tvCountry.SetTypeface (null, TypefaceStyle.Bold);
						this.AddView (tvCountry);

						int size1 = specInfos.SpecialistDetail.Specializations [k].lstCountryPermitted [n].StatesAndRegulatories.Count;
						for (int i = 0; i < size1; i++) {
							var tvState = new TextView (this.Context) {
								Text = "State: " + specInfos.SpecialistDetail.Specializations [k].lstCountryPermitted [n].StatesAndRegulatories [i].State
							};
							tvState.SetTextColor (Color.Black);
							tvState.SetPadding (padLeft4, padTop1, 0, 0);

							var tvRegulatory = new TextView (this.Context) {
								Text = "Regulatory Authority: " + specInfos.SpecialistDetail.Specializations [k].lstCountryPermitted [n].StatesAndRegulatories [i].Regulatory
							};
							tvRegulatory.SetTextColor (Color.Black);
							tvRegulatory.SetPadding (padLeft4, padTop1, 0, padTop2);

							this.AddView (tvState);
							this.AddView (tvRegulatory);
						}
					}

					var tvProof = new TextView (this.Context) {
						Text = context.GetString (Resource.String.proof_title)
					};
					tvProof.SetTextColor (Color.Black);
					tvProof.SetPadding (padLeft2, 0, 0, 0);
					tvProof.SetTypeface (null, TypefaceStyle.Bold);
					this.AddView (tvProof);

					for (int i = 0; i < specInfos.SpecialistDetail.Specializations [k].POCs.Count; i++) {
						listFileName.Add (specInfos.SpecialistDetail.Specializations [k].POCs [i].S3FileName);
						var tvPOCPath = new TextView (this.Context) {
							Text = specInfos.SpecialistDetail.Specializations [k].POCs [i].S3FileName
						};
						tvPOCPath.Id = i;
						tvPOCPath.SetTextColor (Color.Blue);
						tvPOCPath.SetPadding (padLeft3, 5, 0, 0);
						tvPOCPath.PaintFlags = PaintFlags.UnderlineText;
						tvPOCPath.SetTypeface (null, TypefaceStyle.Bold);
						tvPOCPath.SetSingleLine (true);
						tvPOCPath.Ellipsize = global::Android.Text.TextUtils.TruncateAt.Middle;
						tvPOCPath.Click += (sender, e) => {
							utilsAndroid.onViewFile (context, listFileName [tvPOCPath.Id]);
						};

						this.AddView (tvPOCPath);
					}
				}
				string str = "GST applies: No";
				if (specInfos.SpecialistDetail.Specializations [k].GST)
					str = "GST applies: Yes";
				var tvGST = new TextView (this.Context) {
					Text = str
				};
				tvGST.SetTextColor (Color.Black);
				tvGST.SetPadding (padLeft2, padTop, 0, 5);
				tvGST.SetTypeface (null, TypefaceStyle.Bold);
				this.AddView (tvGST);
			}
		}
	}
}

