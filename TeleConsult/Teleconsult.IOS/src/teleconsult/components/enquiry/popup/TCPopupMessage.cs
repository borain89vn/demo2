using System;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCPopupMessage")]
	public partial class TCPopupMessage : UIView
	{
		public static readonly UINib Nib;


		static TCPopupMessage ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCPopupMessage", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCPopupMessage", NSBundle.MainBundle);
			}
		}
		public TCPopupMessage (IntPtr p) : base(p)
		{

		}

		public static TCPopupMessage Create ()
		{
			return (TCPopupMessage)Nib.Instantiate (null, null) [0];
		}

		public void build (string message)
		{
		}

	}
}

