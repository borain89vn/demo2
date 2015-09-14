using System;
using UIKit;
using Foundation;
using CoreGraphics;

namespace Teleconsult.IOS
{

	public enum ALERT_TYPE{
		DEFAULT,
		CUSTOM
	};

	public enum ALERT_SHOW_TYPE{
		ONLY,
		ALL
	};

	[CLSCompliant (false)]
	public class TCAlertViewController : NSObject
	{
		public TCAlertViewControllerDelegate Delegate { get; set; } 
		private UIViewController parentController;
		private ALERT_TYPE alertType;
		private string title;
		private string message;
		private string cancelButtonTitle;
		private string okButtonTitle;
		private UIAlertController alert8;
		private UIAlertView alert7;
		private UIView customView;

		public TCAlertViewController (UIViewController parentController, ALERT_TYPE type, string title, string message, UIView customView, string cancelButtonTitle, string okButtonTitle)
		{
			this.parentController = parentController;
			this.alertType = type;
			this.title = title;
			this.message = message == null ? "" : message;
			this.cancelButtonTitle = cancelButtonTitle;
			this.okButtonTitle = okButtonTitle;
			this.customView = customView;

			createUI ();
		}

		public TCAlertViewController (UIViewController parentController, string title, string message, UIView customView, string cancelButtonTitle, string okButtonTitle)
		{
			this.parentController = parentController;
			this.alertType = ALERT_TYPE.DEFAULT;
			this.title = title;
			this.message = message == null ? "" : message;
			this.cancelButtonTitle = cancelButtonTitle;
			this.okButtonTitle = okButtonTitle;
			this.customView = customView;

			createUI ();
		}

		private void createUI ()
		{
			Version version = new Version (UIDevice.CurrentDevice.SystemVersion);
		
			if (this.alertType == ALERT_TYPE.DEFAULT || version < new Version (8, 0)) {
				this.alert7 = new UIAlertView (this.title, this.message, null, this.cancelButtonTitle, new string[] { this.okButtonTitle });
				this.alert7.Clicked += (object sender, UIButtonEventArgs e) => {
					if (e.ButtonIndex == 0) { // cancel clicked
						if (this.cancelButtonTitle == null) {
							okClicked (this);
						} else {
							cancelClicked (this);
						}
					} else if (e.ButtonIndex == 1) { // okClicked
						okClicked (this);
					}
				};
				if (this.customView != null)
					this.alert7.SetValueForKey (this.customView, new NSString ("accessoryView"));
			} else {
				if (this.customView != null) {
					string tMessage = "";
		
					CGSize size = CGSize.Empty;
					if (customView is TCMessageView) {
						size = MUtils.getSizeText (this.customView.ToString (), MUtils.getFontWithSize (false, 14.0f), this.customView.Frame.Width);
					} else {
						size = this.customView.Frame.Size;
					}
					CGSize sizeAText = MUtils.getSizeWithALineText (MUtils.getFontWithSize (false, 14.0f));
					for (int i = 0; i < size.Height / sizeAText.Height ; i++) {
						tMessage += "\r";
					}

					this.message = tMessage + message;
					CGSize sizeATitle = MUtils.getSizeText (this.title, MUtils.getFontWithSize (true, 16.0f), 220);
					this.alert8 = UIAlertController.Create (this.title, this.message, UIAlertControllerStyle.Alert);
					nfloat heighTitle = sizeATitle.Height > 30.0f ? sizeATitle.Height * 2 : sizeATitle.Height * 3;
					this.customView.Frame = new CGRect (10.0f, heighTitle, this.customView.Frame.Width, this.customView.Frame.Height);
					this.alert8.View.AddSubview (this.customView);
				} else {
					this.alert8 = UIAlertController.Create (this.title, this.message, UIAlertControllerStyle.Alert);
				}

				if (this.cancelButtonTitle != null && !this.cancelButtonTitle.Equals ("")) {
					UIAlertAction cancelAction = UIAlertAction.Create (this.cancelButtonTitle, UIAlertActionStyle.Cancel, cancelClicked);
					this.alert8.AddAction (cancelAction);
				}

				if (this.okButtonTitle != null && !this.okButtonTitle.Equals ("")) {
					UIAlertAction okAction = UIAlertAction.Create (this.okButtonTitle, UIAlertActionStyle.Default, okClicked);
					this.alert8.AddAction (okAction);
				}
			}
		}

		public void display ()
		{
			display (ALERT_SHOW_TYPE.ALL);
		}

		public void display (ALERT_SHOW_TYPE showType)
		{
			if (showType == ALERT_SHOW_TYPE.ONLY) {
				TCAlertManager.getInstance ().dismissAll ();
			}
		
			if (alert7 != null) {
				this.alert7.Show ();
			} else if (alert8 != null && this.parentController != null) {
				this.parentController.PresentViewController (alert8, true, null);
			}

			TCAlertManager.getInstance ().push (this);
		}

		public void dismiss()
		{
			if (this.alert7 != null) {
				this.alert7.DismissWithClickedButtonIndex (0, false);
			} else if (this.alert8 != null) {
				alert8.DismissViewController (false, null);
			}
		}

		private void cancelClicked (UIAlertAction action)
		{
			TCAlertManager.getInstance ().pop (this);
			if (this.Delegate != null) {
				this.Delegate.alertCancelClicked (this);
			}
		}

		private void okClicked (UIAlertAction action)
		{
			TCAlertManager.getInstance ().pop (this);
			if (this.Delegate != null) {
				this.Delegate.alertOkClicked (this);
			}
		}

		private void cancelClicked (TCAlertViewController alert)
		{
			TCAlertManager.getInstance ().pop (this);
			if (this.Delegate != null) {
				this.Delegate.alertCancelClicked (alert);
			}
		}

		private void okClicked (TCAlertViewController alert)
		{
			TCAlertManager.getInstance ().pop (this);
			if (this.Delegate != null) {
				this.Delegate.alertOkClicked (alert);
			}
		}
	}

	[CLSCompliant (false)]
	public class TCAlertManager
	{
		static TCAlertManager instance;
		private NSMutableDictionary alerts;

		public TCAlertManager()
		{
			this.alerts = new NSMutableDictionary ();
		}

		public static TCAlertManager getInstance()
		{
			if (instance == null) {
				instance = new TCAlertManager ();
			}

			return instance;
		}

		public int getNumberAlertVisible()
		{
			#if DEBUG
			Console.Out.WriteLine ("NUM_ALERT : " + this.alerts.Count.ToString());
			#endif

			return int.Parse(this.alerts.Count.ToString());
		}

		public void push (TCAlertViewController alert)
		{
			this.alerts.SetValueForKey (alert, new NSString (alert.ToString()));
		}

		public void pop (TCAlertViewController alert) 
		{
			this.alerts.Remove (new NSString (alert.ToString()));
		}

		public void dismissAll ()
		{
			if (this.alerts.Keys.Length > 0) {
				foreach (NSString key in this.alerts.Keys) {
					if (this.alerts.ValueForKey (key) != null) {
						TCAlertViewController alertVC = (TCAlertViewController)this.alerts.ValueForKey (key);
						alertVC.dismiss ();
					}
				}
			}

			this.alerts.Clear ();
		}
	}

	[CLSCompliant (false)]
	public interface TCAlertViewControllerDelegate
	{
		void alertOkClicked (TCAlertViewController alert);
		void alertCancelClicked (TCAlertViewController alert);
	}

}

