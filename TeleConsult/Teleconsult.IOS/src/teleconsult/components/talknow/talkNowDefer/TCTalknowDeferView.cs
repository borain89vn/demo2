using System;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCTalknowDeferView")]
	public partial class TCTalknowDeferView : UIView
	{
		public static readonly UINib Nib;


		static TCTalknowDeferView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCTalknowDeferView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCTalknowDeferView_iPhone", NSBundle.MainBundle);
			}
		}
		public TCTalknowDeferView (IntPtr p) : base(p)
		{

		}

		public static TCTalknowDeferView Create ()
		{
			return (TCTalknowDeferView)Nib.Instantiate (null, null) [0];
		}

		public void updateDefer(string time)
		{
			this.lbTextDefer.Text = String.Format(TCLocalizabled.getText ("TextLableUpdateDefer"), time);
		}
	
	}
}

