using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using CoreGraphics;
using System.Collections.Generic;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCConsultationConfirmViewController : TCConsultationTemplateViewController, TCSendPhotoHelperDelegate, TCImageSourceDelegate, TCFileManagerHelperDelegate
	{
		private TCFileManagerHelper addFileHelper;
		private TCAlertViewController alertExpired;
		private	TCAlertViewController alertDecline;
		private	TCAlertViewController alertInProgress;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCConsultationConfirmViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCConsultationConfirmViewController_iPhone" : "TCConsultationConfirmViewController_iPhone", null)
		{

		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			
			// Perform any additional setup after loading the view, typically from a nib.
			TCNotificationCenter.defaultCenter.addObserver (this, MConstants.kPostStartCallDurationTimer, beginStartCallTimer);
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostUploadFileSuccess, updateFileUploaded);
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, updateFileDeleted);

			CGRect frameScreen = UIScreen.MainScreen.Bounds;

			string textEnquiry = bookingInfo.Enquiry == null ? "" : bookingInfo.Enquiry;
			this.lbEnquiry.Text = textEnquiry;
			CGSize sizeText = MUtils.getSizeText (textEnquiry, MUtils.getFontWithSize (false, 13.0f), this.lbEnquiry.Frame.Width);
			this.lbEnquiry.Frame = new CGRect (this.lbEnquiry.Frame.X, this.lbEnquiry.Frame.Y, this.lbEnquiry.Frame.Width, sizeText.Height);
			this.viewEnquiry.Frame = new CGRect (this.viewEnquiry.Frame.X, this.lbApplicableFee.Frame.Y + this.lbApplicableFee.Frame.Height + 10.0f, this.viewEnquiry.Frame.Width, this.lbEnquiry.Frame.Height + 25.0f);

			addFileHelper = new TCFileManagerHelper (this);
			this.addFileHelper.Delegate = this;

			object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, this.bookingInfo.BookingDocuments, null, this.viewFiles);
			tweakFrameModifyDocument (result);
		
			if (MApplication.getInstance ().isConsultant && CoreSystem.Utils.isShowTalkNowRequest (DateTime.Parse (this.bookingInfo.StartTime), DateTime.Parse (this.bookingInfo.EndTime), MApplication.getInstance ().timezoneName)) {
				this.btnBeginConsultation.Hidden = false;
			} else {
				hideButtonConsultation ();
			}

			setContentSizeForScroll ();
		}

		public override void goBack ()
		{
			base.goBack ();
			TCNotificationCenter.defaultCenter.removeObserver (this, MConstants.kPostStartCallDurationTimer);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostDeleteFileSuccess);
		}

		private void hideButtonConsultation ()
		{
			this.btnBeginConsultation.Hidden = true;
			this.viewdefaultButtons.Frame = new CGRect (0.0f, 0.0f, this.viewdefaultButtons.Frame.Width, this.viewdefaultButtons.Frame.Height);
			this.viewButtons.Frame = new CGRect (this.viewButtons.Frame.X, this.viewButtons.Frame.Y, this.viewButtons.Frame.Width, this.viewdefaultButtons.Frame.Height);
		}

		private void setContentSizeForScroll ()
		{
			CGSize sizeScreen = UIScreen.MainScreen.Bounds.Size;
			this.scrollView.Frame = new CGRect (0.0f, 108.0f, sizeScreen.Width, sizeScreen.Height - 108);

			this.viewButtons.Frame = new CGRect (this.viewButtons.Frame.X, 50.0f + this.viewAttachment.Frame.Y + this.viewAttachment.Frame.Height, this.viewButtons.Frame.Width, this.viewButtons.Frame.Height);
			this.scrollView.ContentSize = new CGSize (sizeScreen.Width, this.viewButtons.Frame.Y + this.viewButtons.Frame.Height);
		}

		private void rejectBookingExpired ()
		{
			this.alertExpired = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlert"), TCLocalizabled.getText ("TextMessageCanNotBeginConsultation"), null, null, TCLocalizabled.getText ("OkTitle"));
			this.alertExpired.Delegate = this;
			this.alertExpired.display ();
		}

		private void sendRequestBeginConsultation ()
		{
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				this.InvokeOnMainThread (delegate {

					TalkNowDTO talkDto = CoreSystem.ParseDataHelper.parseDataTalkNow (response);

					if (talkDto.success) {
						this.alertInProgress = new TCAlertViewController (this, TCLocalizabled.getText ("AlertTitleConsultationTalkNow"), TCLocalizabled.getText ("TextMessageBeginConsultationSuccess"), null, null, TCLocalizabled.getText ("OkTitle"));
						this.alertInProgress.Delegate = this;
						this.alertInProgress.display ();
					} else {
						MAlertDTO alertDto = MUtils.getMessageTalkRequest (talkDto);
						if (alertDto != null) {
							this.alertExpired = new TCAlertViewController (this, alertDto.title, alertDto.message, null, null, TCLocalizabled.getText ("OkTitle"));
							if (alertDto.isDelegate) {
								this.alertExpired.Delegate = this;
							}

							this.alertExpired.display ();
						}
					}

					this.loadingView.dismiss ();
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					MUtils.showAlert (this, TCLocalizabled.getText ("TitleAlert"), TCLocalizabled.getText ("TextRequestFail"));
				});
			});
				
			DataHelperRequest.getInstance ().sendTalkNowRequest (MApplication.getInstance ().userId,
				this.bookingInfo.CustomerId,
				"",
				(int)CoreSystem.Constants.TALKNOWTYPE.TALKNOW, 
				false,
				this.bookingInfo.Id,
				successful, failure);
		}

		private void sendUploadPhotoRequest (UIImage imageUpload, string name)
		{		
			this.loadingView.show ();
			TCSendPhotoHelper photoHelper = new TCSendPhotoHelper (this);
			photoHelper.Delegate = this;
			photoHelper.sendPhoto (true, this.bookingInfo.Id, imageUpload, name);
		}

		private bool checkIsExpired ()
		{
			bool status = false;

			DateTime tEndTime = MUtils.stringToDateTime (this.bookingInfo.EndTime);
			DateTime tNowTime = CoreSystem.Utils.getDateTimeNow (MApplication.getInstance ().timezoneName);

			if (tEndTime < tNowTime) {
				status = true;
			}

			return status;
		}

		private void showDeclinceConfirmed (BookingInfo info)
		{
			string text1 = "";
			string param1 = "";
			string text2 = "";

			if (MApplication.getInstance ().isConsultant && bookingInfo.IsApplyNoMinimumCharge) {
				this.alertDecline = new TCAlertViewController (this, TCLocalizabled.getText ("TextAlertTitleCancellation"), TCLocalizabled.getText ("TextAlertMessageSpecialistCancelNotApplyMinCharge"), null, TCLocalizabled.getText ("NoTitle"), TCLocalizabled.getText ("YesTitle"));
			} else {
				if (!MApplication.getInstance ().isConsultant) {
					text1 = TCLocalizabled.getText ("TextAlertMessageCustomerCancel1");
					param1 = "$" + MUtils.getCost (info.CustomerMinCharge);
					text2 = TCLocalizabled.getText ("TextAlertMessageCustomerCancel2");
				} else {
					text1 = TCLocalizabled.getText ("TextAlertMessageSpecialistCancel1");
					param1 = "$" + MUtils.getCost (info.SpecialistMinCharge);
					text2 = TCLocalizabled.getText ("TextAlertMessageSpecialistCancel2");
				}

				var attributedString = new NSMutableAttributedString (text1 + param1 + text2);
				UIFont fontMessage = MUtils.getFontWithSize (false, 14.0f);

				attributedString.SetAttributes (new UIStringAttributes {
					Font = fontMessage,
					ForegroundColor = TCTheme.getInstance.getThemeColor (Theme.TextColorBooking)

				}.Dictionary, new NSRange (text1.Length, param1.Length));


				TCMessageView customMessage = new TCMessageView (UIColor.Clear, attributedString, false);
				this.alertDecline = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TextAlertTitleCancellation"), "", customMessage, TCLocalizabled.getText ("NoTitle"), TCLocalizabled.getText ("YesTitle"));
			}

			this.alertDecline.Delegate = this;
			this.alertDecline.display ();
		}

		private void deleteFile (BookingDocumentDto document)
		{
			if (document.BookingId == this.bookingInfo.Id) {

				List<BookingDocumentDto> bookingDocuments = this.bookingInfo.BookingDocuments;

				BookingDocumentDto documentDto = null;
				if (bookingDocuments != null) {
					documentDto = bookingDocuments.Find (x => x.Id == document.Id) as BookingDocumentDto;
				}

				if (documentDto != null) {
					this.bookingInfo.BookingDocuments.Remove (documentDto);
				}

				object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, this.bookingInfo.BookingDocuments, null, this.viewFiles);
				tweakFrameModifyDocument (result);
			}
		}


		#region Notification Local

		public void beginStartCallTimer (object notification)
		{
			if (this.alertInProgress != null) {
				TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostRefreshConfirmBooking, null);
				this.goBack ();
			}
		}

		public void updateFileUploaded (object fileDto)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto document = (BookingDocumentDto)fileDto;
				if (document.BookingId == this.bookingInfo.Id) {
					var documentDto = this.bookingInfo.BookingDocuments.Find (x => x.Id == document.Id) as BookingDocumentDto;
					if (documentDto == null) {
						this.bookingInfo.BookingDocuments.Add (document);
					}

					object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, this.bookingInfo.BookingDocuments, null, this.viewFiles);
					tweakFrameModifyDocument (result);
				}
			});
		}

		public void updateFileDeleted (object fileDto)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto document = (BookingDocumentDto)fileDto;
				deleteFile (document);
			});
		}

		#endregion

		#region IBAction

		partial void beginConsultationClicked (NSObject sender)
		{
			if (checkIsExpired ()) {
				rejectBookingExpired ();
			} else {
				this.loadingView.show ();
				sendRequestBeginConsultation ();
			}
		}

		partial void addFileClicked (NSObject sender)
		{
			if (checkIsExpired ()) {
				rejectBookingExpired ();
			} else {
				TCImageSource imageSource = new TCImageSource (this);
				imageSource.pDelegate = this;
				imageSource.open ();
			}
		}

		partial void declineClicked (NSObject sender)
		{
			#if DEBUG
			Console.Out.WriteLine ("declineConfirmClicked");
			#endif

			if (checkIsExpired ()) {
				rejectBookingExpired ();
			} else {
				showDeclinceConfirmed (this.bookingInfo);
			}
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public override void alertOkClicked (TCAlertViewController alert)
		{
			if (this.alertDecline == alert) {
				updateBookingStatusRequest ((int)CoreSystem.Constants.STATUS.Cancel);
			} else if (this.alertInProgress == alert) {
				TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostRefreshConfirmBooking, null);
				this.goBack ();
			} else {
				TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostRefreshAllBooking, null);
				this.goBack ();
			}
		}

		public override void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion

		#region TCSendPhotoHelperDelegate

		public void sendPhotoResult (TCSendPhotoHelper helper, PhotoDTO photoDto, string title, string message)
		{
			loadingView.dismiss ();

			if (photoDto.status) {
			
				object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, this.bookingInfo.BookingDocuments, photoDto.bookingDocument, this.viewFiles);
				this.bookingInfo.BookingDocuments = (List<BookingDocumentDto>)result [0];
				this.viewFiles.Frame = new CGRect (this.viewFiles.Frame.X, this.viewFiles.Frame.Y, this.viewFiles.Frame.Width, (float)result [1]);
				this.viewAttachment.Frame = new CGRect (this.viewAttachment.Frame.X, this.viewAttachment.Frame.Y, this.viewAttachment.Frame.Width, (float)result [1] + 20.0f);
				setContentSizeForScroll ();

				this.scrollView.ScrollRectToVisible (this.viewAttachment.Frame, true);

			} else {
				MUtils.showAlert (this, title, message);
			}
		}

		#endregion

		#region TCImageSourceDelegate

		public void didLoadImageFinish (UIImage image, string name)
		{
			sendUploadPhotoRequest (image, name);
		}

		#endregion

		#region TCFileManagerHelperDelegate

		public void beginActionWithFile (TCFileManagerHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishActionWithFile (TCFileManagerHelper helper)
		{
			this.loadingView.dismiss ();
		}

		public void actionFileSuccess (TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document)
		{
			if (this.bookingInfo.BookingDocuments != null && this.bookingInfo.BookingDocuments.Count > 0) {
				List<BookingDocumentDto> bookingDocuments = this.bookingInfo.BookingDocuments;

				var documentDto = bookingDocuments.Find (x => x.Id == document.Id) as BookingDocumentDto;
				if (documentDto != null) {
					this.bookingInfo.BookingDocuments.Remove (documentDto);

					object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, this.bookingInfo.BookingDocuments, null, this.viewFiles);
					tweakFrameModifyDocument (result);
				}
			}
		}

		public void actionFileFail (TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document)
		{
			MUtils.showAlert (this, TCLocalizabled.getText ("TitleAlertDeleteFile"), String.Format (TCLocalizabled.getText ("MessageAlertDeleteFile"), document.OriginalFileName));
		}

		#endregion

		private void tweakFrameModifyDocument (object[] result)
		{
			this.bookingInfo.BookingDocuments = (List<BookingDocumentDto>)result [0];
			this.viewFiles.Frame = new CGRect (this.viewFiles.Frame.X, this.viewFiles.Frame.Y, this.viewFiles.Frame.Width, (float)result [1]);
			this.viewAttachment.Frame = new CGRect (this.viewAttachment.Frame.X, this.viewEnquiry.Frame.Y + this.viewEnquiry.Frame.Height + 15.0f, this.viewAttachment.Frame.Width, this.viewFiles.Frame.Height + 20.0f);

			setContentSizeForScroll ();
		}
	}
}

