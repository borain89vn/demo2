using System;
using UIKit;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("NotifyNetworkView")]
	public partial class NotifyNetworkView : UIView
	{
		public static readonly UINib Nib;

		static NotifyNetworkView ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("NotifyNetworkView", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("NotifyNetworkView", NSBundle.MainBundle);
			}
		}
		public NotifyNetworkView (IntPtr p) : base(p)
		{

		}

		public static NotifyNetworkView Create ()
		{
			return (NotifyNetworkView)Nib.Instantiate (null, null) [0];
		}

		partial void close (NSObject sender)
		{
			this.RemoveFromSuperview();
		}
	}
}

