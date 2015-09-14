using System;
using RestSharp;
using System.Collections;
using System.Collections.Generic;
using System.IO;

namespace CoreSystem
{
	[CLSCompliant (false)]
	public class TCHttpRequest
	{
		public  Action<String> responseSuccessful;
		public  Action<String> responseFailure;
		private String url;
		private RestClient restClient;
		private RestRequest restRequest;
		private RestRequestAsyncHandle restRequestAsyncHandle;

		public TCHttpRequest (String httpService)
		{
			this.url = HttpConstants.BASE_URL + httpService;
		}

		public void sendPostRequest (JsonObject parameters, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			if (prepare (false, Method.POST, this.url, parameters)) {
				this.responseSuccessful = responseSuccessful;
				this.responseFailure = responseFailure;

				send ();
			}
		}

		public void sendGetRequest (JsonObject parameters, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			if (prepare (false, Method.GET, this.url, parameters)) {
				this.responseSuccessful = responseSuccessful;
				this.responseFailure = responseFailure;

				send ();
			}
		}

		public void sendFileRequest (JsonObject parameters, Action<String> responseSuccessful, Action<String> responseFailure)
		{
			if (prepare (false, Method.POST, this.url, parameters)) {
				prepareFile (false, Method.POST, this.url, parameters);
				this.responseSuccessful = responseSuccessful;
				this.responseFailure = responseFailure;

				send ();
			}

		}

		private bool prepareFile (bool isHTTPBasic, Method method, String url, JsonObject parameters)
		{
			bool status = true;

			if (MApplication.getInstance ().isNetworkDisconnected) {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kNetworkNotAvailable, null);
				return false;
			}

			this.restClient = new RestClient (url);
			this.restRequest = new RestRequest (method);
			this.restRequest.AddHeader ("ContentType", "multipart/form-data");
			this.restRequest.AddHeader ("Token", Utils.getAccessToken ());
			this.restRequest.RequestFormat = DataFormat.Json;
			if (parameters != null) {
				if (parameters.Keys.Contains (Constants.pUploadFile)) {
					foreach (var param in parameters) {
						if (!param.Key.Equals (Constants.pUploadFile))
							this.restRequest.AddParameter (param.Key, param.Value);
						else {
							HttpRequestFileMetadata fileMetadata = (HttpRequestFileMetadata)param.Value;
							byte[] bs = fileMetadata.data;
							string fileName = fileMetadata.name;

							if (fileMetadata.name == null) {
								fileName = Utils.RandomString (20);
							}

							this.restRequest.AddFile ("file", bs, fileName);
						}
					}
				} else {
					this.restRequest.AddBody (parameters);
				}
			}
			if (isHTTPBasic)
				this.restClient.Authenticator = new HttpBasicAuthenticator ("", "");

			return status;
		}

		public bool prepare (bool isHTTPBasic, Method method, String url, JsonObject parameters)
		{
			bool status = true;

			if (MApplication.getInstance ().isNetworkDisconnected) {
				TCNotificationCenter.defaultCenter.postNotification (Constants.kNetworkNotAvailable, null);
				return false;
			}

			this.restClient = new RestClient (url);
			this.restRequest = new RestRequest (method);
			this.restRequest.AddHeader ("ContentType", "application/json");
			this.restRequest.AddHeader ("Token", Utils.getAccessToken ());
			this.restRequest.RequestFormat = DataFormat.Json;
			if (parameters != null) {
				if (parameters.Keys.Contains (Constants.pUploadFile)) {
					foreach (var param in parameters) {
						if (!param.Key.Equals (Constants.pUploadFile))
							this.restRequest.AddParameter (param.Key, param.Value);
						else {
							HttpRequestFileMetadata fileMetadata = (HttpRequestFileMetadata)param.Value;
							byte[] bs = fileMetadata.data;
							string fileName = fileMetadata.name;
							this.restRequest.AddFile ("file", bs, fileName);
						}
					}
				} else {
					this.restRequest.AddBody (parameters);
				}
			}
			if (isHTTPBasic)
				this.restClient.Authenticator = new HttpBasicAuthenticator ("", "");

			return status;
		}

		public void cancel ()
		{
			this.restRequestAsyncHandle.Abort ();
		}

		public void send ()
		{
			try {
				this.restRequestAsyncHandle = this.restClient.ExecuteAsync (this.restRequest, response => {
				
					#if DEBUG
					Console.Out.WriteLine (response.ResponseStatus.ToString ().ToUpper () + " : " + this.restClient.BaseUrl);
					Console.Out.WriteLine("Respone content" +response.Content);
					#endif

					if (response.ResponseStatus == ResponseStatus.Completed) {
						if (this.responseSuccessful != null) {
							this.responseSuccessful (response.Content);
						}
					} else if (response.ResponseStatus != ResponseStatus.Aborted) { 
						if (this.responseFailure != null) {
							this.responseFailure (response.Content);
						}
					}

					if (MApplication.getInstance ().isLogedIn) {
						TCRequestManager.getInstance ().remove (this.restRequestAsyncHandle);
					}
				});

				TCRequestManager.getInstance ().add (this.restRequestAsyncHandle);
			} catch (Exception ex) {
				#if DEBUG
				Console.Write (ex.Message);
				#endif
				if (this.responseFailure != null)
					this.responseFailure (null);
			}
		}
	}

	[CLSCompliant (false)]
	public class TCRequestManager
	{
		static TCRequestManager instance;
		private List<RestRequestAsyncHandle> httpRequests;

		public TCRequestManager ()
		{
			this.httpRequests = new List<RestRequestAsyncHandle> ();
		}

		public static TCRequestManager getInstance ()
		{
			if (instance == null) {
				instance = new TCRequestManager ();
			}

			return instance;
		}

		public void add (RestRequestAsyncHandle requestHandle)
		{
			this.httpRequests.Add (requestHandle);
		}

		public void remove (RestRequestAsyncHandle requestHandle)
		{
			this.httpRequests.Remove (requestHandle);
		}

		public void abortAll ()
		{
			foreach (RestRequestAsyncHandle requestHandle in this.httpRequests) {
				if (requestHandle != null) {
					try {
						requestHandle.Abort ();
					} catch (Exception ex) {
						#if DEBUG
						Console.Out.WriteLine ("ABORT_ERROR : " + ex.Message);
						#endif
					}

				}
			}

			this.httpRequests.Clear ();
		}
	}

	[CLSCompliant (false)]
	public class HttpRequestFileMetadata
	{
		public static String kHttpRequestJPEGContentType = "image/jpeg";
		public static String kHttpRequestPNGContentType = "image/png";
		public static String kHttpRequestStreamContentType = "application/octet-stream";

		public byte[] data { get; set; }

		public String name { get; set; }

		public String contentType { get; set; }

		public HttpRequestFileMetadata (byte[] pData, String pFileName, String pContentType)
		{
			this.data = pData;
			this.name = pFileName;
			this.contentType = pContentType;
		}

		public HttpRequestFileMetadata (byte[] pData, String pFileName)
		{
			this.data = pData;
			this.name = pFileName;
			this.contentType = kHttpRequestPNGContentType;
		}

		public HttpRequestFileMetadata (byte[] pData)
		{
			this.data = pData;
			this.name = @"Default.png";
			this.contentType = kHttpRequestPNGContentType;
		}

	}
}

