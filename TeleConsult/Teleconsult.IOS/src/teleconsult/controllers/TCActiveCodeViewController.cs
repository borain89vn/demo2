
using System;
using System.Drawing;

using Foundation;
using UIKit;
using System.Collections.Generic;
using Newtonsoft.Json;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCActiveCodeViewController : TCCommonTemplateViewController, TCAlertViewControllerDelegate
	{

		private TCAlertViewController alertVC;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCActiveCodeViewController (IntPtr handle) : base (handle)
		{
		}

		public TCActiveCodeViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCActiveCodeViewController_iPhone" : "TCActiveCodeViewController_iPhone", null)
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
			NSNotificationCenter.DefaultCenter.AddObserver (UITextField.TextFieldTextDidChangeNotification, TextChangedEvent);

			loadingView = new TCLoadingOverlay (this, false, false);
			loadingView.build ();

			MUtils.disableButton (this.btnActive);
			decorateUI ();
		}

		public override void createNavigationBar ()
		{
			TCNavigationBar tcNavi = TCNavigationBar.DefaultBar (this);
			tcNavi.build (true, TCLocalizabled.getText("TitleScreenActiveAccount") , true);
		}

		private void TextChangedEvent (NSNotification notification)
		{
			if (this.tfCode.Text.Length > 0 ) {
				MUtils.enableButton (this.btnActive);
			} else {
				MUtils.disableButton (this.btnActive);
			}
		}

		private void decorateUI()
		{
			this.viewCode.Layer.CornerRadius = 4;
			this.viewCode.Layer.BorderWidth = 1;
			this.viewCode.Layer.BorderColor = TCTheme.getInstance.getThemeColor(Theme.BorderControl).CGColor;
			this.viewCode.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundUsername);
		}

		#region IBAction
		partial void dismissKeyboard (NSObject sender)
		{
			this.tfCode.ResignFirstResponder();
		}
			
		partial void activeClicked (NSObject sender)
		{
			this.loadingView.show();
			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif
				this.InvokeOnMainThread (delegate {
					bool status = CoreSystem.ParseDataHelper.parseResponseActiveCode (response);
					if(status) {
						alertVC = new TCAlertViewController (this, TCLocalizabled.getText("TextAlertActiveCode"), TCLocalizabled.getText("TextMessageActiveSuccess"), null, null, TCLocalizabled.getText ("OkTitle"));
						alertVC.Delegate = this;
						alertVC.display ();
					} else {
						TCAlertViewController alert = new TCAlertViewController (this, TCLocalizabled.getText("TextAlertActiveCode"), TCLocalizabled.getText("TextMessageWrongCode"), null, null, TCLocalizabled.getText ("OkTitle"));
						alert.display ();
					}

					this.loadingView.dismiss();
				});
			});

			Action<string> failure = (response => {
				Console.WriteLine ("FAILURE");
				this.InvokeOnMainThread (delegate {
					this.loadingView.dismiss ();
					MUtils.showNetworkFailed(this);
				});
			});

			DataHelperRequest.getInstance ().sendActiveAccountRequest (MApplication.getInstance().userId, this.tfCode.Text, successful, failure);
		}
		#endregion

		#region TCAlertViewControllerDelegate
		public void alertOkClicked (TCAlertViewController alert)
		{
			this.loadingView.show ();
			if (alert == this.alertVC) {
				this.NavigationController.PopViewController (true);		
			}
		}

		public void alertCancelClicked (TCAlertViewController alert)
		{
		}
		#endregion
	}
}

