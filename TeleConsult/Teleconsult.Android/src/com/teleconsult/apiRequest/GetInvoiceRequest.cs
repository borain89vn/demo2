using System;
using Android.App;
using CoreSystem;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class GetInvoiceRequest
	{
		Activity _activity;
		public OnViewInvoiceDelegate viewInvoiceDelegate { set; get; }

		public GetInvoiceRequest (Activity _activity)
		{
			this._activity = _activity;
		}

		public void getInvoice(Guid bookingId){
			viewInvoiceDelegate.onSendingViewInvoice ();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					InvoiceDTO invoice = ParseDataHelper.parseResponseInvoice(response);
					if(invoice.status){
						viewInvoiceDelegate.onViewInvoiceSuccess(invoice);
					} else {
						viewInvoiceDelegate.onViewInvoiceFail();
						Toast.MakeText(_activity, "Invoice does not exist", ToastLength.Short).Show();
					}
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					viewInvoiceDelegate.onViewInvoiceFail();
					Toast.MakeText(_activity, _activity.GetString(Resource.String.connection_fail), ToastLength.Short).Show();
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().getInvoice(bookingId, successful, failure);
			});
		}
	}
}

