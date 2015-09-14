using System;
using Foundation;
using UIKit;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	[Register ("TCDatetimePicker")]
	public partial class TCDatetimePicker : UIView
	{
		public static readonly UINib Nib;
		public TCDatetimePickerDelegate Delegate;

		static TCDatetimePicker ()
		{
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone)
				Nib = UINib.FromName ("TCDatetimePicker_iPhone", NSBundle.MainBundle);
			else {
				Nib = UINib.FromName ("TCDatetimePicker_iPhone", NSBundle.MainBundle);
			}
		}
		public TCDatetimePicker (IntPtr p) : base(p)
		{

		}

		public static TCDatetimePicker Create ()
		{
			return (TCDatetimePicker)Nib.Instantiate (null, null) [0];
		}
			
		public override void LayoutSubviews ()
		{
			base.LayoutSubviews ();
			this.viewDatePicker.Layer.CornerRadius = 5;
			this.viewDatePicker.Layer.MasksToBounds = true;
			this.viewDatePicker.Center = this.Center;

			this.timePicker.Locale = NSLocale.FromLocaleIdentifier ("en_us");
			this.datePicker.Locale = NSLocale.FromLocaleIdentifier ("en_GB");
		}

		public void buildDatePicker(string dateTitle, string timeTitle)
		{
			this.lbTitleDatePicker.Text = dateTitle != null ? dateTitle : "";
			this.lbTitleTimePicker.Text = timeTitle != null ? timeTitle : "";
		}

		public void setDateTime (NSDate date)
		{
			this.datePicker.SetDate (date, false);
			this.timePicker.SetDate (date, false);

			DateTime dtNow = CoreSystem.Utils.getDateTimeNow (MApplication.getInstance().timezoneName);

			this.datePicker.MinimumDate = MUtils.DateTimeToNSDate (dtNow);
		}

		public void setMinimumDateTime (DateTime date, DateTime time)
		{

		}

		public void showInView(UIView view)
		{
			this.Frame = view.Frame;
			view.AddSubview (this);
		}
			
		public void hide()
		{
			this.RemoveFromSuperview ();
		}

		partial void cancelClicked (NSObject sender)
		{
			if (Delegate != null)
				Delegate.cancelClicked();
		}

		partial void doneClicked (NSObject sender)
		{
			if (Delegate != null) {
				string date = MUtils.nsDateToString (this.datePicker.Date, MUtils.kFormatDate);
				string time = MUtils.nsDateToString (this.timePicker.Date, MUtils.kFormatNSTime);
				Delegate.doneClicked(date, time);
			}
		}
	}

	public interface TCDatetimePickerDelegate
	{
		void doneClicked (string date, string time);
		void cancelClicked();
	}
}

