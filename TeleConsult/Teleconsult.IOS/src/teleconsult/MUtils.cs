using System;
using Foundation;
using CoreGraphics;
using UIKit;
using System.Drawing;
using System.Globalization;
using CoreSystem;
using System.Reflection;
using System.ComponentModel;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class MUtils
	{
		public const string kFormatNSDateTime = "dd/MM/yyyy hh:mm a";
		public const string kFormatNSTime = "hh:mm a";
		public const string kFormatDefaultTime = "hh:mm tt";
		public const string kFormatDate = "dd/MM/yyyy";
		public const string kFormatDateTimeDefaultPlatform = "dd/MM/yyyy hh:mm tt";
		public const string kFormatDateTimeSystemPlatform = "MM/dd/yyyy hh:mm tt";
		private const int maxHeight = 123456;

		public MUtils ()
		{
		}

		public static DateTime NSDateToDateTime (NSDate date)
		{
			return (new DateTime (2001, 1, 1, 0, 0, 0)).AddSeconds (date.SecondsSinceReferenceDate);
		}

		public static NSDate DateTimeToNSDate (DateTime date)
		{
			return NSDate.FromTimeIntervalSinceNow ((date - DateTime.Now).TotalSeconds); 
		}

		public static string stringDateToString (string strDate, string format)
		{
			DateTime dateTemp = stringToDateTime (strDate);

			return dateTimeToString (dateTemp, format);
		}

		public static string dateTimeToString (DateTime date, string format)
		{
			return date.ToString (format, new CultureInfo ("en-us"));
		}

		public static string nsDateToString (NSDate date, string format)
		{
			string strDate = "";
			NSLocale gbLocale = NSLocale.FromLocaleIdentifier ("en_GB");
			NSDateFormatter dateFormatter = new NSDateFormatter ();
			dateFormatter.DateFormat = format;
			dateFormatter.Locale = gbLocale;
			try {
				strDate = dateFormatter.StringFor (date).ToUpper ();
			} catch (Exception ex) {
				Console.Out.WriteLine (ex.Message);
			}
			 
			return strDate;
		}

		public static DateTime stringToDateTimePlatform (string textDate)
		{
			return stringToDateTimePlatform (textDate, kFormatDateTimeDefaultPlatform, kFormatDateTimeSystemPlatform);
		}

		public static DateTime stringToDateTimePlatform (string textDate, string fromFormat, string toFormat)
		{
			DateTime dateNow = DateTime.Now;
			try {
				string strDate = DateTime.ParseExact (textDate, fromFormat, CultureInfo.InvariantCulture)
					.ToString (toFormat, CultureInfo.InvariantCulture);

				dateNow = DateTime.Parse (strDate, CultureInfo.InvariantCulture, DateTimeStyles.None);
			} catch (Exception ex) {
				#if DEBUG
				Console.Out.WriteLine (ex.Message);
				#endif

				return DateTime.Now;
			}
				
			return dateNow;
		}


		public static DateTime stringToDateTime (string date)
		{
			DateTime parseDate;
			try {
				parseDate = DateTime.Parse (date, CultureInfo.InvariantCulture, DateTimeStyles.None);
			} catch (Exception ex) {
				#if DEBUG
				Console.Out.WriteLine (ex.Message);
				#endif
				return DateTime.Now;
			}

			return parseDate;
		}


		public static string getPaymentName (int type)
		{
			string typeCard = "prepayment";
			if (type == 1) {
				typeCard = "credit card";
			} 

			return typeCard;
		}

		public static MLicenseDTO getLicenseStatus (SpecialistProfileInfos specialist)
		{
			MLicenseDTO licenseDTO = new MLicenseDTO ();
			UIImage image = null;
			UIColor colorText = UIColor.Red;
			CoreSystem.Constants.VERIFIED_TYPE type = CoreSystem.Utils.getStatusLicense (specialist);
		
			switch (type) {
			case Constants.VERIFIED_TYPE.Expired:
				image = UIImage.FromBundle ("expired_icon");
				break;
			case Constants.VERIFIED_TYPE.Unverified:
				image = UIImage.FromBundle ("unverified_icon");
				break;
			case Constants.VERIFIED_TYPE.Verified:
				image = UIImage.FromBundle ("verified_icon");
				colorText = UIColor.Green;
				break;
			default:
				image = UIImage.FromBundle ("unlicense_icon");
				colorText = TCTheme.getInstance.getThemeColor (Theme.SearchTextBlue);
				break;
			}

			string description = GetDescriptionFromEnum (type);
			licenseDTO.text = description;
			licenseDTO.image = image;
			licenseDTO.colorText = colorText;

			return licenseDTO;
		}


		public static string GetDescriptionFromEnum (Enum element)
		{
			Type type = element.GetType ();

			MemberInfo[] memberInfo = type.GetMember (element.ToString ());

			if (memberInfo != null && memberInfo.Length > 0) {
				object[] attributes = memberInfo [0].GetCustomAttributes (typeof(DescriptionAttribute), false);

				if (attributes != null && attributes.Length > 0) {
					return ((DescriptionAttribute)attributes [0]).Description;
				}
			}

			return element.ToString ();
		}


		public static void enableButton (UIButton button)
		{
			button.SetBackgroundImage (UIImage.FromBundle ("enable_background"), UIControlState.Normal);
			button.SetBackgroundImage (UIImage.FromBundle ("select_background"), UIControlState.Selected);

			button.UserInteractionEnabled = true;
		}

		public static void disableButton (UIButton button)
		{
			button.SetBackgroundImage (UIImage.FromBundle ("disable_background"), UIControlState.Normal);
			button.UserInteractionEnabled = false;
		}

		public static string validateLogin (string userName, string password)
		{
			string warning = "";

			if (userName.Length == 0) {
				warning = TCLocalizabled.getText ("WarningLoginEmailRequired");
			} else if (password.Length == 0) {
				warning = TCLocalizabled.getText ("WarningLoginPasswordRequired");
			}

			return warning;
		}

		private string timeSub (TimeSpan timeSub)
		{
			string time = "";

			if (timeSub.Days < 0 && Math.Abs (timeSub.Days) > 0) {
				time = "";
			} else {
				double timeSec = timeSub.TotalSeconds;

				double days = Math.Floor (timeSec / (60 * 60 * 24));
				timeSec -= days * (60 * 60 * 24);

				double hours = Math.Floor (timeSec / (60 * 60));
				timeSec -= hours * (60 * 60);

				double minutes = Math.Floor (timeSec / 60);
				timeSec -= minutes * 60;

				double seconds = Math.Floor (timeSec);
				timeSec -= seconds;

				time = (days > 0 ? days + "d " : "") + hours + "h " + minutes + "m ";
			}

			return time;
		}

		public static CGSize getSizeWithALineText (UIFont font)
		{
			return getSizeText ("TeleConsult", font);
		}

		public static CGSize getSizeText (string text, UIFont font, nfloat width)
		{
			if (text == null) {
				text = "";
			}

			CGSize size = new CGSize (width, maxHeight);

			return UIStringDrawing.StringSize (text, font, size);
		}

		public static CGSize getSizeText (string text, UIFont font)
		{
			CGSize sizeContainer = UIScreen.MainScreen.Bounds.Size;
			return getSizeText (text, font, sizeContainer.Width);
		}

		public static MTextAttributeDTO getSizeTextAttribute (string text, UIFont font, nfloat lineSpacing, CGSize sizeContainer)
		{
			if (text == null) {
				text = "";
			}

			NSMutableAttributedString attrString = new NSMutableAttributedString (text);
			NSMutableParagraphStyle style = new NSMutableParagraphStyle ();
			style.LineSpacing = lineSpacing;
			attrString.SetAttributes (new UIStringAttributes {
				ParagraphStyle = style,
				Font = font

			}.Dictionary, new NSRange (0, text.Length));

			CGSize size = attrString.GetBoundingRect (sizeContainer, NSStringDrawingOptions.UsesLineFragmentOrigin | NSStringDrawingOptions.UsesFontLeading, null).Size;

			return new MTextAttributeDTO (attrString, size);
		}

		public static MTextAttributeDTO getSizeTextAttribute (string text, UIFont font, nfloat lineSpacing)
		{
			CGSize sizeContainer = UIScreen.MainScreen.Bounds.Size;

			return getSizeTextAttribute (text, font, lineSpacing, sizeContainer);
		}

		public static UIImage scaledToWidth (UIImage sourceImage, nfloat width)
		{
			nfloat oldWidth = sourceImage.Size.Width;
			nfloat scaleFactor = width / oldWidth;

			nfloat newHeight = sourceImage.Size.Height * scaleFactor;
			nfloat newWidth = oldWidth * scaleFactor;

			UIGraphics.BeginImageContext(new CGSize (newWidth, newHeight));
			sourceImage.Draw(new CGRect (0, 0, newWidth, newHeight));
			UIImage newImage = UIGraphics.GetImageFromCurrentImageContext();    
			UIGraphics.EndImageContext();

			return newImage;
		}

		public static UIImage MaxResizeImage (UIImage sourceImage, float maxWidth, float maxHeight)
		{
			var sourceSize = sourceImage.Size;
			var maxResizeFactor = Math.Max (maxWidth / sourceSize.Width, maxHeight / sourceSize.Height);
			if (maxResizeFactor > 1)
				return sourceImage;
			nfloat width = (float)maxResizeFactor * sourceSize.Width;
			nfloat height = (float)maxResizeFactor * sourceSize.Height;
			UIGraphics.BeginImageContext (new CGSize (width, height));
			sourceImage.Draw (new CGRect (0, 0, width, height));
			var resultImage = UIGraphics.GetImageFromCurrentImageContext ();
			UIGraphics.EndImageContext ();
			return resultImage;
		}

		// resize the image (without trying to maintain aspect ratio)
		public static UIImage ResizeImage (UIImage sourceImage, float width, float height)
		{
			UIGraphics.BeginImageContext (new CGSize (width, height));
			sourceImage.Draw (new CGRect (0, 0, width, height));
			var resultImage = UIGraphics.GetImageFromCurrentImageContext ();
			UIGraphics.EndImageContext ();
			return resultImage;
		}

		// crop the image, without resizing
		private static UIImage CropImage (UIImage sourceImage, int crop_x, int crop_y, int width, int height)
		{
			var imgSize = sourceImage.Size;
			UIGraphics.BeginImageContext (new CGSize (width, height));
			var context = UIGraphics.GetCurrentContext ();
			var clippedRect = new CGRect (0, 0, width, height);
			context.ClipToRect (clippedRect);
			var drawRect = new CGRect (-crop_x, -crop_y, imgSize.Width, imgSize.Height);
			sourceImage.Draw (drawRect);
			var modifiedImage = UIGraphics.GetImageFromCurrentImageContext ();
			UIGraphics.EndImageContext ();
			return modifiedImage;
		}

		// Generate key refresh table finished
		public static string generateKeyRefreshTable (UIViewController vc)
		{
			return vc.GetType ().ToString () + "_KeyRefreshFinishedNotify";
		}

		// Generate key favorite
		public static string generateKeyFavorite (UIViewController vc)
		{
			return vc.GetType ().ToString () + "_KeyActionAboutFavorite";
		}

		// Generate key favorite
		public static string generateKeySearchSpecialist (UIViewController vc)
		{
			return vc.GetType ().ToString () + "_KeyActionAboutSearchSpecialist";
		}

		// Generate key past booking
		public static string generateKeyPastBooking (UIViewController vc)
		{
			return vc.GetType ().ToString () + "_KeyActionAboutPastBooking";
		}

		// Show alert close balance
		public static void showAlertCloseBalance (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlertCloseBalance"), TCLocalizabled.getText ("MessageAlertCloseBalance"));
		}

		// Show alert close balance calling
		public static void showAlertCloseBalanceCalling (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlertCloseBalance"), TCLocalizabled.getText ("MessageAlertCloseBalanceCalling"));
		}

		// Show alert no get data
		public static void showAlertNoGetData (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"));
		}

		// Show request failed
		public static void showRequestFail (UIViewController controller, string title)
		{
			showAlert (controller, title, TCLocalizabled.getText ("TextRequestFail"));
		}

		public static void showRequestFail (UIViewController controller)
		{
			showRequestFail (controller, TCLocalizabled.getText ("TitleAlertNotice"));
		}

		public static void showWaiveFeeTimeExpired (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TextAlertTitleWaiveFeeExpire"), TCLocalizabled.getText ("TextMessageWaiveFeeTimeExpired") );
		}

		public static void showRequestSuccess (UIViewController controller, string title)
		{
			showAlert (controller, title, TCLocalizabled.getText ("TextRequestSuccess"));
		}

		public static void showRequestSuccess (UIViewController controller)
		{
			showRequestSuccess (controller, TCLocalizabled.getText ("TitleAlertNotice"));
		}

		// Show alert
		public static void showAlert (UIViewController controller, string message)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlert"), message);
		}

		public static void showAlert (UIViewController controller, string title, string message)
		{
			if (controller != null) {
				if (MApplication.getInstance ().isLogedIn || TCGlobals.getInstance.isAllowShowAlert) {
					TCAlertViewController alertVC = new TCAlertViewController (controller, title, message, null, null, TCLocalizabled.getText ("OkTitle"));
					alertVC.display ();
				}
			}
		}

		// Show network failed
		public static void showNetworkFailed (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleNetworkStatus"), TCLocalizabled.getText ("TextConnectionFailed"));
		}

		// Get cost Format
		public static string getCost (double cost)
		{
			return cost.ToString ("F", new CultureInfo ("en-us"));
		}
			
		// Parse time reschedule
		public static string getHourReschedule (decimal time)
		{
			string tTime;
			double temp = (double)(time / 60);
		
			tTime = temp.ToString ("C0", new CultureInfo ("en-us")).Substring (1) + " hours";

			return tTime;
		}

		public static string getMinuteDefer (decimal time)
		{
			return ((double)time).ToString ("C0", new CultureInfo ("en-us")).Substring (1) + " minutes";
		}

		public static UIImage getRatingImage (int number)
		{
			UIImage image = null;
			switch (number) {
			case 1:
				image = UIImage.FromBundle ("1star_icon");
				break;
			case 2:
				image = UIImage.FromBundle ("2star_icon");
				break;
			case 3:
				image = UIImage.FromBundle ("3star_icon");
				break;
			case 4:
				image = UIImage.FromBundle ("4star_icon");
				break;
			default:
				image = UIImage.FromBundle ("0star_icon");
				break;
			}

			return image;
		}

		public static string getProximity (double? proximity)
		{
			string strProximity = "N/A";
			if (proximity != null) {
				proximity = Math.Round (proximity.Value);
				strProximity = proximity.ToString ();
			}

			return strProximity;
		}

		public static double round2Digit (double number)
		{
			return Math.Round (number, 2, MidpointRounding.AwayFromZero);
		}

		public static void showAlertRequiredCompleteProfile (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TextAlertTitleRequiredUpdateProfile"), TCLocalizabled.getText ("TextMessageRequireUpdateProfile"));
		}

		public static void showMessageForceLogout (UIViewController controller)
		{
			TCAlertViewController alertVC = new TCAlertViewController (controller, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageForceLogout"), null, null, TCLocalizabled.getText ("OkTitle"));
			alertVC.display (ALERT_SHOW_TYPE.ONLY);
		}

		// UnderlineStyle Button
		public static void underlineButton (UIButton button)
		{
			button.SetAttributedTitle (new NSAttributedString (
				button.TitleLabel.Text, 
				underlineStyle: NSUnderlineStyle.Single), UIControlState.Normal);
		}

		// check time valid with system config
		public static string checkTimeValidWithConfig (DateTime sTime, DateTime eTime)
		{
			string message = null;
			DateTime nowTime = stringToDateTime (dateTimeToString (CoreSystem.Utils.getDateTimeNow (MApplication.getInstance ().timezoneName), kFormatDateTimeSystemPlatform));
			if (MApplication.getInstance ().systemConfig != null) {
				DateTime minimumStart = nowTime.AddMinutes (MApplication.getInstance ().systemConfig.minimumLeadTime - 1); // Minimum lead time
				DateTime maximumStart = nowTime.AddMinutes (MApplication.getInstance ().systemConfig.maximumLeadTime); // Maximum lead time
				DateTime minimumEnd = sTime.AddMinutes (MApplication.getInstance ().systemConfig.minimumBooking); // Minimum lead time
				DateTime maximumEnd = sTime.AddMinutes (MApplication.getInstance ().systemConfig.maximumBooking); // Maximum lead time

				if (sTime < minimumStart) {
					message = String.Format (TCLocalizabled.getText ("TextMessageMinimumStartTime"), MApplication.getInstance ().systemConfig.minimumLeadTime);
				} else if (sTime > maximumStart) {
					message = String.Format (TCLocalizabled.getText ("TextMessageMaximumStartTime"), MApplication.getInstance ().systemConfig.maximumLeadTime);
				} else if (eTime < minimumEnd) {
					message = String.Format (TCLocalizabled.getText ("TextMessageMinimumEndTime"), MApplication.getInstance ().systemConfig.minimumBooking);
				} else if (eTime > maximumEnd) {
					message = String.Format (TCLocalizabled.getText ("TextMessageMaximumEndTime"), MApplication.getInstance ().systemConfig.maximumBooking);
				}
			} else {
				message = TCLocalizabled.getText ("TextRequestFail");
			}

			return message;
		}

		// Parse UIImage to Byte[]
		public static byte[] UIImageToByteArray (UIImage _image)
		{ 
			Byte[] byteArray; 
			using (NSData nsImageData = _image.AsPNG ()) { 
				byteArray = new Byte[nsImageData.Length]; 
				System.Runtime.InteropServices.Marshal.Copy (nsImageData.Bytes, byteArray, 0, Convert.ToInt32 (nsImageData.Length)); 
			} 

			return byteArray; 
		}

		// Font App
		public static UIFont getFontWithSize (bool isBold, float fontSize)
		{
			string typeFont = MConstants.fontRegular;
			if (isBold)
				typeFont = MConstants.fontBold;

			return UIFont.FromName (typeFont, fontSize);
		}
			
		// Get Cell DTO
		public static MCellDTO getCellSearchDTO (UITableView tableView, SpecialistProfileInfos specialist)
		{
			MCellDTO cellDto = new MCellDTO ();
			nfloat height = 0.0f;
			TCSearchCellTemplate cell = null;

			if (specialist != null) {
				if (specialist.SpecialistDetail.Specializations [0].IsApplyNoMinimumCharge) {
					if (specialist.SpecialistDetail.Description != null && specialist.SpecialistDetail.Description.Length < 55) {
						height = 135.0f;
						cell = (TCSearchCellFour)tableView.DequeueReusableCell (TCSearchCellFour.Key);
						if (cell == null) {
							cell = TCSearchCellFour.Create ();
							cell.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
						}
					} else {
						height = 150.0f;
						cell = (TCSearchCellTwo)tableView.DequeueReusableCell (TCSearchCellTwo.Key);
						if (cell == null) {
							cell = TCSearchCellTwo.Create ();
							cell.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
						}
					}
				} else if (specialist.SpecialistDetail.Description != null && specialist.SpecialistDetail.Description.Length < 55) {
					height = 145.0f;
					cell = (TCSearchCellThree)tableView.DequeueReusableCell (TCSearchCellThree.Key);
					if (cell == null) {
						cell = TCSearchCellThree.Create ();
						cell.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
					}
				} else {
					cell = (TCSearchCellOne)tableView.DequeueReusableCell (TCSearchCellOne.Key);
					if (cell == null) {
						cell = TCSearchCellOne.Create ();
						cell.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
					}
					;
					height = 155.0f;
				}
			} 

			cellDto.height = height;
			cellDto.cell = cell;

			return cellDto;
		}
			
		// update view when defer or reschedule
		public static void updateDeferOrReschduleView (UIView ownerView, DeferDTO deferDTO)
		{
			if (deferDTO.deferInfo.IsDefer) {
				TCTalknowDeferView talknowDeferView = TCTalknowDeferView.Create ();
				talknowDeferView.Frame = new CGRect (0.0f, 0.0f, ownerView.Frame.Width, ownerView.Frame.Height);
				talknowDeferView.updateDefer (MUtils.getMinuteDefer (deferDTO.bookingInfo.Deferral));
				ownerView.AddSubview (talknowDeferView);
			} else {
				TCTalknowRescheduleView talknowRescheduleView = TCTalknowRescheduleView.Create ();
				talknowRescheduleView.Frame = new CGRect (0.0f, 0.0f, ownerView.Frame.Width, ownerView.Frame.Height);
				talknowRescheduleView.updateRescheduleNotice (MUtils.getHourReschedule (deferDTO.bookingInfo.Deferral));
				ownerView.AddSubview (talknowRescheduleView);
			}
		}

		// show alert not exists talk replay
		public static void showNotExistsTalkReplay (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageTalkReplayNotExists"));
		}

		// show alert not exists invoice
		public static void showNotExistsInvoice (UIViewController controller)
		{
			showAlert (controller, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageInvoiceNotExists"));
		}

		// Show Alert Result TalkNow Request
		public static MAlertDTO getMessageTalkRequest (TalkNowDTO talkDto)
		{
			MAlertDTO alertDTO = new MAlertDTO ();
			alertDTO.isDelegate = false;

			if (talkDto.status == CoreSystem.Constants.TALK_REQUEST_STATUS.BalanceIsExpire) {
				alertDTO.title = TCLocalizabled.getText ("AlertTitleConsultationTalkNow");
				alertDTO.message = TCLocalizabled.getText ("AlertMessageTalkRequestBalanceNotEnough");
			} else if (talkDto.status == CoreSystem.Constants.TALK_REQUEST_STATUS.CallInProgress) {
				alertDTO.title = TCLocalizabled.getText ("AlertTitleConsultationTalkNow");
				alertDTO.message = TCLocalizabled.getText ("AlertMessageTalkRequestInConversation");
			} else if (talkDto.status == CoreSystem.Constants.TALK_REQUEST_STATUS.BookingCanceled) {
				alertDTO.isDelegate = true;
				alertDTO.title = TCLocalizabled.getText ("AlertTitleConsultationTalkNow");
				alertDTO.message = TCLocalizabled.getText ("AlertMessageTalkRequestBookingCanceled");
			} else if (talkDto.status == CoreSystem.Constants.TALK_REQUEST_STATUS.CallServiceUnavailable) {
				alertDTO.title = TCLocalizabled.getText ("AlertTitleConsultationTalkNow");
				alertDTO.message = TCLocalizabled.getText ("AlertMessageTalkRequestCallServiceUnavailable");
			} else if (talkDto.status == CoreSystem.Constants.TALK_REQUEST_STATUS.SystemError) {
				alertDTO.title = TCLocalizabled.getText ("TitleAlert");
				alertDTO.message = TCLocalizabled.getText ("TextRequestFail");
			} else {
				alertDTO = null;
			}

			return alertDTO;
		}
	
		// Get URL from server
		public static string getURLFromServer(string url)
		{
			string link = url;
			if (!link.Contains ("api.twilio.com")) {
				link = CoreSystem.HttpConstants.BASE_URL + link;
			}

			return link;
		}
	}
}

