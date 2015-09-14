using System;

namespace CoreSystem
{
	[CLSCompliant (false)]
	public class TalkNowDTO
	{
		public bool success { get; set; }
		public Constants.TALK_REQUEST_STATUS status;

		public TalkNowDTO()
		{
			this.success = false;
			this.status = Constants.TALK_REQUEST_STATUS.SystemError;
		}

		public TalkNowDTO (bool success, Constants.TALK_REQUEST_STATUS status)
		{
			this.success = success;
			this.status = status;
		}
	}
}

