
using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreGraphics;
using CoreSystem;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Collections.Generic;
using System.Linq;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCConsultationPastViewController : TCConsultationTemplateViewController, TCUpdateWaiveFeeHelperDelegate, TCSendPhotoHelperDelegate, TCImageSourceDelegate, TCProfileSpecialistHelperDelegate, TCBookingHelperDelegate, TCBookViewDelegate, TCActionViewDelegate, TCTranscriptHelperDelegate, TCFileManagerHelperDelegate
	{
		public Guid iCallId { get; set; }

		public SpecialistProfileInfos specialistInfo { get; set; }

		public bool isTalkNow;
		public bool isFirstMovedInformation;
		private TCBookView bookView;
		private TCActionView actionView;
		private TCTalknowStateView talknowStateView;
		private TCFileManagerHelper addFileHelper;
		private TCAlertViewController waiveAlert;
		private CGRect frameViewWaiveFee;
		private bool isShowWaiveFee;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCConsultationPastViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCConsultationPastViewController_iPhone" : "TCConsultationPastViewController_iPhone", null)
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
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostUploadFileSuccess, updateFileUploaded);
			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kPostDeleteFileSuccess, updateFileDeleted);

			this.addFileHelper = new TCFileManagerHelper (this);
			this.addFileHelper.Delegate = this;

			this.frameViewWaiveFee = this.viewWaiveFee.Frame;
			this.isTalkNow = false;

			if (this.bookingInfo.PastBooking != null)
				this.iCallId = this.bookingInfo.PastBooking.CallId;

			if (MApplication.getInstance ().isConsultant) {
				initActionView (this.specialistInfo);
				this.loadingView.show ();
				loadLatsetBookingInfo ();
			} else {
				if (this.specialistInfo == null) {
					this.loadingView.show ();
					TCProfileSpecialistHelper profileHelper = new TCProfileSpecialistHelper (this);
					profileHelper.Delegate = this;
					profileHelper.getProfile (this.bookingInfo.SpecialistId);
				} else {
					initBookView (this.specialistInfo);
				}
			}
				
			this.imageRating.Image = MUtils.getRatingImage (this.bookingInfo.Rating);

			setUpWaive ();
			setupDataUI ();
		}

		private  void setUpWaive()
		{
			if (this.bookingInfo.IsWaiveFee) {
				this.lbWarningWaiveFee.Hidden = false;
			} else {
				this.lbWarningWaiveFee.Hidden = true;
			}

			if (MApplication.getInstance ().isConsultant) {	
				this.lbWarningWaiveFee.Text = TCLocalizabled.getText ("TextWarningWaivedFeeExpertView");
				this.isShowWaiveFee = !CoreSystem.Utils.isDisableWaivedFee (this.bookingInfo);
			} else {
				this.lbWarningWaiveFee.Text = TCLocalizabled.getText ("TextWarningWaivedFeeCustomerView");
			}
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, true);
			tcNavi.showTitle ((TCLocalizabled.getText ("TextTitleConsultationRef") + (bookingInfo.ReferenceNo == null ? "N/A" : bookingInfo.ReferenceNo)).ToUpper ());
			tcNavi.showActionHistory ();
		}

		private void loadLatsetBookingInfo()
		{
			TCBookingHelper bookingHelper = new TCBookingHelper (this);
			bookingHelper.Delegate = this;
			bookingHelper.getBookingInfo (this.bookingInfo.Id);
		}

		private void setupDataUI ()
		{
			if (this.bookingInfo != null) {
				if (this.bookingInfo.PastBooking != null) {

					BookingHistory pastBooking = this.bookingInfo.PastBooking;

					this.imageRating.Image = MUtils.getRatingImage (this.bookingInfo.Rating);

					if (!bookingInfo.IsMinCharge) {
						this.lbDateStartCall.Text = (pastBooking.CallStartTime != null && !pastBooking.CallStartTime.Equals ("")) ? MUtils.stringDateToString (pastBooking.CallStartTime, MUtils.kFormatDate) : "N/A";
						this.lbTimeStartCall.Text = (pastBooking.CallStartTime != null && !pastBooking.CallStartTime.Equals ("")) ? MUtils.stringDateToString (pastBooking.CallStartTime, MUtils.kFormatDefaultTime) : "N/A";
						this.lbDateEndCall.Text = (pastBooking.CallEndTime != null && !pastBooking.CallEndTime.Equals ("")) ? MUtils.stringDateToString (pastBooking.CallEndTime, MUtils.kFormatDate) : "N/A";
						this.lbTimeEndCall.Text = (pastBooking.CallEndTime != null && !pastBooking.CallEndTime.Equals ("")) ? MUtils.stringDateToString (pastBooking.CallEndTime, MUtils.kFormatDefaultTime) : "N/A";
					}
						
					if (pastBooking.DurationMinute == 0) {
						this.lbTotalTime.Text = "N/A";
					} else {
						this.lbTotalTime.Text = TimeSpan.FromSeconds (pastBooking.DurationMinute).ToString ();
					}
				
					this.lbWaiveFeeCost.Text = "$" + MUtils.getCost ((double)pastBooking.SpecialistTotalRate);
					this.lbTotalCost.Text = "$" + MUtils.getCost ((double)pastBooking.CustomerTotalRate);
				}
			}

			object[] result = addFileHelper.displayFiles (this.bookingInfo.Id, (this.bookingInfo != null ? this.bookingInfo.BookingDocuments : null), null, this.viewFiles);
			tweakFrameModifyDocument (result);
		}

		private void setTime ()
		{
			this.lbDateStartCall.Text = (bookingInfo.StartTime != null && !bookingInfo.StartTime.Equals ("")) ? MUtils.stringDateToString (bookingInfo.StartTime, MUtils.kFormatDate) : "N/A";
			this.lbTimeStartCall.Text = (bookingInfo.StartTime != null && !bookingInfo.StartTime.Equals ("")) ? MUtils.stringDateToString (bookingInfo.StartTime, MUtils.kFormatDefaultTime) : "N/A";
			this.lbDateEndCall.Text = (bookingInfo.EndTime != null && !bookingInfo.EndTime.Equals ("")) ? MUtils.stringDateToString (bookingInfo.EndTime, MUtils.kFormatDate) : "N/A";
			this.lbTimeEndCall.Text = (bookingInfo.EndTime != null && !bookingInfo.EndTime.Equals ("")) ? MUtils.stringDateToString (bookingInfo.EndTime, MUtils.kFormatDefaultTime) : "N/A";
		}

		private void initBookView (SpecialistProfileInfos info)
		{
			this.bookView = TCBookView.Create ();
			this.bookView.specialistInfo = info;
			this.bookView.parentController = this;
			this.bookView.Delegate = this;

			this.bookView.buildInView (this.viewActionBook);
		}

		private void initActionView (SpecialistProfileInfos info)
		{
			this.actionView = TCActionView.Create ();
			this.actionView.specialistInfo = info;
			this.actionView.iCallId = this.iCallId;
			this.actionView.bookingInfo = this.bookingInfo;
			this.actionView.parentController = this;
			this.actionView.Delegate = this;

			this.actionView.buildInView (this.viewActionSend);

			if (MApplication.getInstance ().isConsultant) {
				this.actionView.displayOnlyFeedback ();
			}
		}

		private void setContentSizeForScroll ()
		{
			CGSize sizeScreen = UIScreen.MainScreen.Bounds.Size;
			this.scrollView.Frame = new CGRect (0.0f, 108.0f, sizeScreen.Width, sizeScreen.Height - 108);

			if (MApplication.getInstance ().isConsultant) {
				this.viewActionBook.Hidden = true;
				this.imageRating.Hidden = true;
				this.viewInformation.Frame = new CGRect (this.viewActionBook.Frame.X, this.viewActionBook.Frame.Y, 0.0f, 0.0f);

				if (this.lbWarningWaiveFee.Hidden) {
					this.viewCostConsultation.Frame = new CGRect (this.viewCostConsultation.Frame.X, this.viewWaiveFee.Frame.Y + this.viewWaiveFee.Frame.Height + 3.0f, this.viewCostConsultation.Frame.Width, this.viewCostConsultation.Frame.Height);
				} else {
					this.viewWaiveFee.Frame = new CGRect (this.viewWaiveFee.Frame.X, this.viewWaiveFee.Frame.Y, this.viewWaiveFee.Frame.Width, this.frameViewWaiveFee.Height);
					this.viewCostConsultation.Frame = new CGRect (this.viewCostConsultation.Frame.X, this.lbWarningWaiveFee.Frame.Y + this.lbWarningWaiveFee.Frame.Height + 8.0f, this.viewCostConsultation.Frame.Width, this.viewCostConsultation.Frame.Height);
				}
			} else {
				this.viewWaiveFee.Hidden = true;
				this.lbWarningWaiveFee.Frame = new CGRect (this.lbWarningWaiveFee.Frame.X, this.viewWaiveFee.Frame.Y, this.lbWarningWaiveFee.Frame.Width, this.lbWarningWaiveFee.Frame.Height);

				if (this.lbWarningWaiveFee.Hidden) {
					this.viewCostConsultation.Frame = new CGRect (this.viewCostConsultation.Frame.X, this.lbWarningWaiveFee.Frame.Y, this.viewCostConsultation.Frame.Width, this.viewCostConsultation.Frame.Height);
				} else {
					this.viewCostConsultation.Frame = new CGRect (this.viewCostConsultation.Frame.X, this.lbWarningWaiveFee.Frame.Y + this.lbWarningWaiveFee.Frame.Height + 10.0f, this.viewCostConsultation.Frame.Width, this.viewCostConsultation.Frame.Height);
				}

				this.viewInformation.Frame = new CGRect (this.viewActionBook.Frame.X, this.viewActionBook.Frame.Y + this.viewActionBook.Frame.Height + 10.0f, 0.0f, 0.0f);
			}

			this.viewAttachment.Frame = new CGRect (this.viewCostConsultation.Frame.X, this.viewCostConsultation.Frame.Y + this.viewCostConsultation.Frame.Height + 10.0f, this.viewAttachment.Frame.Width, this.viewAttachment.Frame.Height);
			this.viewInformation.Frame = new CGRect (this.viewInformation.Frame.X, this.viewInformation.Frame.Y, this.viewInformation.Frame.Width, this.viewAttachment.Frame.Y + this.viewAttachment.Frame.Height + 10.0f);

			if (this.specialistInfo != null && this.specialistInfo.Account.Status == (int)CoreSystem.Constants.LOGIN_STATUS.Expired && !this.isFirstMovedInformation) {
				this.scrollView.ContentSize = new CGSize (sizeScreen.Width, this.viewInformation.Frame.Y + this.viewInformation.Frame.Height + 10.0f);
			} else {
				this.scrollView.ContentSize = new CGSize (sizeScreen.Width, this.viewInformation.Frame.Y + this.viewInformation.Frame.Height);
			}
		}

		private void tweakFrameModifyDocument (object[] result)
		{
			this.bookingInfo.BookingDocuments = (List<BookingDocumentDto>)result [0];
			this.viewFiles.Frame = new CGRect (this.viewFiles.Frame.X, this.viewFiles.Frame.Y, this.viewFiles.Frame.Width, (float)result [1]);
			this.viewAttachment.Frame = new CGRect (this.viewAttachment.Frame.X, this.viewAttachment.Frame.Y, this.viewAttachment.Frame.Width, (float)result [1] + 20.0f);
		
			setContentSizeForScroll ();
		}

		public override void decorateUI ()
		{
			base.decorateUI ();
		}

		public override void goBack ()
		{
			back ();
		}

		private void back ()
		{
			removeAllObserver ();

			if (this.NavigationController != null) {
				this.NavigationController.PopViewController (true);
			} else {
				UINavigationController root = (UINavigationController)UIApplication.SharedApplication.KeyWindow.RootViewController;
				root.PopViewController (true);
			}
		}

		private void removeAllObserver ()
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostDeleteFileSuccess);

			if (this.isTalkNow) {
				TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostNotifyDeferAccept);
				TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kUpdateTalkNowStep);
			}
		}

		private void buildActionMenu (bool viewInvoice, bool uploadFile, bool talkReplay, bool transcript, bool waiveFee)
		{
			UIActionSheet actionSheet = new UIActionSheet (TCLocalizabled.getText ("TitleActionChooseAction"));

			int numButton = 0;

			if (viewInvoice) {
				actionSheet.AddButton (TCLocalizabled.getText ("ActionViewInvoice"));
				numButton++;
			}

			if (uploadFile) {
				actionSheet.AddButton (TCLocalizabled.getText ("ActionUploadFile"));
				numButton++;
			}

			if (talkReplay) {
				actionSheet.AddButton (TCLocalizabled.getText ("ActionTalkReplay"));
				numButton++;
			}

			if (transcript) {
				actionSheet.AddButton (TCLocalizabled.getText ("ActionOrderTranscript"));
				numButton++;
			}

			if (waiveFee) {
				actionSheet.AddButton (TCLocalizabled.getText ("ActionWaiveFee"));
				numButton++;
			}

			actionSheet.AddButton (TCLocalizabled.getText ("CancelTitle"));
			actionSheet.CancelButtonIndex = numButton;

			actionSheet.Clicked += delegate(object a, UIButtonEventArgs b) {
				UIActionSheet _actionSheet = (UIActionSheet)a;

				#if DEBUG
				Console.WriteLine ("Button \"" + _actionSheet.ButtonTitle (b.ButtonIndex) + "\" clicked");
				#endif
				string buttonTitle = _actionSheet.ButtonTitle (b.ButtonIndex);

				if (buttonTitle.Equals (TCLocalizabled.getText ("ActionViewInvoice"))) {
					getInvoiceURL (this.bookingInfo.Id);
				} else if (buttonTitle.Equals (TCLocalizabled.getText ("ActionUploadFile"))) {
					TCImageSource imageSource = new TCImageSource (this);
					imageSource.pDelegate = this;
					imageSource.open ();
				} else if (buttonTitle.Equals (TCLocalizabled.getText ("ActionTalkReplay"))) {
					displayReplay ();
				} else if (buttonTitle.Equals (TCLocalizabled.getText ("ActionOrderTranscript"))) {
					requestOrderTranscript ();
				} else if (buttonTitle.Equals (TCLocalizabled.getText ("ActionWaiveFee"))) {
					waiveFeeClicked ();
				}
			};

			actionSheet.ShowInView (this.View);

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

		public override void goActionHistory ()
		{
			buildActionMenu (!MApplication.getInstance ().isConsultant, true, true, true, this.isShowWaiveFee);
		}

		private void displayReplay ()
		{

			if (this.bookingInfo.PastBooking == null || this.bookingInfo.PastBooking.RecordUrl == null) {
				MUtils.showNotExistsTalkReplay (this);
			} else {
				TCReplayViewController replayVC = new TCReplayViewController ();
				replayVC.recordUrl = this.bookingInfo.PastBooking.RecordUrl;
				this.PresentModalViewController (replayVC, true);
			}
		}

		private void requestOrderTranscript ()
		{
			if (this.bookingInfo.PastBooking == null || this.bookingInfo.PastBooking.RecordUrl == null || this.bookingInfo.PastBooking.CallId == Guid.Empty) {
				MUtils.showRequestFail (this);
			} else {
				TCTranscriptHelper transcriptHelper = new TCTranscriptHelper (this);
				transcriptHelper.Delegate = this;
				transcriptHelper.transcript (this.bookingInfo.PastBooking.CallId, MUtils.getURLFromServer (this.bookingInfo.PastBooking.RecordUrl));
			}
		}

		private void sendUploadPhotoRequest (UIImage imageUpload, string name)
		{
			loadingView.show ();
			TCSendPhotoHelper photoHelper = new TCSendPhotoHelper (this);
			photoHelper.Delegate = this;
			photoHelper.sendPhoto (true, this.bookingInfo.Id, imageUpload, name);
		}

		private void updateDeferOrReschduleView (DeferDTO deferDTO)
		{
			MUtils.updateDeferOrReschduleView (this.viewActionBook, deferDTO);

			if (this.talknowStateView != null)
				this.talknowStateView.RemoveFromSuperview ();

			this.viewInformation.Hidden = true;
			this.bookView.Hidden = true;
			this.scrollView.ContentSize = new CGSize (0.0f, 0.0f);
		}

		public void updateStateView ()
		{
			this.isTalkNow = true;

			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostNotifyDeferAccept, new
				TCSelector (updateDeferTalknow));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kUpdateTalkNowStep, new
				TCSelector (updateTalknowSuccess));

			this.talknowStateView = TCTalknowStateView.Create ();
			this.talknowStateView.Frame = new CGRect (0.0f, 0.0f, this.viewActionBook.Frame.Width, this.viewActionBook.Frame.Height);
			this.viewActionBook.AddSubview (this.talknowStateView);
			this.bookView.Hidden = true;
			this.viewInformation.Hidden = true;
			this.scrollView.ContentSize = new CGSize (0.0f, 0.0f);
		}

		private void getInvoiceURL (Guid bookingId)
		{
			this.loadingView.show ();

			Action<string> successful = (response => {

				this.InvokeOnMainThread (delegate {	
					InvoiceDTO invoiceDTO = CoreSystem.ParseDataHelper.parseResponseInvoice (response);

					if (invoiceDTO.status) {
						TCFileManager fileManager = TCFileManager.Create ();
						fileManager.showFile (invoiceDTO.url);
						fileManager.parentController = this;
						fileManager.Frame = this.NavigationController.View.Frame;
						fileManager.Center = this.NavigationController.View.Center;
						this.NavigationController.View.AddSubview (fileManager);
					} else {
						MUtils.showNotExistsInvoice (this);
					}

					this.loadingView.dismiss ();
				});
			});

			Action<string> failure = (response => {
				#if DEBUG
				Console.WriteLine ("FAILURE");
				#endif
				this.InvokeOnMainThread (delegate {	
					this.loadingView.dismiss ();
					MUtils.showNotExistsInvoice (this);
				});
			});

			DataHelperRequest.getInstance ().getInvoice (bookingId, successful, failure);
		}

		#region SignalR

		public void updateTalknowSuccess (object data)
		{
			this.InvokeOnMainThread (delegate {
				if (this.talknowStateView != null) {
					this.talknowStateView.updateStep2 ();
					removeAllObserver ();
				}
			});
		}

		public void updateDeferTalknow (object data)
		{
			this.InvokeOnMainThread (delegate {
				DeferDTO deferTalkNow = (DeferDTO)data;
				updateDeferOrReschduleView (deferTalkNow);
				removeAllObserver ();
			});
		}

		#endregion

		#region IBAction

		private void waiveFeeClicked ()
		{
			this.isShowWaiveFee = !CoreSystem.Utils.isDisableWaivedFee (this.bookingInfo);

			if (this.isShowWaiveFee) {
				this.waiveAlert = new TCAlertViewController (this, TCLocalizabled.getText ("TextAlertTitleWaiveFee"), TCLocalizabled.getText ("TextAlertMessageConfirmWaiveFee"), null, TCLocalizabled.getText ("NoTitle"), TCLocalizabled.getText ("YesTitle"));
				this.waiveAlert.Delegate = this;
				this.waiveAlert.display ();
			} else {
				MUtils.showWaiveFeeTimeExpired (this);
			}
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

				this.scrollView.ScrollRectToVisible (this.viewInformation.Frame, true);
				//TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostUpdateDocumentPast, new MDocumentDTO (this.bookingInfo.Id, this.bookingInfo.BookingDocuments));
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

		#region TCActionViewDelegate

		public 	void beginActionRequest (TCActionView owner, ACTION_INDEX action)
		{
			if (action != ACTION_INDEX.EMAIL) {
				this.loadingView.show ();
			}
		}

		public 	void actionRefreshData (TCActionView owner, SpecialistProfileInfos info)
		{

		}

		public 	void finishActionRequest (TCActionView owner, ACTION_INDEX action)
		{
			this.loadingView.dismiss ();
		}

		public 	void finishFeebackRequest (TCActionView owner, bool isSuccess, int numRate, string feedback)
		{
			this.loadingView.dismiss ();

			if (isSuccess) {
				this.imageRating.Image = MUtils.getRatingImage (numRate);
				this.bookingInfo.Rating = numRate;
				this.bookingInfo.Feedback = feedback;
				this.bookingInfo.IsFeedback = true;
				this.actionView.bookingInfo = this.bookingInfo;
			
				TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostChangeNumRate, new MFeedbackDTO (this.bookingInfo.Id, numRate, feedback));
			}
		}

		#endregion

		#region TCUpdateWaiveFeeHelperDelegate

		public void updateWaiveFeeSuccess (TCUpdateWaiveFeeHelper helper)
		{
			MUtils.showRequestSuccess (this);
			this.lbWarningWaiveFee.Hidden = false;

			this.bookingInfo.PastBooking.CustomerTotalRate = this.bookingInfo.PastBooking.CustomerTotalRate - this.bookingInfo.PastBooking.SpecialistTotalRate;
			this.bookingInfo.IsWaiveFee = true;
			this.isShowWaiveFee = false;

			this.lbTotalCost.Text = "$" + MUtils.getCost ((double)this.bookingInfo.PastBooking.CustomerTotalRate);

			if (TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController") != null) {
				TCBookingPastViewController _pastBookingVC = (TCBookingPastViewController)TCViewIdentity.getInstance.getObjectForKey ("TCBookingPastViewController");
				TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyPastBooking (_pastBookingVC), this.bookingInfo);
			}

			setContentSizeForScroll ();
		}

		public void updateWaiveFeeFail (TCUpdateWaiveFeeHelper helper)
		{
			MUtils.showRequestFail (this);
		}

		public void beginUpdateWaiveFeeRequest (TCUpdateWaiveFeeHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishUpdateWaiveFeeRequest (TCUpdateWaiveFeeHelper helper)
		{
			this.loadingView.dismiss ();
		}

		#endregion

		#region TCBookViewDelegate

		public void beginBookRequest ()
		{
			this.loadingView.show ();
		}

		public void bookRefreshData (SpecialistProfileInfos info)
		{
		}

		public void finishBookRequest ()
		{
			this.loadingView.dismiss ();
		}

		#endregion

		#region TCProfileSpecialistHelperDelegate

		public void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info)
		{
			this.specialistInfo = info;

			initActionView (this.specialistInfo);
			initBookView (this.specialistInfo);

			loadLatsetBookingInfo ();
		}

		public void getProfileFail (TCProfileSpecialistHelper helper)
		{
			this.loadingView.dismiss ();
			TCAlertViewController alert = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"), null, null, TCLocalizabled.getText ("OkTitle"));
			alert.Delegate = this;
			alert.display ();
		}

		#endregion

		#region TCBookingHelperDelegate

		public void getBookingSuccess (TCBookingHelper helper, BookingInfo info)
		{
			this.loadingView.dismiss ();
			this.bookingInfo = info;
			if (MApplication.getInstance ().isConsultant) {	
				this.isShowWaiveFee = !CoreSystem.Utils.isDisableWaivedFee (this.bookingInfo);
			}

			setUpWaive ();
			this.setupDataUI ();
		}

		public void getBookingFail (TCBookingHelper helper)
		{
			this.loadingView.dismiss ();
			TCAlertViewController alert = new TCAlertViewController (this, TCLocalizabled.getText ("TitleAlertNotice"), TCLocalizabled.getText ("TextMessageNotReceiveConfig"), null, null, TCLocalizabled.getText ("OkTitle"));
			alert.Delegate = this;
			alert.display ();
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public override void alertOkClicked (TCAlertViewController alert)
		{
			if (this.waiveAlert == alert) {
				TCUpdateWaiveFeeHelper waiveFeeHelper = new TCUpdateWaiveFeeHelper (this);
				waiveFeeHelper.Delegate = this;
				waiveFeeHelper.update (this.bookingInfo.Id);
			} else {
				back ();
			}
		}

		public override void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion

		#region TCTranscriptHelperDelegate

		public void transcriptSuccess (TCTranscriptHelper helper)
		{
			MUtils.showRequestSuccess (this);
		}

		public void transcriptFail (TCTranscriptHelper helper)
		{
			MUtils.showRequestFail (this);
		}

		public void beginTranscriptRequest (TCTranscriptHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishTranscriptRequest (TCTranscriptHelper helper)
		{
			this.loadingView.dismiss ();
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
			deleteFile (document);
		}

		public void actionFileFail (TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document)
		{
			MUtils.showAlert (this, TCLocalizabled.getText ("TitleAlertDeleteFile"), String.Format (TCLocalizabled.getText ("MessageAlertDeleteFile"), document.OriginalFileName));
		}

		#endregion
	}
}

