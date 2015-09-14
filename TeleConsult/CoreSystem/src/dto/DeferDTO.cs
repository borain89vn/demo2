using System;

namespace CoreSystem
{
	public class DeferDTO
	{
		public BookingInfo bookingInfo;
		public DeferInfo deferInfo;
		public DeferDTO (BookingInfo BookingInfo, DeferInfo DeferInfo)
		{
			this.bookingInfo = BookingInfo;
			this.deferInfo = DeferInfo;
		}
	}
}

