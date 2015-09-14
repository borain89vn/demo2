using System;

namespace Teleconsult.IOS
{
	public class MAlertDTO
	{
		public string title;
		public string message;
		public bool isDelegate;

		public MAlertDTO()
		{
		}

		public MAlertDTO (bool isDelegate, string title, string message)
		{
			this.isDelegate = isDelegate;
			this.title = title;
			this.message = message;
		}
	}
}

