using System;
using System.Runtime.Serialization;

namespace CoreSystem
{
	[DataContract]
	public class InvoiceDTO
	{
		public InvoiceDTO ()
		{
			this.status = false;
			this.url = "";
		}

		[DataMember]
		public bool status { get; set; }

		[DataMember]
		public string url { get; set; }
			
	}

}

