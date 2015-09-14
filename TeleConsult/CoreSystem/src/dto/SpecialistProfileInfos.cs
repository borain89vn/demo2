using System;
using System.Collections.Generic;
#if __ANDROID__
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Java.Lang;
#endif

#if __IOS__
using UIKit;
#endif
using CoreSystem;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System.Threading.Tasks;

using System.Runtime.Serialization.Json;
using System.Runtime.Serialization;

namespace CoreSystem
{
	[DataContract]
	public class SpecialistProfileInfos
	{
		[DataMember]
		public UserViewModel Account { get; set; }

		[DataMember]
		public SpecialistRegisterStep3ViewModel SpecialistDetail { get; set; }

		[DataMember]
		public bool IsFavourite { get; set; }

		[DataMember]
		public double Score { get; set; }

		[DataMember]
		public double? Proximity { get; set; }

		[DataMember]
		public double TalkNowRate { get; set; }

		[DataMember]
		public bool isLoaded { get; set; }

		[DataMember]
		public decimal ConnectionFee { get; set; }
	}

	[DataContract]
	public class UserViewModel
	{
		[DataMember]
		public Guid Id { get; set; }
		[DataMember]
		public string Name { get; set; }	
		[DataMember]
		public string UserTitleGender;
		[DataMember]
		public string UserPostNominal;
		[DataMember]
		public string UserName { get; set; }
		[DataMember]
		public string Email { get; set; }
		[DataMember]
		public string MobilePhone { get; set; }
		[DataMember]
		public string AvatarPath { get; set; }
		[DataMember]
		public int AvailabilityStatus { get; set; }
		[DataMember]
		public int Status { get; set; }
		[DataMember]
		public int CurrentAvailabilityStatus { get; set; }

	}

	[DataContract]
	public class SpecialistRegisterStep3ViewModel
	{
		[DataMember]
		public string AvatarPath { get; set; }

		#if __IOS__
		[DataMember]
		public UIImage ImageAvatar { get; set; }
		#endif

		[DataMember]
		public int RatingRatio { get; set; }
		[DataMember]
		public string MirrorNumber { get; set; }
		[DataMember]
		public string MirrorEmail { get; set; }
		[DataMember]
		public string Description { get; set; }
		[DataMember]
		public string Biography { get; set; }
		[DataMember]
		public string Qualification { get; set; }
		[DataMember]
		public string Languages { get; set; }

		[DataMember]
		public int OnTime { get; set; }

		[DataMember]
		public int TotalConsultation { get; set; }
		//Standart hours
		[DataMember]
		public List<StandardHour> ListStandardHour { get; set; }
		[DataMember]
		public List<SpecializationViewModel> Specializations { get; set; }
		[DataMember]
		public List<string> ListOfHours { get; set; }
	}

	[DataContract]
	public class StateAndRegulatory
	{
		[DataMember]
		public string State { get; set; }
		[DataMember]
		public string Regulatory { get; set; }
	}

	[DataContract]
	public class SpecializationViewModel
	{
		[DataMember]
		public Guid Id { get; set; }
		[DataMember]
		public string ProfessionalOrTrade { get; set; }                                                                                     
		[DataMember]
		public string Name { get; set; }
		[DataMember]
		public CustomerPricingDto CustomerPricing { get; set; }
		[DataMember]
		public bool LicenceToOperate { get; set; }
		[DataMember]
		public string CountryPermitted { get; set; }
		[DataMember]
		public string LicenseNumber { get; set; }
		[DataMember]
		public string ExpiredDate { get; set; }

		[DataMember]
		public bool IsApplyNoMinimumCharge { get; set; }
		// public ICollection<CountryPermittedWithoutListStateModel> CountriesPermitted { get; set; }
		[DataMember]
		public List<CountryPermittedViewModel> lstCountryPermitted { get; set; }

		//--List of Proof of complaince --------
		[DataMember]
		public List<POC> POCs { get; set; }

		// public byte[] bytePOC { get; set; }

		//[Required(ErrorMessage = UiHints.WarningMessageTemplates.RequiredField)]
		//public HttpPostedFileBase POCImage { get; set; }
		//---------------------------------------------------
		[DataMember]
		public decimal StandardRate { get; set; }
		[DataMember]
		public decimal OutOfHourRate { get; set; }
		[DataMember]
		public decimal TalkNowRate { get; set; }
		[DataMember]
		public decimal MinimumCharge { get; set; }
		[DataMember]
		public bool GST { get; set; }
	}
		
	[DataContract]
	public class POC
	{
		[DataMember]
		public Guid Id { get; set; }
		[DataMember]
		public string S3FileName { get; set; }
		[DataMember]
		public string OriginalFileName { get; set; }
		[DataMember]
		public string Status { get; set; }
		[DataMember]
		public string ExpiredDate { get; set; }
		[DataMember]
		public bool IsDelete { get; set; }
	}

	[DataContract]
	public class CustomerPricingDto
	{
		[DataMember]
		public Guid SpecializationId { get; set; }

		/// <summary>
		/// Calculated talk now rate
		/// </summary>
		[DataMember]
		public decimal TalkNow { get; set; }

		/// <summary>
		/// Calculated standard rate
		/// </summary>
		[DataMember]
		public decimal Standard { get; set; }

		/// <summary>
		/// Calculated out of hour rate
		/// </summary>
		[DataMember]
		public decimal OutOfHour { get; set; }

		/// <summary>
		/// Calculated minimum charge rate
		/// </summary>
		[DataMember]
		public decimal Minimum { get; set; }
	}

	[DataContract]
	public class CountryPermittedViewModel
	{
		[DataMember]
		public string Name { get; set; }
		[DataMember]
		public List<StateAndRegulatory> StatesAndRegulatories { get; set; }
	}

	[DataContract]
	public class StandardHour
	{
		[DataMember]
		public string Day { get; set; }
		[DataMember]
		public string Start { get; set; }
		[DataMember]
		public string End { get; set; }
	}
}

