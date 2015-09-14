using System;
using System.Drawing;
using Foundation;
using UIKit;
using CoreSystem;
using RestSharp;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using Newtonsoft.Json;
using CoreGraphics;
using ObjCRuntime;
using System.Globalization;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCFollowingUpViewController : UIViewController, TCImageSourceDelegate, TCProfileSpecialistHelperDelegate, TCSendPhotoHelperDelegate, TCSendFeedbackComponentDelegate, TCBookingHelperDelegate, TCEmailProfileComponentDelegate, TCFavoriteHelperDelegate, TCUpdateWaiveFeeHelperDelegate, TCTranscriptHelperDelegate, TCAlertViewControllerDelegate, TCFileManagerHelperDelegate
	{
		public TCLoadingOverlay loadingView;

		private FollowUpInfo followUpInfo { get; set; }

		public DurationInfo durationInfo { get; set; }

		private NSTimer timer;

		private DateTime startTime;
		private double costPerMinutes;
		private double costPerSeconds;

		private double currentCost;
		private UIViewController parentController;
		private double minimumCost;
		private int freeTime;
		private int totalTime;
		private TCFileManagerHelper addFileHelper;
		private List<BookingDocumentDto> finalDocument;
		private NSObject foregroundObserver;
		private string feedback;
		private bool isFeedbacked;
		private int numRating;
		private DateTime endTime;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCFollowingUpViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCFollowingUpViewController_iPhone" : "TCFollowingUpViewController_iPhone", null)
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
			this.foregroundObserver = NSNotificationCenter.DefaultCenter.AddObserver (new NSString (MConstants.kPostEnterForeground), WillEnterForeground);
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostStopCall, new
				TCSelector (updateStopCall));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostFolloUp, new
				TCSelector (updateFollowUp));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostUploadFileSuccess, new
				TCSelector (transferFile));
			TCNotificationCenter.defaultCenter.addObserver (this, CoreSystem.Constants.kPostDeleteFileSuccess, new
				TCSelector (deleteFile));
				
			this.addFileHelper = new TCFileManagerHelper (this);
			this.addFileHelper.Delegate = this;
			this.btnCamera.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Selected);
			this.btnCamera.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Highlighted);

			this.lineFiles.Hidden = true;

			setupCircleAvatar ();
		
			this.viewActionCustomer.Hidden = true;
			this.viewActionSpecialist.Hidden = true;

			loadingView = new TCLoadingOverlay (this, true, false);
			loadingView.build ();

			this.lbFullname.Text = durationInfo.UserFullName != null ? durationInfo.UserFullName : "";

			if (this.durationInfo != null) {
				this.costPerMinutes = double.Parse (this.durationInfo.CostPerMinute, new CultureInfo ("en-us"));
				loadInfoDuration (this.durationInfo);
			} else
				this.costPerMinutes = 0.0f;

			timer = NSTimer.CreateRepeatingScheduledTimer (1.0f, timerFired);
		}

		private void decorateButtonCustomer ()
		{		
			this.btnFeedback.SetImage (UIImage.FromBundle ("followUp_feedback_touch"), UIControlState.Selected);
			this.btnFeedback.SetImage (UIImage.FromBundle ("followUp_feedback_touch"), UIControlState.Highlighted);

			this.btnFavorite.SetImage (UIImage.FromBundle ("followUp_favorite_touch"), UIControlState.Selected);
			this.btnFavorite.SetImage (UIImage.FromBundle ("followUp_favorite_touch"), UIControlState.Highlighted);

			this.btnReplayCustomer.SetImage (UIImage.FromBundle ("followUp_replay_touch"), UIControlState.Selected);
			this.btnReplayCustomer.SetImage (UIImage.FromBundle ("followUp_replay_touch"), UIControlState.Highlighted);

			this.btnTranscriptCustomer.SetImage (UIImage.FromBundle ("followUp_transcribe_touch"), UIControlState.Selected);
			this.btnTranscriptCustomer.SetImage (UIImage.FromBundle ("followUp_transcribe_touch"), UIControlState.Highlighted);

			this.btnEmail.SetImage (UIImage.FromBundle ("followUp_email_touch"), UIControlState.Selected);
			this.btnEmail.SetImage (UIImage.FromBundle ("followUp_email_touch"), UIControlState.Highlighted);

			this.btnCameraCustomer.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Selected);
			this.btnCameraCustomer.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Highlighted);
		}

		private void decorateButtonExpert ()
		{
			this.btnWaiveFee.SetImage (UIImage.FromBundle ("followUp_waiveFee_touch"), UIControlState.Selected);
			this.btnWaiveFee.SetImage (UIImage.FromBundle ("followUp_waiveFee_touch"), UIControlState.Highlighted);

			this.btnReplaySpecialist.SetImage (UIImage.FromBundle ("followUp_replay_touch"), UIControlState.Selected);
			this.btnReplaySpecialist.SetImage (UIImage.FromBundle ("followUp_replay_touch"), UIControlState.Highlighted);

			this.btnTranscriptSpecialist.SetImage (UIImage.FromBundle ("followUp_transcribe_touch"), UIControlState.Selected);
			this.btnTranscriptSpecialist.SetImage (UIImage.FromBundle ("followUp_transcribe_touch"), UIControlState.Highlighted);

			this.btnCameraSpecialist.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Selected);
			this.btnCameraSpecialist.SetImage (UIImage.FromBundle ("followUp_upload_touch"), UIControlState.Highlighted);
		}

		private void disableFeedback ()
		{
			this.btnFeedback.SetImage (UIImage.FromBundle ("followUp_feedback_disable"), UIControlState.Normal);
			this.btnFeedback.UserInteractionEnabled = false;
		}

		private void disableTranscript ()
		{
			if (MApplication.getInstance ().isConsultant) {
				this.btnTranscriptSpecialist.SetImage (UIImage.FromBundle ("followUp_transcribe_disable"), UIControlState.Normal);
				this.btnTranscriptSpecialist.UserInteractionEnabled = false;
			} else {
				this.btnTranscriptCustomer.SetImage (UIImage.FromBundle ("followUp_transcribe_disable"), UIControlState.Normal);
				this.btnTranscriptCustomer.UserInteractionEnabled = false;
			}
		}

		private void disableWaiveFee ()
		{
			this.btnWaiveFee.SetImage (UIImage.FromBundle ("followUp_waiveFee_disable"), UIControlState.Normal);
			this.btnWaiveFee.UserInteractionEnabled = false;
		}

		private void setupCircleAvatar ()
		{
			this.avatarView.Layer.CornerRadius = this.avatarView.Frame.Height / 2;
			this.avatarView.Layer.MasksToBounds = true;
			this.avatarView.Layer.BorderWidth = 2;
			this.avatarView.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.CircleImage).CGColor;

			TCAsyncImage.getInstance ().BeginDownloadingAvatar (this, this.avatarView, this.acIndicator, this.durationInfo.AvatarPath, true);
		}

		private void setContentSizeForScroll ()
		{
			CGSize sizeScreen = UIScreen.MainScreen.Bounds.Size;
			this.scrollView.Frame = new CGRect (0.0f, 108.0f, sizeScreen.Width, sizeScreen.Height - 153);
			this.scrollView.ContentSize = new CGSize (sizeScreen.Width, this.viewFiles.Frame.Y + this.viewFiles.Frame.Height);
		}

		public void setDurationInfo (DurationInfo info)
		{
			this.durationInfo = info;
		}

		public void displayInView (UIViewController controller)
		{
			this.parentController = controller;
			CGRect frameScreen = UIScreen.MainScreen.Bounds;
			this.View.Frame = new CGRect (0.0f, frameScreen.Height, frameScreen.Width, frameScreen.Height);

			controller.AddChildViewController (this);
			controller.View.AddSubview (this.View);

			UIView.BeginAnimations ("displayInView");

			UIView.SetAnimationDuration (0.3);
			UIView.SetAnimationCurve (UIViewAnimationCurve.EaseInOut);
			UIView.SetAnimationDelegate (this);
			UIView.SetAnimationDidStopSelector (
				new Selector ("slideDisplayAnimationFinished"));

			this.View.Frame = new CGRect (0.0f, 0.0f, frameScreen.Width, frameScreen.Height);
		
			UIView.CommitAnimations ();
		}

		public void dissmissViewAnimation ()
		{
			CGRect frameScreen = UIScreen.MainScreen.Bounds;
			UIView.BeginAnimations ("dissmissView");

			UIView.SetAnimationDuration (0.4);
			UIView.SetAnimationCurve (UIViewAnimationCurve.EaseInOut);
			UIView.SetAnimationDelegate (this);
			UIView.SetAnimationDidStopSelector (
				new Selector ("slideDissmisAnimationFinished"));

			this.View.Frame = new CGRect (0.0f, frameScreen.Height, frameScreen.Width, frameScreen.Height);
			this.parentController.NavigationController.NavigationBar.Hidden = false;
			UIView.CommitAnimations ();
		}

		[Export ("slideDisplayAnimationFinished")]
		void SlideDisplayed ()
		{
			CGRect frameScreen = UIScreen.MainScreen.Bounds;
			this.View.Frame = frameScreen;
			this.parentController.NavigationController.NavigationBar.Hidden = true;
		}

		[Export ("slideDissmisAnimationFinished")]
		void SlideDissmised ()
		{
			this.View.RemoveFromSuperview ();
			this.RemoveFromParentViewController ();
		}

		public void dissmissView ()
		{
			DismissViewController (true, FinishSlide);
		}

		void FinishSlide ()
		{
			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostDissmisUploadPhoto, null);
		}

		private  void updateFinishInfo ()
		{
			this.lbCost.Text = "$" + MUtils.getCost ((double)followUpInfo.Cost);
			this.lbHours.Text = this.followUpInfo.Duration.Replace(" ","");
		}

		#region Notification Local

		private void WillEnterForeground (NSNotification notification)
		{
			if (this.loadingView != null) {
				this.loadingView.dismiss ();
			}
		}

		#endregion

		#region SignalR

		public void updateStopCall (object endTime)
		{
			this.InvokeOnMainThread (delegate {
				this.btnCamera.Hidden = true;
				this.endTime = CoreSystem.Utils.getDateTimeNow(MApplication.getInstance().timezoneName);

				TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostStopCall);
				timer.Invalidate ();
				this.lbTitle.Text = ((TCLocalizabled.getText("TextTitleConsultationRef") + (this.durationInfo.ReferenceNo == null ? "N/A" : this.durationInfo.ReferenceNo)).ToUpper ());
			});
		}

		public void updateFollowUp (object followInfo)
		{
			this.InvokeOnMainThread (delegate {
				this.followUpInfo = (FollowUpInfo)followInfo;
				updateFinishInfo ();
				if (this.totalTime > this.freeTime) {
					setFavouriteStatus ();
					showActions ();
				}
			});
		}

		public void transferFile (object fileDto)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto document = (BookingDocumentDto)fileDto;
				addMoreFileToView (document);
			});
		}

		public void deleteFile (object fileDto)
		{
			this.InvokeOnMainThread (delegate {
				BookingDocumentDto document = (BookingDocumentDto)fileDto;
				deleteWithDocument(document);
			});
		}

		#endregion

		#region IBAction

		partial void backClicked (NSObject sender)
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostStopCall);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostFolloUp);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostUploadFileSuccess);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostDeleteFileSuccess);

			if (this.foregroundObserver != null) {
				NSNotificationCenter.DefaultCenter.RemoveObserver (this.foregroundObserver);
			}

			this.dissmissView ();
		}

		partial void uploadPhoto (NSObject sender)
		{
			TCImageSource imageSource = new TCImageSource (this);
			imageSource.pDelegate = this;
			imageSource.open ();
		}

		partial void emailClicked (NSObject sender)
		{
			TCEmailProfileComponent emailProfileComp = new TCEmailProfileComponent(this);
			emailProfileComp.Delegate = this;
			emailProfileComp.build(this.followUpInfo.SpecialistId);
		}

		partial void favoriteClicked (NSObject sender)
		{
			TCFavouriteHelper favouriteHandler = new TCFavouriteHelper (this);
			favouriteHandler.specialistId = this.followUpInfo.SpecialistId;
			favouriteHandler.Delegate = this;
			favouriteHandler.favourite (this.followUpInfo.IsFavourite);
		}

		partial void feedbackClicked (NSObject sender)
		{
			if (this.isFeedbacked) {
				#if DEBUG
				Console.Out.WriteLine ("Show info feedback .....");
				#endif

				TCFeedbackInfoView feedbackInfoView = TCFeedbackInfoView.Create ();
				feedbackInfoView.setInfo (this.numRating, this.feedback);

				TCAlertViewController alertView = new TCAlertViewController (this, ALERT_TYPE.CUSTOM, TCLocalizabled.getText ("TitleFeedback"), "", feedbackInfoView, null, TCLocalizabled.getText ("OkTitle"));
				alertView.display ();
			} else {
				TCSendFeedbackComponent feedbackHelper = new TCSendFeedbackComponent (this);
				feedbackHelper.Delegate = this;
				feedbackHelper.build (this.followUpInfo.SpecialistId, this.followUpInfo.CallId);
			}
		}

		partial void replayClicked (NSObject sender)
		{
			if (this.followUpInfo.RecordUrl == null) {
				MUtils.showNotExistsTalkReplay (this);
			} else {
				TCReplayViewController replayVC = new TCReplayViewController ();
				replayVC.recordUrl = this.followUpInfo.RecordUrl;
				this.PresentModalViewController (replayVC, true);
			}
		}

		partial void transcribeClicked (NSObject sender)
		{
			if (this.followUpInfo.RecordUrl == null) {
				MUtils.showRequestFail (this);
			} else {
				TCTranscriptHelper transcriptHelper = new TCTranscriptHelper (this);
				transcriptHelper.Delegate = this;
				transcriptHelper.transcript (this.followUpInfo.CallId, MUtils.getURLFromServer(this.followUpInfo.RecordUrl));
			}
		}

		partial void waiveFeeClicked (NSObject sender)
		{
			if (this.endTime.AddMinutes (CoreSystem.Constants.pTimeWaiveFee) >= CoreSystem.Utils.getDateTimeNow (MApplication.getInstance ().timezoneName)) {
				TCAlertViewController waiveAlert = new TCAlertViewController(this, TCLocalizabled.getText("TextAlertTitleWaiveFee"), TCLocalizabled.getText("TextAlertMessageConfirmWaiveFee"), null, TCLocalizabled.getText("NoTitle"), TCLocalizabled.getText("YesTitle"));
				waiveAlert.Delegate = this;
				waiveAlert.display();
			} else {
				MUtils.showWaiveFeeTimeExpired(this);
				disableWaiveFee();
			}
		}

		#endregion

		private void forwardPashBooking ()
		{
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostFolloUp);

			this.loadingView.show ();
			TCProfileSpecialistHelper profileHelper = new TCProfileSpecialistHelper (this);
			profileHelper.Delegate = this;
			profileHelper.getProfile (this.followUpInfo.SpecialistId);
		}

		private void showActions ()
		{
			if (MApplication.getInstance ().isConsultant) {
				this.viewActionSpecialist.Hidden = false;
				decorateButtonExpert ();
			} else {
				this.viewActionCustomer.Hidden = false;
				decorateButtonCustomer ();
			}
		}

		public void loadInfoDuration (DurationInfo durationInfo)
		{
			this.minimumCost = double.Parse (durationInfo.MinimumCost, new CultureInfo ("en-us"));
			this.freeTime = int.Parse (durationInfo.FreeTime);
			this.costPerSeconds = this.costPerMinutes / 60;

			DateTime start = MUtils.stringToDateTime(durationInfo.startTime);
			this.startTime = start;
			DateTime current = MUtils.stringToDateTime(durationInfo.currentTimeServerSend);
			TimeSpan subTime = current - start;
		
			this.totalTime = subTime.Hours * 60 + subTime.Minutes * 60 + subTime.Seconds;

			showTime ();
			showCost ();
		}

		public void timerFired (NSTimer timer)
		{
			this.totalTime += 1;

			showTime ();
			showCost ();
		}

		// Display cost consultant
		private void showCost ()
		{
			double tempCost = this.costPerSeconds * this.totalTime;

			if (this.totalTime > this.freeTime) {
				if (tempCost > this.minimumCost) {
					currentCost = tempCost;
				} else {
					currentCost = this.minimumCost;
				}
			} else {
				currentCost = 0;
			}
				
			this.lbCost.Text = "$" + MUtils.getCost (MUtils.round2Digit (currentCost));
		}
			
		// Display time duration
		private void showTime ()
		{
			string strTotalTime = TimeSpan.FromSeconds (this.totalTime).ToString ();
			this.lbHours.Text = strTotalTime;
		}

		private void sendUploadPhotoRequest (UIImage imageUpload, string name)
		{
			loadingView.show ();
			TCSendPhotoHelper photoHelper = new TCSendPhotoHelper (this);
			photoHelper.Delegate = this;
			photoHelper.sendPhoto (true, this.durationInfo.BookingId, imageUpload, name);
		}

		private void showAlertNoGetData ()
		{
			MUtils.showAlertNoGetData (this);
		}

		private void setFavouriteStatus ()
		{
			if (this.followUpInfo.IsFavourite) {
				this.btnFavorite.SetImage (UIImage.FromBundle ("followUp_favorite_active"), UIControlState.Normal);
			} else {
				this.btnFavorite.SetImage (UIImage.FromBundle ("followUp_favorite"), UIControlState.Normal);
			}
		}

		private void deleteWithDocument(BookingDocumentDto document)
		{
			if (document.BookingId == this.durationInfo.BookingId) {
				BookingDocumentDto documentDto = null;

				if (this.finalDocument != null) {
					documentDto = this.finalDocument.Find (x => x.Id == document.Id) as BookingDocumentDto;
				}

				if (documentDto != null) {
					this.finalDocument.Remove (documentDto);
				}

				object[] result = addFileHelper.displayFiles (this.durationInfo.BookingId, this.finalDocument, null, this.viewFiles);
				tweakFrameModifyDocument (result);
			}
		}

		#region TCTranscriptHelperDelegate

		public void transcriptSuccess (TCTranscriptHelper helper)
		{
			MUtils.showRequestSuccess (this);
			//disableTranscript ();
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

		#region TCUpdateWaiveFeeHelperDelegate

		public void updateWaiveFeeSuccess (TCUpdateWaiveFeeHelper helper)
		{
			MUtils.showRequestSuccess (this);
			disableWaiveFee ();
			this.lbWarningWaiveFee.Hidden = false;
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

		#region TCFavoriteHelperDelegate

		public void actionFavoriteSuccess (TCFavouriteHelper helper, string message)
		{
			this.followUpInfo.IsFavourite = !this.followUpInfo.IsFavourite;
			setFavouriteStatus ();
			MUtils.showAlert (this, TCLocalizabled.getText ("TitleAlertFavorite"), String.Format (message, this.durationInfo.UserFullName));
		}

		public void actionFavoriteFail (TCFavouriteHelper helper, string message)
		{
			MUtils.showAlert (this, TCLocalizabled.getText ("TitleAlertFavorite"), message);
		}

		public void beginFavoriteRequest (TCFavouriteHelper helper)
		{
			this.loadingView.show ();
		}

		public void afterFavoriteRequest (TCFavouriteHelper helper)
		{
			this.loadingView.dismiss ();
		}

		#endregion


		#region TCSendFeedbackComponentDelegate

		public void beginSendRequestFeedback ()
		{
			this.loadingView.show ();
		}

		public void sendFeedbackResult (bool isSuccess, string title, string message, int numRate, string feedback)
		{
			this.loadingView.dismiss ();
			if (isSuccess) {
				this.isFeedbacked = true;
				this.feedback = feedback;
				this.numRating = numRate;
			}

			MUtils.showAlert (this, title, message);
		}

		#endregion

		#region TCEmailProfileComponentDelegate
		public void emailProfileComponentSuccess (TCEmailProfileComponent sender, string title, string message)
		{
			MUtils.showAlert (this, title, message);
		}

		public void emailProfileComponentFailure (TCEmailProfileComponent sender, string title, string message)
		{
			MUtils.showAlert (this, title, message);
		}

		public void beginSendEmailProfileRequest (TCEmailProfileComponent sender)
		{
			this.loadingView.show ();
		}

		public void finishSendEmailProfileRequest (TCEmailProfileComponent sender)
		{
			this.loadingView.dismiss ();
		}
		#endregion

		#region TCImageSourceDelegate

		public void didLoadImageFinish (UIImage image, string name)
		{
			sendUploadPhotoRequest (image, name);
		}

		#endregion

		#region TCProfileSpecialistHelperDelegate

		public void getProfileSuccess (TCProfileSpecialistHelper helper, SpecialistProfileInfos info)
		{
			//this.specialistInfo = info;
			TCBookingHelper bookingHelper = new TCBookingHelper (this);
			bookingHelper.Delegate = this;
			bookingHelper.getBookingInfo (this.followUpInfo.BookingId);
		}

		public void getProfileFail (TCProfileSpecialistHelper helper)
		{
			this.loadingView.dismiss ();
			showAlertNoGetData ();
		}

		#endregion

		#region TCBookingHelperDelegate

		public void getBookingSuccess (TCBookingHelper helper, BookingInfo info)
		{
			this.loadingView.dismiss ();

			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostStopCall);
			TCNotificationCenter.defaultCenter.removeObserver (this, CoreSystem.Constants.kPostFolloUp);

			TCConsultationPastViewController pastDetailVC = new TCConsultationPastViewController ();
			pastDetailVC.iCallId = this.followUpInfo.CallId;
			//pastDetailVC.specialistInfo = this.specialistInfo;
			pastDetailVC.bookingInfo = info;

			this.dissmissView ();

			UINavigationController rootNavigationVC = (UINavigationController)UIApplication.SharedApplication.Delegate.GetWindow ().RootViewController;
			rootNavigationVC.PushViewController (pastDetailVC, true);
		}

		public void getBookingFail (TCBookingHelper helper)
		{
			this.loadingView.dismiss ();
			showAlertNoGetData ();
		}

		#endregion

		#region TCSendPhotoHelperDelegate

		public void sendPhotoResult (TCSendPhotoHelper helper, PhotoDTO photoDto, string title, string message)
		{
			loadingView.dismiss ();
		
			if (photoDto.status) {
				addMoreFileToView (photoDto.bookingDocument);
			} else {
				MUtils.showAlert (this, title, message);
			}
		}

		#endregion

		#region TCAlertViewControllerDelegate

		public void alertOkClicked (TCAlertViewController alert)
		{
			TCUpdateWaiveFeeHelper waiveFeeHelper = new TCUpdateWaiveFeeHelper (this);
			waiveFeeHelper.Delegate = this;
			waiveFeeHelper.update (this.followUpInfo.BookingId);
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion

		#region TCFileManagerHelperDelegate

		public void beginActionWithFile(TCFileManagerHelper helper)
		{
			this.loadingView.show ();
		}

		public void finishActionWithFile(TCFileManagerHelper helper)
		{
			this.loadingView.dismiss ();
		}

		public void actionFileSuccess(TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document)
		{
			deleteWithDocument (document);
		}

		public void actionFileFail(TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document)
		{
			MUtils.showAlert (this, TCLocalizabled.getText("TitleAlertDeleteFile"), String.Format(TCLocalizabled.getText("MessageAlertDeleteFile"), document.OriginalFileName));
		}
			
		#endregion

		private void addMoreFileToView (BookingDocumentDto file)
		{
			if (file.BookingId == this.durationInfo.BookingId) {
				this.lineFiles.Hidden = false;
				object[] result = addFileHelper.displayFiles (this.durationInfo.BookingId, this.finalDocument, file, this.viewFiles);

				tweakFrameModifyDocument (result);
				this.scrollView.ScrollRectToVisible (this.viewFiles.Frame, true);
			}
		}

		private void tweakFrameModifyDocument(object[] result)
		{
			this.finalDocument = (List<BookingDocumentDto>)result [0];
			this.viewFiles.Frame = new CGRect (this.viewFiles.Frame.X, this.viewFiles.Frame.Y, this.viewFiles.Frame.Width, (float)result [1]);
			setContentSizeForScroll ();
		}
	
	}
}

