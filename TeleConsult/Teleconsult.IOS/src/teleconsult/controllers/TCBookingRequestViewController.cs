using System;
using System.Drawing;
using Foundation;
using UIKit;
using Newtonsoft.Json.Linq;
using RestSharp;
using CoreSystem;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Collections.Generic;
using CoreGraphics;
using System.Runtime.CompilerServices;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCBookingRequestViewController : TCBookingTemplateViewController
	{
		public TCBookingRequestViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override Constants.LISTTYPE typeBooking()
		{
			return Constants.LISTTYPE.BOOKINGREQUESTS;
		}

		public override void updateUI()
		{
			this.tableView.ReloadData();
		}
			
	}
}

