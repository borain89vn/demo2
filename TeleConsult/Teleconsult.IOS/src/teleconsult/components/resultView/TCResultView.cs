using System;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCResultView")]
	public partial class TCResultView : UIView
	{
		public static readonly UINib Nib;


		static TCResultView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCResultView", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCResultView", NSBundle.MainBundle);
			}
		}
		public TCResultView (IntPtr p) : base(p)
		{

		}

		public void setTextResult(string text)
		{
			this.lbTextResult.Text = text;
		}

		public static TCResultView Create ()
		{
			return (TCResultView)Nib.Instantiate (null, null) [0];
		}
	
		public UIButton buttonDimiss()
		{
			return this.btnDismiss;
		}
	}
}

