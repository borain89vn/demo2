using System;
using Android.App;
using Android.Widget;
using System.Linq;
using System.Collections.Generic;
using CoreSystem;
using Android.Text;
using Android.Content;
using System.Globalization;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class DeferTalkNowUI : Dialog
	{
		Activity _activity;
		AlertDialog.Builder builder;
		Dialog dialog;
		public OnActionDeferDelegate actionDeferDelegate { set; get; }
		System.Timers.Timer timer;
		Guid _bookingId;
		DeferInfo _deferInfo;
		int iTotalSeconds = 0;

		public DeferTalkNowUI (Activity _activity) : base (_activity)
		{
			this._activity = _activity;
		}

		public void showPopupDefer(BookingInfo bookingInfo, DeferInfo deferInfo){
			var confirmDeferView = LayoutInflater.Inflate (Resource.Layout.popup_confirm_layout, null);
			var tvTitle = confirmDeferView.FindViewById<TextView> (Resource.Id.tv_title_confirm_popup);
			var tvConfirm = confirmDeferView.FindViewById<TextView> (Resource.Id.tv_info_popup);
			var btnConfirmDefer = confirmDeferView.FindViewById<Button> (Resource.Id.btn_confirm_tv_popup);
			var btnDecline = confirmDeferView.FindViewById<Button> (Resource.Id.btn_decline_tv_popup);

			tvConfirm.Gravity = global::Android.Views.GravityFlags.Left;
			tvTitle.SetText (Android.Resource.String.delayed_title);
			btnConfirmDefer.Text = "Accept";
			btnDecline.Text = "Decline";
			if (deferInfo.IsDefer) {
				string strMinute = ((double)bookingInfo.Deferral).ToString ("C0", new CultureInfo ("en-us")).Substring (1) + " minutes.";
				tvConfirm.TextFormatted = Html.FromHtml (String.Format (_activity.GetString (Resource.String.delay_minute_info), bookingInfo.SpecialistName, strMinute));
			} else {
				int iHours = (int)(bookingInfo.Deferral / 60);
				tvConfirm.TextFormatted = Html.FromHtml (String.Format (_activity.GetString (Resource.String.delay_day_info), bookingInfo.SpecialistName, iHours));
			}

			OnTimerSendCancelDefer (bookingInfo.Id, deferInfo, 0);

			btnConfirmDefer.Click += (sender, e) => {
				dialog.Dismiss();
				sendDeferTalkNow(bookingInfo, deferInfo);
				if(timer != null) {
					timer.Stop();
					timer = null;
				}
			};

			btnDecline.Click += (sender, e) => {
				dialog.Dismiss();
				sendCancelDeferTalkNow(bookingInfo.Id, deferInfo);
				if(timer != null) {
					timer.Stop();
					timer = null;
				}
			};

			builder = new AlertDialog.Builder (_activity);
			builder.SetInverseBackgroundForced (true);
			builder.SetView (confirmDeferView);
			dialog = builder.Create ();
			dialog.SetCanceledOnTouchOutside(false);
			dialog.Show ();
		}

		public void OnTimerSendCancelDefer(Guid bookingId, DeferInfo deferInfo, int iTotalTime){
			_bookingId = bookingId;
			_deferInfo = deferInfo;
			timer = new System.Timers.Timer();
			timer.Interval = 1000; 
			timer.Elapsed += OnTimedEvent;
			timer.Enabled = true;
			iTotalSeconds = iTotalTime;
		}

		private void OnTimedEvent(object sender, System.Timers.ElapsedEventArgs e)
		{
			iTotalSeconds ++;
			if (iTotalSeconds > 60) {
				if (timer != null) {
					timer.Stop ();
					timer = null;
					if (dialog != null) {
						dialog.Dismiss ();
					}
					sendCancelDeferTalkNow(_bookingId, _deferInfo);
				}
			}
		}

		public void sendDeferTalkNow(BookingInfo bookingInfo, DeferInfo deferInfo){
			actionDeferDelegate.onDeferSending ();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					DeferTalkNow deferTalkNowInfo = ParseDataHelper.parseDataDeferTalknow(response);
					if(deferTalkNowInfo != null) {
						actionDeferDelegate.onDeferSuccess(deferTalkNowInfo, false);
					} else {
						actionDeferDelegate.onDeferFail(_activity.GetString(Resource.String.accept_defer_title), _activity.GetString(Resource.String.request_fail));
					}
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDeferDelegate.onDeferFail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
				});
			});

			DataHelperRequest.getInstance ().sendAcceptTalkNowDeferRequest(bookingInfo.Id, deferInfo.IsDefer, successful, failure);
		}

		public void sendCancelDeferTalkNow(Guid bookingId, DeferInfo deferInfo){
			actionDeferDelegate.onDeferSending ();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					DeferTalkNow deferTalkNowInfo = ParseDataHelper.parseDataDeferTalknow(response);
					if(deferTalkNowInfo != null) {
						actionDeferDelegate.onDeferSuccess(deferTalkNowInfo, true);
					} else {
						actionDeferDelegate.onDeferFail(_activity.GetString(Resource.String.cancel_defer_title), _activity.GetString(Resource.String.request_fail));
					}
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionDeferDelegate.onDeferFail(_activity.GetString(Resource.String.title_notice), _activity.GetString(Resource.String.connection_fail));
				});
			});

			DataHelperRequest.getInstance ().sendCancelTalkNowDeferRequest(bookingId, deferInfo.IsDefer, successful, failure);
		}
	}
}

