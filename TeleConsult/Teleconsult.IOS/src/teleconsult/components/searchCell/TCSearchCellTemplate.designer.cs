// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace Teleconsult.IOS
{
	[Register ("TCSearchCellTemplate")]
	partial class TCSearchCellTemplate
	{
		[Outlet]
		public UIKit.UIImageView avatar { get; private set; }

		[Outlet]
		UIKit.UIImageView imageLicense { get; set; }

		[Outlet]
		UIKit.UIImageView imageOnTime { get; set; }

		[Outlet]
		public UIKit.UIImageView imageRate { get; private set; }

		[Outlet]
		public UIKit.UIActivityIndicatorView indicator { get; private set; }

		[Outlet]
		UIKit.UILabel lbDescription { get; set; }

		[Outlet]
		public UIKit.UILabel lbDistance { get; private set; }

		[Outlet]
		public UIKit.UILabel lbFullName { get; private set; }

		[Outlet]
		UIKit.UILabel lbLicense { get; set; }

		[Outlet]
		UIKit.UILabel lbOnTime { get; set; }

		[Outlet]
		UIKit.UILabel lbSpecialisation { get; set; }

		[Outlet]
		public UIKit.UILabel lbStatusConsultant { get; private set; }

		[Outlet]
		public UIKit.UILabel lbTalkNowRate { get; private set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (avatar != null) {
				avatar.Dispose ();
				avatar = null;
			}

			if (imageLicense != null) {
				imageLicense.Dispose ();
				imageLicense = null;
			}

			if (imageOnTime != null) {
				imageOnTime.Dispose ();
				imageOnTime = null;
			}

			if (imageRate != null) {
				imageRate.Dispose ();
				imageRate = null;
			}

			if (indicator != null) {
				indicator.Dispose ();
				indicator = null;
			}

			if (lbDescription != null) {
				lbDescription.Dispose ();
				lbDescription = null;
			}

			if (lbDistance != null) {
				lbDistance.Dispose ();
				lbDistance = null;
			}

			if (lbFullName != null) {
				lbFullName.Dispose ();
				lbFullName = null;
			}

			if (lbLicense != null) {
				lbLicense.Dispose ();
				lbLicense = null;
			}

			if (lbOnTime != null) {
				lbOnTime.Dispose ();
				lbOnTime = null;
			}

			if (lbSpecialisation != null) {
				lbSpecialisation.Dispose ();
				lbSpecialisation = null;
			}

			if (lbStatusConsultant != null) {
				lbStatusConsultant.Dispose ();
				lbStatusConsultant = null;
			}

			if (lbTalkNowRate != null) {
				lbTalkNowRate.Dispose ();
				lbTalkNowRate = null;
			}
		}
	}
}
