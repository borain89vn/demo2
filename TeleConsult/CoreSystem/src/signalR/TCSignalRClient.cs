using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Net.Http;
using Microsoft.AspNet.SignalR.Client;
using System.Threading;

namespace CoreSystem
{
	[CLSCompliant (false)]
	public class TCSignalRClient
	{
		public static int maxRetry = 2;
		public int numTimes = 1;
		private string url;
		private string accessToken;
		private bool isConnectedSignalR;


		private HubConnection hubConnection;
	
		public TCSignalRClient ()
		{
			this.url = CoreSystem.HttpConstants.BASE_URL;
		}

		private async Task RunHubConnectionAPI ()
		{
			var querystringData = new Dictionary<string, string> ();
			querystringData.Add ("auth-token", this.accessToken);

			// Connect to the server
			this.hubConnection = new HubConnection (url, querystringData);

			// Create a proxy to the 'CallTimerHub' SignalR Hub
			var callHubProxy = hubConnection.CreateHubProxy ("CallTimerHub");
			var followUpHubProxy = hubConnection.CreateHubProxy ("FollowUpActionHub");
			var notifyHubProxy = hubConnection.CreateHubProxy ("NotifyHub");

			// Receive data from server
			callHubProxy.On<DurationInfo> ("callDuration", durationInfo => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostCallDuration, durationInfo);
			});

			callHubProxy.On<BookingDocumentDto> ("uploadFileInConferenceSuccess", document  => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostUploadFileSuccess, document);
			});

			callHubProxy.On<Guid, Guid> ("deleteFileInConferenceSuccess", (bookingId, fileId)  => {
 				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostDeleteFileSuccess, new BookingDocumentDto(bookingId, fileId));
			});

			callHubProxy.On ("changeCssDialToPhone", () => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kUpdateTalkNowStep, null);
			});

			callHubProxy.On ("notifyBalanceCloseToExpiring", () => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyCloseBalance, null);
			});

			callHubProxy.On ("notifyBeforeEndConference", () => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyCloseBalanceCalling, null);
			});

			callHubProxy.On<string> ("stopCall", endTime => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostStopCall, endTime);
			});

			followUpHubProxy.On<FollowUpInfo> ("showPopupFollowUpAction", followUpInfo => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostFolloUp, followUpInfo);
			});
				
			followUpHubProxy.On<Guid, bool> ("showPopupTalkNowDeferOrReSchedule", (bookingId, isDefer) => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostDeferOrRescheduleTalkNow, new DeferInfo (bookingId, isDefer));
			});

			followUpHubProxy.On<string, string> ("showPopupNotifyInConference", (title, content) => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyDeclineConferrence, new MessageDTO (title, content));
			});

			notifyHubProxy.On ("reloadAlert", () => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifyAlertChange, null);
			});

			notifyHubProxy.On ("pushLogout", () => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPostNotifySignOut, null);
			});
		
			notifyHubProxy.On<int> ("pushAvailabilityStatus", status => {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kPushAvailabilityStatus, status);
			});

			this.hubConnection.StateChanged += connection_StateChanged;

			// Start the connection
			await this.hubConnection.Start ();
		}
			
		void connection_StateChanged (StateChange state)
		{
			#if DEBUG
			Console.WriteLine (state.NewState.ToString ());
			#endif

			if (state.NewState == ConnectionState.Connected) {
				this.numTimes = 1;
				this.isConnectedSignalR = true;
			} else if (state.NewState == ConnectionState.Disconnected) {
				if (this.isConnectedSignalR && MApplication.getInstance().isLogedIn) {
					this.isConnectedSignalR = false;
					start (this.accessToken);
				}
			}
		}

		private async Task RunAsync ()
		{
			try {
				await RunHubConnectionAPI ();
			} catch (Exception exception) {
				#if DEBUG 
				Console.Out.WriteLine (exception.Message);
				#endif

				retryConnectHub ();
			}
		}

		public void start (string accessToken)
		{
			this.accessToken = accessToken;
			this.RunAsync ();
		}

		public void stop ()
		{
			try {
				if (this.hubConnection != null && this.hubConnection.ConnectionId != null) {
					this.hubConnection.Stop ();
				}
			} catch (Exception ex) {
				Console.Out.WriteLine ("STOP : " + ex.Message);
			}
		}

		private void retryConnectHub ()
		{
			if (this.numTimes <= TCSignalRClient.maxRetry) {
				Thread.Sleep (5000);
				start (this.accessToken);

				this.numTimes++;
			}				
		}
	}

	public class DeferInfo
	{
		public Guid BookingId;
		public bool IsDefer;

		public DeferInfo (Guid BookingId, bool IsDefer)
		{
			this.BookingId = BookingId;
			this.IsDefer = IsDefer;
		}
	}

	public class FollowUpInfo
	{
		public Guid BookingId;
		public Guid CallId;
		public Guid SpecialistId;
		public Guid CustomertId;
		public bool IsFavourite;
		public string RecordUrl;
		public string Duration;
		public decimal Cost;
		public string FirstName;
		public string LastName;
		public string PostNominal;

		public FollowUpInfo ()
		{
		}
	}

	public class DurationInfo
	{
		public Guid BookingId;
		public string startTime;
		public string currentTimeServerSend;
		public string CostPerMinute;
		public string UserFirstName;
		public string UserLastName;
		public string AvatarPath;
		public string UserTitleGender;
		public string UserPostNominal;
		public string UserFullName;
		public string MinimumCost;
		public string FreeTime;
		public string ReferenceNo;

		public DurationInfo ()
		{
		}
	}

}