using System;
using CoreLocation;
using UIKit;
using Foundation;
using CoreSystem;
namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCLocationManager
	{
		static TCLocationManager instance;
		public CLLocationManager locationManager = null;

		public TCLocationManager ()
		{
			locationManager = new CLLocationManager ();

			locationManager.DistanceFilter = 10;
			locationManager.Delegate = new TCLocationDelegate ();
		}

		public static TCLocationManager getInstance ()
		{
			if (instance == null) {
				instance = new TCLocationManager ();
			}

			return instance;
		}

		public bool isEnableLocation()
		{
			bool status = true;

			if (CLLocationManager.Status == CLAuthorizationStatus.Denied) {
				status = false;
			}

			return status;
		}

		public void startUpdateLocation ()
		{
			Version version = new Version (UIDevice.CurrentDevice.SystemVersion);
			if (version >= new Version (8, 0)) {
				locationManager.RequestWhenInUseAuthorization ();
			}

			locationManager.StartUpdatingLocation ();
		}
			
		public void startUpdateHeading ()
		{
			if (CLLocationManager.HeadingAvailable)
				locationManager.StartUpdatingHeading ();
		}
	}

	[CLSCompliant (false)]
	public class TCLocationDelegate : CLLocationManagerDelegate
	{
		public TCLocationDelegate () : base ()
		{

		}

		// called for iOS6 and later
		public override void LocationsUpdated (CLLocationManager manager, CLLocation[] locations)
		{
			CLLocation currentLocation = locations [0];

			MApplication.getInstance ().latitude = currentLocation.Coordinate.Latitude;
			MApplication.getInstance ().longitude = currentLocation.Coordinate.Longitude;
			#if DEBUG
			Console.Out.WriteLine ("LocationsUpdated : ( {0} , {1})", MApplication.getInstance ().latitude,MApplication.getInstance ().longitude);
			#endif
		}

		public override void UpdatedHeading (CLLocationManager manager, CLHeading newHeading)
		{
			Console.Out.WriteLine ("UpdatedHeading");
		}
	}
}

