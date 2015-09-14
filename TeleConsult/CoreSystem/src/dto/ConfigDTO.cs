using System;
using System.Runtime.Serialization;

namespace CoreSystem
{
	public class ConfigDTO
	{
		[DataMember]
		public string Name { get; set;}
		[DataMember]
		public string Value { get; set;}
		[DataMember]
		public string Id { get; set;}
		[DataMember]
		public string CreatedDate { get; set;}
		[DataMember]
		public string ModifiedDate { get; set;}
	}


	public class SystemDTO
	{
		public SystemDTO()
		{

		}

		public int  minimumBooking { get; set;}
		public int maximumBooking { get; set;}
		public int minimumLeadTime { get; set;}
		public int maximumLeadTime { get; set;}
	}

}

