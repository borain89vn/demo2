using System;
using System.Runtime.Serialization;

namespace CoreSystem
{
	[DataContract]
	public class PhotoDTO
	{
		public PhotoDTO()
		{
			this.status = false;
			this.message = "";
			this.bookingDocument = null;
		}
			
		[DataMember]
		public BookingDocumentDto bookingDocument { get; set; }

		[DataMember]
		public bool status { get; set; }

		[DataMember]
		public string message { get; set;}
	}
}

