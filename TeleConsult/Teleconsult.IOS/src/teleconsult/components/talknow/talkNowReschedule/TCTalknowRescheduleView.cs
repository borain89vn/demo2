using System;
using UIKit;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCTalknowRescheduleView")]
	public partial class TCTalknowRescheduleView : UIView
	{
		public static readonly UINib Nib;


		static TCTalknowRescheduleView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCTalknowRescheduleView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCTalknowRescheduleView_iPhone", NSBundle.MainBundle);
			}
		}
		public TCTalknowRescheduleView (IntPtr p) : base(p)
		{

		}

		public static TCTalknowRescheduleView Create ()
		{
			return (TCTalknowRescheduleView)Nib.Instantiate (null, null) [0];
		}

		public void updateRescheduleNotice (string time)
		{
			this.lbTextReshedule.Text = String.Format(TCLocalizabled.getText ("TextLableUpdateReshedule"), time);
		}

	}
}

