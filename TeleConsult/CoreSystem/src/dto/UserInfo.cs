using System;
using System.Runtime.Serialization.Json;
using System.Runtime.Serialization;
using System.Collections.Generic;

namespace CoreSystem
{
	[DataContract]
	public class UserInfo
	{
		[DataMember]
		public Guid Id { get; set; }
		[DataMember]
		public string UserName { get; set; }
		[DataMember]
		public string FirstName { get; set; }
		[DataMember]
		public string Name { get; set; }
		[DataMember]
		public string LastName { get; set; }
		[DataMember]
		public string Title { get; set; }
		[DataMember]
		public string MobilePhone { get; set; }
		[DataMember]
		public string HomePhone { get; set; }
		[DataMember]
		public string SecurityStamp { get; set; }
		[DataMember]
		public string Email { get; set; }
		[DataMember]
		public bool IsEmailConfirmed { get; set; }
		[DataMember]
		public bool IsPhoneConfirmed { get; set; }
		[DataMember]
		public string PasswordHash { get; set; }
		[DataMember]
		public int Role { get; set; }
		[DataMember]
		public int CompletedStep { get; set; }

		[DataMember]
		public int LoginAttempts { get; set; }

		[DataMember]
		public bool BetaMode { get; set; }
		//[DataMember]
		//public DateTime DateSentEmail { get; set; }

		[DataMember]
		public int Status { get; set; }
		[DataMember]
		public string AuthToken { get; set; }

		[DataMember]
		public List<LocationsModel> Locations { get; set; }

		[DataMember]
		public int PaymentMethod { get; set; }

		[DataMember]
		public int CurrentAvailabilityStatus { get; set; }
	}

	[DataContract]
	public class LocationsModel
	{
		[DataMember]
		public string GeepersName { get; set; }
		[DataMember]
		public string StreetNumber { get; set; }
		[DataMember]
		public string Street { get; set; }
		[DataMember]
		public string Country { get; set; }
		[DataMember]
		public string Suburb { get; set; }
		[DataMember]
		public string Postcode { get; set; }
		[DataMember]
		public string TimeZone { get; set; }
		[DataMember]
		public string TimeZoneMobile { get; set; }
	}
}

