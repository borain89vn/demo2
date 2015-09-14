using System;

namespace CoreSystem
{
	public class BookingEvent
	{
		public Guid Id { get; set; }

		public BookingInfo Booking { get; set; }

		public UserViewModel SourceUser { get; set; }

		public UserViewModel TargetUser { get; set; }

		public string CreatedDate { get; set; }

		public string ShortDescription { get; set; }

		public string Description { get; set; }

		public bool IsRead { get; set; }

		public int Status { get; set; } 

		public string UploadedDocument { get; set; }
	}
}

