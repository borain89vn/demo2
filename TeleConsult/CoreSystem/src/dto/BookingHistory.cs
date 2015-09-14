using System;

namespace CoreSystem
{
	public class BookingHistory
	{
		public decimal CustomerTotalRate { get; set; }

		public decimal SpecialistTotalRate { get; set; }

		public Guid CallId { get; set; }
	
		public string CallStartTime { get; set; }

		public string CallEndTime { get; set; }

		public int DurationMinute { get; set; }

		public string RecordUrl { get; set; }

	}

	public enum AvailabilityStatus{
		NotAvailable = 0,
		MaybeAvailable = 1,
		Available = 2
	}
}

