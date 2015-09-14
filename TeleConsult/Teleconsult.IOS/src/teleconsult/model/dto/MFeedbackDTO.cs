using System;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class MFeedbackDTO
	{
		public Guid bookingId;
		public int numRate;
		public string feedback;

		public MFeedbackDTO (Guid bookingId, int numRate, string feedback)
		{
			this.bookingId = bookingId;
			this.numRate = numRate;
			this.feedback = feedback;
		}
	}
}

