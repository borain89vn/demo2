using System;
using System.Runtime.Serialization;

namespace CoreSystem
{
	[DataContract]
	public class BookingNumber
	{
		public BookingNumber()
		{
			this.alert = 0;
			this.request = 0;
			this.confirmed = 0;
			this.past = 0;
		}

		[DataMember]
		public int alert { get; set; }
		[DataMember]
		public int request { get; set; }
		[DataMember]
		public int confirmed { get; set; }
		[DataMember]
		public int past { get; set; }
	}
}

