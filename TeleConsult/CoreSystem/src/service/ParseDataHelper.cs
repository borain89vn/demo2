using System;
using System.Runtime.Serialization.Json;
using System.IO;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using Newtonsoft.Json;
using System.Globalization;

namespace CoreSystem
{
	public class ParseDataHelper
	{
		public ParseDataHelper ()
		{
		}

		public static UserInfo parseDataLogin (string response)
		{
			UserInfo userInfo = null;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(UserInfo));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				userInfo = (UserInfo)js.ReadObject (ms);
				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}
			
			return userInfo;
		}

		public static bool parseDataBooking (string response)
		{
			bool status = false;
			try {
				Dictionary<string, bool> result = JsonConvert.DeserializeObject<Dictionary<string, bool>> (response);
				if (result.ContainsKey ("Success") && result ["Success"])
					status = true;
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return false;
			}
			return status;
		}


		public static bool parseResponseActiveCode (string response)
		{
			bool status = false;
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("status") && (bool)result ["status"]) {
					status = true;
				} else {
					UserInfo userInfo = CoreSystem.ParseDataHelper.parseDataLogin (response);
					if (userInfo != null && userInfo.AuthToken != null) {
						status = true;
					}
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return false;
			}
			return status;
		}

		public static BookingNumber parseResponseBookingNumber (string response)
		{
			BookingNumber bookingNumber = null;
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if ((result.ContainsKey ("status") && (bool)result ["status"]) && (result.ContainsKey ("numbers") && result ["numbers"] != null)) {
					DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(BookingNumber));
					MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (result ["numbers"].ToString ()));
					bookingNumber = (BookingNumber)js.ReadObject (ms);
					ms.Close ();
				} else {
					bookingNumber = new BookingNumber ();
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return new BookingNumber ();
			}
			return bookingNumber;
		}

		public static InvoiceDTO parseResponseInvoice (string response)
		{
			InvoiceDTO invoiceDTO = null;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(InvoiceDTO));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				invoiceDTO = (InvoiceDTO)js.ReadObject (ms);
				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return new InvoiceDTO ();
			}

			return invoiceDTO;
		}

		public static bool parseDataFeedback (string response)
		{
			bool status = false;
			try {
				if (response.Equals ("\"Request successful\"")) {
					status = true;
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return false;
			}

			return status;
		}

		public static PhotoDTO parseResponseUploadPhoto (string response)
		{
			PhotoDTO pDTO = null;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(PhotoDTO));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				pDTO = (PhotoDTO)js.ReadObject (ms);
				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return new PhotoDTO ();
			}

			return pDTO;
		}

		public static bool parseDataEmailProfile (string response)
		{
			return parseDataAddOrRemoveFavorite (response);
		}

		public static bool parseDataAddOrRemoveFavorite (string response)
		{
			bool status = false;
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("Status") && (bool)result ["Status"])
					status = true;
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return false;
			}

			return status;
		}

		public static bool parseResponseCommon (string response)
		{
			return parseDataAddOrRemoveFavorite (response);
		}

		public static bool parseResponseTranscript (string response)
		{
			return parseDataAddOrRemoveFavorite (response);
		}

		public static bool parseResponseWaiveFee (string response)
		{
			return parseResponseTranscript (response);
		}


		public static bool parseDataUpdateBookingEvent (string response)
		{
			return parseDataBooking (response);
		}

		public static bool parseDataTalkNowDefferOrSchedule (string response)
		{
			return parseDataBooking (response);
		}

		public static List<BookingInfo> parseDataListBookingInfos (string response)
		{
			List<BookingInfo> userDashBoardInfos = new List<BookingInfo> ();
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("ListBooking")) {
					object bookings = (object)result ["ListBooking"];

					DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(List<BookingInfo>));
					MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (bookings.ToString ()));
					userDashBoardInfos = (List<BookingInfo>)js.ReadObject (ms);
			
					ms.Close ();
				} else {
					return null;
				}
				
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}

			return userDashBoardInfos;
		}

		public static BookingInfo parseDataBookingInfo (string response)
		{
			BookingInfo bookingInfo = null;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(BookingInfo));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				bookingInfo = (BookingInfo)js.ReadObject (ms);
				ms.Close ();

				if (bookingInfo.Id == Guid.Empty) {
					return null;
				}

			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return  null;
			}

			return bookingInfo;
		}

		public static DeferTalkNow parseDataDeferTalknow (string response)
		{
			DeferTalkNow deferInfo;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(DeferTalkNow));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				deferInfo = (DeferTalkNow)js.ReadObject (ms);

				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return  null;
			}

			return deferInfo;
		}

		public static List<BookingEvent> parseDataListEvents (string response)
		{
			List<BookingEvent> bookingEvents = new List<BookingEvent> ();
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("ListBookingEvent")) {
					object bookings = (object)result ["ListBookingEvent"];

					DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(List<BookingEvent>));
					MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (bookings.ToString ()));
					bookingEvents = (List<BookingEvent>)js.ReadObject (ms);

					ms.Close ();
				} else {
					return null;
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}

			return bookingEvents;
		}

		public static bool parseDataRescheduleBooking (string response)
		{
			return parseDataBooking (response);
		}

		public static ResultDTO parseDataUpdateBookingStatus (string response)
		{
			ResultDTO resultDto = new ResultDTO ();
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("Success")) {
					resultDto.status = bool.Parse(result ["Success"].ToString());
				}

				if (result.ContainsKey ("Message") && result["Message"]!= null && !result["Message"].ToString().Equals("")) {
					resultDto.message = result["Message"].ToString();
				}

			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}

			return resultDto;
		}
			
		public static TalkNowDTO parseDataTalkNow (string response)
		{
			TalkNowDTO talkDto = new TalkNowDTO ();
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("Success")) {
					talkDto.success = bool.Parse(result ["Success"].ToString());
				} 

				if (result.ContainsKey ("Error")) {
					talkDto.status =  (Constants.TALK_REQUEST_STATUS)Enum.ToObject(typeof(Constants.TALK_REQUEST_STATUS), int.Parse(result ["Error"].ToString()));
				} else {
					talkDto.status = Constants.TALK_REQUEST_STATUS.None;
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return new TalkNowDTO();
			}

			return talkDto;
		}


		public static List<SpecialistProfileInfos> parseDataSpecialistProfilesSearch (string response)
		{
			List<SpecialistProfileInfos> specialistProfiles = new List<SpecialistProfileInfos> ();

			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(List<SpecialistProfileInfos>));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				List<SpecialistProfileInfos> specInfos = (List<SpecialistProfileInfos>)js.ReadObject (ms);

				foreach (SpecialistProfileInfos specInfo in specInfos) {
					if (specInfo.Account != null && specInfo.SpecialistDetail != null) {
						if (MApplication.getInstance().isLogedIn || MApplication.getInstance().isLoginAfterSearch) {
							specInfo.isLoaded = true;
						}
						specialistProfiles.Add (specInfo);
					}
				}

				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			} 

			return specialistProfiles;
		}

		public static SearchDTO parseResponseSearchDTO (string response)
		{
			SearchDTO searchDto = new SearchDTO ();
			List<SpecialistProfileInfos> specialistProfiles = new List<SpecialistProfileInfos> ();

			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);

				if (result.ContainsKey("ListSpecialistProfile")) {
					DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(List<SpecialistProfileInfos>));
					MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (result["ListSpecialistProfile"].ToString ()));
					List<SpecialistProfileInfos> specInfos = (List<SpecialistProfileInfos>)js.ReadObject (ms);

					foreach (SpecialistProfileInfos specInfo in specInfos) {
						if (specInfo.Account != null && specInfo.SpecialistDetail != null) {
							if (MApplication.getInstance().isLogedIn || MApplication.getInstance().isLoginAfterSearch) {
								specInfo.isLoaded = true;
							}
							specialistProfiles.Add (specInfo);
						}
					}

					ms.Close ();

					searchDto.listSpecialistProfile = specialistProfiles;
				}

				if (result.ContainsKey("IsLimitSearchResult")) {
					searchDto.isLimitSearchResult = (bool)result["IsLimitSearchResult"];
				} else {
					searchDto.isLimitSearchResult = false;
				}
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			} 

			return searchDto;
		}


		public static SystemDTO parseResponseSystemConfig (string response)
		{
			SystemDTO systemDTO = null;

			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(List<ConfigDTO>));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				List<ConfigDTO> configDTOs = (List<ConfigDTO>)js.ReadObject (ms);
				systemDTO = new SystemDTO ();
				foreach (ConfigDTO configDTO in configDTOs) {
					if (configDTO.Name.Equals (CoreSystem.Constants.ParamatricBusinessRules.MINIMUM_BOOKING.ToString ())) {
						systemDTO.minimumBooking = int.Parse (double.Parse (configDTO.Value, new CultureInfo ("en-us")).ToString ());
					} else if (configDTO.Name.Equals (CoreSystem.Constants.ParamatricBusinessRules.MAXIMUM_BOOKING.ToString ())) {
						systemDTO.maximumBooking = int.Parse (double.Parse (configDTO.Value, new CultureInfo ("en-us")).ToString ());
					} else if (configDTO.Name.Equals (CoreSystem.Constants.ParamatricBusinessRules.MINIMUM_LEAD_TIME.ToString ())) {
						systemDTO.minimumLeadTime = int.Parse (double.Parse (configDTO.Value, new CultureInfo ("en-us")).ToString ());
					} else if (configDTO.Name.Equals (CoreSystem.Constants.ParamatricBusinessRules.MAXIMUM_LEAD_TIME.ToString ())) {
						systemDTO.maximumLeadTime = int.Parse (double.Parse (configDTO.Value, new CultureInfo ("en-us")).ToString ());
					}
				}

				ms.Close ();
			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			} 

			return systemDTO;
		}

		public static SpecialistProfileInfos parseDataSpecialistInfo (string response)
		{
			SpecialistProfileInfos specialistInfo;
			try {
				DataContractJsonSerializer js = new DataContractJsonSerializer (typeof(SpecialistProfileInfos));
				MemoryStream ms = new MemoryStream (System.Text.UTF8Encoding.UTF8.GetBytes (response.ToString ()));
				specialistInfo = (SpecialistProfileInfos)js.ReadObject (ms);
				ms.Close ();

				if (specialistInfo.Account == null || specialistInfo.Account.Id == Guid.Empty) {
					return null;
				}

			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}

			return specialistInfo;
		}
			
		public static Dictionary<string, object> parseDataForgotPass (string response)
		{
			Dictionary<string, object> dictionary;
			try {
				dictionary = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);

			} catch (Exception e) {
				#if DEBUG
				Console.Write(e.Message);
				#endif
				return new Dictionary<string, object> ();
			}

			return dictionary;
		}

		public static ResultDTO parseDataChangeStatus (string response)
		{
			ResultDTO resultDto = new ResultDTO ();
			try {
				Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (response);
				if (result.ContainsKey ("Status")) {
					resultDto.status = bool.Parse(result ["Status"].ToString());
				}

				if (result.ContainsKey ("Message") && result["Message"] != null && !result["Message"].ToString().Equals("")) {
					resultDto.message = result["Message"].ToString();
				}

			} catch (Exception ex) {
				#if DEBUG
				Console.Write(ex.Message);
				#endif
				return null;
			}

			return resultDto;
		}
	}
}

