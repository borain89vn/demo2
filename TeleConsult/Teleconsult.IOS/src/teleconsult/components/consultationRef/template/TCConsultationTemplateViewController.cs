
using System;
using System.Drawing;

using Foundation;
using UIKit;
using CoreSystem;
using ObjCRuntime;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCConsultationTemplateViewController : TCCommonTemplateViewController, TCAlertViewControllerDelegate
	{
		public UIViewController parentVC { get; set; }
		public BookingInfo bookingInfo { get; set; }

		public string description { get; set; }

		public DateTime startTime { get; set; }

		public DateTime endTime { get; set; }

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCConsultationTemplateViewController (IntPtr handle) : base (handle)
		{
		}

		public TCConsultationTemplateViewController (string nibName, NSBundle bundle) : base (nibName, bundle)
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
			if (this.RespondsToSelector (new Selector ("setAutomaticallyAdjustsScrollViewInsets:"))) {
				this.AutomaticallyAdjustsScrollViewInsets = false;
			}

			loadingView = new TCLoadingOverlay (this.NavigationController, true, false);
			loadingView.build ();

			decorateUI ();
			loadAvatar ();

			string fullname = "";
			if (MApplication.getInstance ().isConsultant) {
				fullname = bookingInfo.CustomerName;
			} else {
				fullname = bookingInfo.SpecialistName;
			}

			lbFullname.Text = fullname;

			if (this is TCConsultationPastViewController) {

			} else {
				string startDate = MUtils.stringDateToString (bookingInfo.StartTime, MUtils.kFormatDateTimeDefaultPlatform);
				string endDate = MUtils.stringDateToString (bookingInfo.EndTime, MUtils.kFormatDateTimeDefaultPlatform);

				string fee = "$" + MUtils.getCost (bookingInfo.RatePerMinute) + " per minute";

				if (!MApplication.getInstance ().isConsultant) {
					fee = "$" + MUtils.getCost (bookingInfo.CostPerMinute) + " per minute";
					fee += " ($" + MUtils.getCost (bookingInfo.CustomerMinCharge) + " minimum)";
				} else if (!bookingInfo.IsApplyNoMinimumCharge) {
					fee += " ($" + MUtils.getCost (bookingInfo.SpecialistMinCharge) + " minimum)";
				} 
					
				this.lbApplicableFee.Text = fee;

				if (bookingInfo.Type == (int)CoreSystem.Constants.TALKNOWTYPE.ASAP && bookingInfo.Status == (int)CoreSystem.Constants.STATUS.Requested) {
					this.lbProposedTime.Text = "Soonest possible time";
				} else {
					this.lbProposedTime.Text = startDate + " - " + endDate;

					DateTime sT = DateTime.Parse (bookingInfo.StartTime).Date;
					DateTime sE = DateTime.Parse (bookingInfo.EndTime).Date;

					if (sT == sE) {
						string hourEnd = MUtils.stringDateToString (bookingInfo.EndTime, MUtils.kFormatDefaultTime);
						this.lbProposedTime.Text = startDate + " - " + hourEnd;
					}
				}

				if (MApplication.getInstance ().isConsultant)
					this.lbTitleApplicableCost.Text = TCLocalizabled.getText ("TextTitleApplicableCostSpecialist");
				else {
					this.lbTitleApplicableCost.Text = TCLocalizabled.getText ("TextTitleApplicableCostCustomer");
				}
			}
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, true);
			tcNavi.showTitle ((TCLocalizabled.getText ("TextTitleConsultationRef") + (bookingInfo.ReferenceNo == null ? "N/A" : bookingInfo.ReferenceNo)).ToUpper ());
		}

		public virtual void decorateUI ()
		{
			if (this.viewAvatar != null) {
				this.viewAvatar.Layer.CornerRadius = this.viewAvatar.Frame.Height / 2;
				this.viewAvatar.Layer.MasksToBounds = true;
				this.viewAvatar.Layer.BorderWidth = 3;
				this.viewAvatar.Layer.BorderColor = TCTheme.getInstance.getThemeColor (Theme.CircleImage).CGColor;
			}
		}

		private void loadAvatar ()
		{
			string imagePath = "";

			if (MApplication.getInstance ().isConsultant) {
				imagePath = this.bookingInfo.CustomerAvatar;
			} else {
				imagePath = this.bookingInfo.SpecialistAvatar;
			}

			UIImage imageAvatar = TCAsyncImage.getInstance ().GetImageFromCache (imagePath);
			if (imageAvatar == null) {
				TCAsyncImage.getInstance ().BeginDownloadingAvatar (this, this.viewAvatar, this.acIndicator, imagePath, true);
			} else {
				this.acIndicator.Color = UIColor.Clear;
				this.viewAvatar.Image = imageAvatar;
			}
		}

		public void updateBookingStatusRequest (int status)
		{
			this.loadingView.show ();
				
			Action<string> successful = (response => {

				ResultDTO resultDTO = ParseDataHelper.parseDataUpdateBookingStatus (response);

				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					if (resultDTO != null) {
						if (resultDTO.status) {
							this.goBack ();
						} else {
							if (resultDTO.message != null) {
								TCAlertViewController alertVC = new TCAlertViewController(this, TCLocalizabled.getText("TitleAlert"), resultDTO.message, null, null, TCLocalizabled.getText("OkTitle"));
								alertVC.Delegate = this;
								alertVC.display();
							} else {
								MUtils.showRequestFail (this);
							}
						}
					} else {
						MUtils.showRequestFail (this);
					}
				});
			});

			Action<string> failure = (response => {
				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					MUtils.showNetworkFailed (this);
				});
			});

			DataHelperRequest.getInstance ().sendUpdateBookingStatus (bookingInfo.Id, status, successful, failure);
		}

		#region TCAlertViewControllerDelegate

		public virtual void alertOkClicked (TCAlertViewController alert)
		{

		}

		public virtual void alertCancelClicked (TCAlertViewController alert)
		{

		}

		#endregion
	}
}
