using System;
using UIKit;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class MLicenseDTO
	{
		public string text { get; set; }
		public UIImage image { get; set; }
		public UIColor colorText { get; set; }

		public MLicenseDTO ()
		{
		}
	}
}

