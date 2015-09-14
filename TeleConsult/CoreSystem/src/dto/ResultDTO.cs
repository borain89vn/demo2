using System;

namespace CoreSystem
{
	public class ResultDTO
	{
		public bool status;
		public string message;

		public ResultDTO()
		{

		}

		public ResultDTO (bool status, string message)
		{
			this.status = status;
			this.message = message;
		}
	}
}

