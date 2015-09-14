using System;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;

namespace CoreSystem
{
	[DataContract]
	public class DeferTalkNow
	{
		[DataMember]
		public Guid BookingId { get; set; }

		[DataMember]
		public decimal DeferMinuted { get; set; }

		[DataMember]
		public string DateReSchedule { get; set; }

		[DataMember]
		public string StartTime { get; set; }

		[DataMember]
		public string EndTime { get; set; }
		
	}
}

