using System;
using Android.App;
using CoreSystem;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class DeleteFile
	{
		Activity _activity;
		public OnDeleteFileDelegate deleteFileAction { get; set; }

		public DeleteFile (Activity _activity)
		{
			this._activity = _activity;
		}

		public void onDeleteFile(bool isInConference, BookingDocumentDto document){
			deleteFileAction.onDeleteSending ();
			Action<String> successful = (response => {
				_activity.RunOnUiThread (() => {
					bool status = ParseDataHelper.parseResponseCommon(response);
					deleteFileAction.onDeleteSuccess(status, document);
				});				
			});

			Action<String> failure = (response => {
				_activity.RunOnUiThread (() => {
					deleteFileAction.onDeleteFail();
				});
			});

			_activity.RunOnUiThread (()=>{
				DataHelperRequest.getInstance ().deleteDocument(isInConference, document.BookingId, document.Id, successful, failure);
			});
		}
	}
}

