using System;

namespace CoreSystem
{
	public class MessageDTO
	{
		public string title;
		public string message;

		public MessageDTO (string title, string message)
		{
			this.title = title;
			this.message = message;
		}
	}
}

