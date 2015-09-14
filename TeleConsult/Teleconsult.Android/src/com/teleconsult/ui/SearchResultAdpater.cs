using System;
using Android.Views;
using Android.Widget;
using Android.Content;
using Android.App;
using Android.Provider;
using System.Collections.Generic;
using CoreSystem;
using UrlImageViewHelper;
using Android.Graphics.Drawables;

namespace Teleconsult.Android
{
	[CLSCompliant (false)]
	public class SearchResultAdpater: BaseAdapter<SpecialistProfileInfos>, IUrlImageViewCallback
	{
		List<SpecialistProfileInfos> _specialList;
		Activity _activity;

		public SearchResultAdpater (Activity activity, List<SpecialistProfileInfos> specialist) : base ()
		{
			_activity = activity;
			this._specialList = specialist;
		}

		public override int Count {
			get { return _specialList.Count; }
		}


		public override Java.Lang.Object GetItem (int position)
		{		
			return null; // could wrap a Contact in a Java.Lang.Object to return it here if needed
		}

		public override long GetItemId (int position)
		{
			return position;// _specialList [position].Id;
		}

		public override View GetView (int position, View convertView, ViewGroup parent)
		{          
			var view = convertView ?? _activity.LayoutInflater.Inflate (Resource.Layout.search_list_adapter, parent, false);
			var tvName = view.FindViewById<TextView> (Resource.Id.tv_name_search);
			var avatar = view.FindViewById<ImageView> (Resource.Id.avatar_spec_search);
			var tvDescription = view.FindViewById<TextView> (Resource.Id.tv_detail_specialist);
			var tvKm = view.FindViewById<TextView> (Resource.Id.tv_km);
			var tvDolar = view.FindViewById<TextView> (Resource.Id.tv_dolar);
			var tvStatus = view.FindViewById<TextView> (Resource.Id.tv_status);
			var ratingBar = view.FindViewById<ImageView> (Resource.Id.img_ic_rating);
			var tvSpecialization = view.FindViewById<TextView> (Resource.Id.tvSpecializationSearch);
			var tvLicenseStatus = view.FindViewById<TextView> (Resource.Id.tv_licence_status);
			var tvOnTime = view.FindViewById<TextView> (Resource.Id.tv_ontime);
			var ic_license = view.FindViewById<ImageView> (Resource.Id.ic_license_status);

			UrlImageViewHelper.UrlImageViewHelper.SetUrlDrawable (avatar, HttpConstants.BASE_URL + _specialList [position].Account.AvatarPath, Resource.Drawable.special_home, constants.iTimeLoading, this);
			try {
				tvName.Text = _specialList [position].Account.Name;
				string profess = "";
				if(_specialList [position].SpecialistDetail.Specializations [0].Name != null) {
					profess = _specialList [position].SpecialistDetail.Specializations [0].ProfessionalOrTrade;
				}
				if (_specialList [position].SpecialistDetail.Specializations [0].ProfessionalOrTrade != null) {
					profess += " - "+ _specialList [position].SpecialistDetail.Specializations [0].Name;
				}
				tvSpecialization.Text = profess;

				tvDescription.Text = _specialList [position].SpecialistDetail.Description;
				if (_specialList [position].Proximity == null) {
					tvKm.Text = "N/A km";
				} else {
					tvKm.Text = Math.Round (_specialList [position].Proximity.Value) + " km";
				}

				ratingBar.SetImageResource (utilsAndroid.getIconRatingResource ((int)_specialList [position].SpecialistDetail.RatingRatio));
				decimal minPrice;
				decimal hightestPrice;
				minPrice = Math.Min (Math.Min (_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.TalkNow,
					_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.Standard),
					_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);
				hightestPrice = Math.Max (Math.Max (_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.TalkNow,
					_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.Standard),
					_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.OutOfHour);

				Constants.VERIFIED_TYPE statusLicense = Utils.getStatusLicense (_specialList [position]);
				if (statusLicense == Constants.VERIFIED_TYPE.Expired || statusLicense == Constants.VERIFIED_TYPE.Unverified) {
					tvLicenseStatus.SetTextColor (global::Android.Graphics.Color.Red);
				} else if (statusLicense == Constants.VERIFIED_TYPE.Verified) {
					tvLicenseStatus.SetTextColor (_activity.Resources.GetColor (Resource.Color.green));
				} else {
					tvLicenseStatus.SetTextColor (_activity.Resources.GetColor (Resource.Color.blue_landing));
				}
				tvLicenseStatus.Text = Utils.getDescriptionEnum (statusLicense);
				ic_license.SetImageResource (utilsAndroid.getIconLiceseResource ((int)statusLicense));
				tvOnTime.Text = string.Format (_activity.GetString (Resource.String.on_time_status), _specialList [position].SpecialistDetail.OnTime + "/" + _specialList [position].SpecialistDetail.TotalConsultation);
				tvDolar.Text = "$" + Utils.getCost ((double)minPrice) + " up to " + "$" + Utils.getCost ((double)hightestPrice) + " per minute ($" + Utils.getCost((double)_specialList [position].SpecialistDetail.Specializations [0].CustomerPricing.Minimum) + " minimum)";

				tvStatus.Text = Utils.getStatusConsultant ((int)_specialList [position].Account.CurrentAvailabilityStatus);
			} catch (Exception e) {
				Console.Write (e.Message);
			}
			return view;
		}

		#region IUrlImageViewCallback implementation

		public void OnLoaded (ImageView imageView, global::Android.Graphics.Drawables.Drawable loadedDrawable, string url, bool loadedFromCache)
		{
			var conv = ((BitmapDrawable)imageView.Drawable).Bitmap;
			imageView.SetImageBitmap (utilsAndroid.getRoundedShape (conv, 150, 150));
		}

		#endregion

		public override SpecialistProfileInfos this [int position] {
			get {
				return _specialList [position]; 
			}
		}
	}
}

