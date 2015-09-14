using System;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCTalknowStateView")]
	public partial class TCTalknowStateView : UIView
	{
		public static readonly UINib Nib;


		static TCTalknowStateView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCTalknowStateView_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCTalknowStateView_iPhone", NSBundle.MainBundle);
			}
		}

		public TCTalknowStateView (IntPtr p) : base (p)
		{

		}

		public static TCTalknowStateView Create ()
		{
			return (TCTalknowStateView)Nib.Instantiate (null, null) [0];
		}

		public void setTextStep1()
		{
			this.lbTextStep1.Text = TCLocalizabled.getText ("TextLableStep1");
		}

		public void updateStep2()
		{
			this.imageStep2.Image = UIImage.FromBundle ("step_check_active");
			this.lbTextStep2.Text = TCLocalizabled.getText("TextUpdateStep2");
		}
	}
}

