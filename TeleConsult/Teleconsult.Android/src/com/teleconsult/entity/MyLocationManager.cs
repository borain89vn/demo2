using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.Locations;
using CoreSystem;

namespace Teleconsult.Android
{	
	[Activity (Label = "MyLocationManager"), CLSCompliant(false)]
	public class MyLocationManager : BaseActivity, ILocationListener
	{
		LocationManager locMgr;
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			// Create your application here
		}

		protected override void OnResume ()
		{
			base.OnResume ();
			InitializeLocationManager ();
		}

		void InitializeLocationManager()
		{
			locMgr = GetSystemService (Context.LocationService) as LocationManager;

			if (locMgr.AllProviders.Contains (LocationManager.NetworkProvider)
				&& locMgr.IsProviderEnabled (LocationManager.NetworkProvider)) {
				locMgr.RequestLocationUpdates (LocationManager.NetworkProvider, 0, 0, this);
			} else {
				MApplication.getInstance().longitude = 0;
				MApplication.getInstance().latitude = 0;
			}
		}

		public void OnLocationChanged (Location location)
		{
			MApplication.getInstance().longitude = location.Longitude;
			MApplication.getInstance().latitude = location.Latitude;
		}

		public void OnProviderDisabled (string provider)
		{
		}

		public void OnProviderEnabled (string provider)
		{
		}

		public void OnStatusChanged (string provider, Availability status, Bundle extras)
		{
		}
	}
}

