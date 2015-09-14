using System;
using Android.App;
using CoreSystem;
using System.Collections.Generic;
using System.Linq;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetListFavorites
	{
		Activity _activity;
		static List<SpecialistProfileInfos> specialistProfiles = new List<SpecialistProfileInfos>();
		static List<SpecialistProfileInfos> specialistProfilesTemp = new List<SpecialistProfileInfos>();
		public OnActionGetListFavoriteDelegate actionListFavoriteDelegate { set; get; }

		public GetListFavorites (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getListFavorite()
		{
			actionListFavoriteDelegate.onSending ();
			Action<string> successful = (response => {
				_activity.RunOnUiThread(() => {
					specialistProfiles.Clear ();
					specialistProfilesTemp = ParseDataHelper.parseDataSpecialistProfilesSearch(response);
					if(specialistProfilesTemp != null){
						foreach(var specInfo in specialistProfilesTemp){
							specialistProfiles.Add(specInfo);
						}
					}
					actionListFavoriteDelegate.onSuccess(true, specialistProfiles);
				});
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (()=>{
					actionListFavoriteDelegate.onSuccess(false, specialistProfiles);
				});
			});

			DataHelperRequest.getInstance ().getListFavorites (MApplication.getInstance().longitude, MApplication.getInstance().latitude, successful, failure);
		}
	}

	public interface OnActionGetListFavoriteDelegate{
		void onSending();
		void onSuccess(bool isSuccess, List<SpecialistProfileInfos> listSpecInfo);
	}
}

