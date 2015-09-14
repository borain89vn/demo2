using System;
using System.Collections.Generic;
#if __IOS__
using UIKit;
#endif
#if __ANDROID__
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Java.Lang;
#endif
using System.Threading.Tasks;
using System.Runtime.Serialization.Json;
using System.Runtime.Serialization;
using CoreSystem;
using RestSharp;

namespace CoreSystem
{
	[DataContract]
	public class BookingInfo
	{
		[DataMember]
		public Guid Id{ get; set;}

		[DataMember]
		public string ReferenceNo{ get; set;}

		[DataMember]
		public Guid SpecialistId{ get; set;}

		[DataMember]
		public Guid CustomerId{ get; set;}

		[DataMember]
		public string StartTime{ get; set;}

		[DataMember]
		public string EndTime{ get; set;}

		[DataMember]
		public int Status{ get; set;}

		[DataMember]
		public int Type{ get; set;}

		[DataMember]
		public double RatePerMinute{ get; set;}//Price

		[DataMember]
		public double CostPerMinute{ get; set;}//Fee

		[DataMember]
		public double CustomerMinCharge{ get; set;}
		[DataMember]
		public double SpecialistMinCharge{ get; set;}

		[DataMember]
		public bool IsApplyNoMinimumCharge { get; set; }

		[DataMember]
		public bool IsWaiveFee { get; set; }

		[DataMember]
		public string InvoiceCreatedDate { get; set; }

		[DataMember]
		public string CustomerName { get; set;}

		[DataMember]
		public string SpecialistName { get; set;}

		[DataMember]
		public string CustomerAvatar{ get; set;}

		[DataMember]
		public string SpecialistAvatar{ get; set;}

		[DataMember]
		public bool IsSpecialist{ get; set;}

		[DataMember]
		public string Enquiry { get; set;}

		[DataMember]
		public string CreatedDate{ get; set; }

		[DataMember]
		public bool IsFeedback{ get; set; }

		[DataMember]
		public int Rating { get; set; }

		[DataMember]
		public string Feedback { get; set; }

		[DataMember]
		public List<BookingDocumentDto> BookingDocuments { get; set; }

		[DataMember]
		public bool IsFavourite { get; set; }

		[DataMember]
		public AvailabilityStatus SpecialistStatus { get; set; }

		[DataMember]
		public bool IsMinCharge{ get; set; }

		[DataMember]
		public BookingHistory PastBooking{ get; set; }

		[DataMember]
		public decimal Deferral { get; set; }
	}

	[DataContract]
	public class BookingDocumentDto
	{
		public BookingDocumentDto()
		{

		}
			
		public BookingDocumentDto(Guid BookingId, Guid DocumentId)
		{
			this.Id = DocumentId;
			this.BookingId = BookingId;
			this.S3FileName = "";
			this.OriginalFileName = "";
		}

		public BookingDocumentDto(Guid Id, string path, string name)
		{
			this.Id = Id;
			this.S3FileName = path;
			this.OriginalFileName = name;
			this.BookingId = Guid.Empty;
		}

		[DataMember]
		public Guid BookingId {get;set;}

		[DataMember]
		public Guid Id {get;set;}

		[DataMember]
		public string S3FileName { get; set; }

		[DataMember]
		public string OriginalFileName { get; set; }
	}  
}

