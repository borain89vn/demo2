using System;
using System.Drawing;
using Foundation;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCConsultationAlertViewController : TCConsultationTemplateViewController
	{
		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCConsultationAlertViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCConsultationAlertViewController_iPhone" : "TCConsultationAlertViewController_iPhone", null)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
		}
	}
}

