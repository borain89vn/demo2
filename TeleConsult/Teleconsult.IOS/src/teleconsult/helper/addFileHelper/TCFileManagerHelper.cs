using System;
using Foundation;
using UIKit;
using CoreGraphics;
using System.Collections.Generic;
using CoreSystem;

namespace Teleconsult.IOS
{
	public enum ACTION_FILE_TYPE {
		DELETE,
		ADD
	};

	[CLSCompliant (false)]
	public class TCFileManagerHelper : TCDeleteFileHelperDelegate
	{
		private UIViewController parentVC;
		private bool inConference;
		private bool hideNA;
		public TCFileManagerHelperDelegate Delegate { get; set; }

		public TCFileManagerHelper (UIViewController parentVC)
		{
			this.parentVC = parentVC;
			this.inConference = true;

			if (parentVC is TCFollowingUpViewController) {
				this.hideNA = true;
			}
		}

		public object[] displayFiles (Guid bookingId, List<BookingDocumentDto> oldFiles, BookingDocumentDto newFiles, UIView inView)
		{
			removeAllFile (inView);

			object[] info = new object[2];
			List<BookingDocumentDto> finalFiles = new List<BookingDocumentDto>();

			float X = 0;
			float Y = 0;
			float HeightFile = 0;
			float HeightControl = 21.0f;

			if ((oldFiles == null || oldFiles.Count == 0) && (newFiles == null || newFiles.OriginalFileName == null || newFiles.OriginalFileName.Equals(""))) {
				if (!this.hideNA) {
					UILabel lbNA = new UILabel ();
					lbNA.BackgroundColor = UIColor.Clear;
					lbNA.Frame = new CGRect (X, Y, 60.0f, HeightControl);
					lbNA.Text = "N/A";
					lbNA.Font = MUtils.getFontWithSize (false, 13.0f);
					lbNA.TextColor = UIColor.Black;
					HeightFile += HeightControl + 4.0f;
					inView.AddSubview (lbNA);
				}
			} else {

				if (oldFiles != null && oldFiles.Count > 0) {
					finalFiles = oldFiles;
				}

				if (newFiles != null && newFiles.OriginalFileName != null && !newFiles.OriginalFileName.Equals ("")) {
					finalFiles.Add (newFiles);
				}
					
				foreach (BookingDocumentDto file in finalFiles) {
					if (!file.OriginalFileName.Equals ("")) {

						string fileName = file.OriginalFileName;

						UIImageView imageAttachment = new UIImageView ();
						imageAttachment.Frame = new CGRect (X, Y + 4.0f,  13.0f, 13.0f);
						imageAttachment.Image = UIImage.FromBundle ("attachment_icon");

						UIButton btnNameFile = UIButton.FromType (UIButtonType.System);
						btnNameFile.HorizontalAlignment = UIControlContentHorizontalAlignment.Left;
						btnNameFile.TitleLabel.TextColor = UIColor.Black;
						btnNameFile.SetTitle (fileName, UIControlState.Normal);
						btnNameFile.TitleLabel.Font = MUtils.getFontWithSize(false, 13.0f);
						btnNameFile.Frame = new CGRect (imageAttachment.Frame.Width + 5.0f, Y, inView.Frame.Width - imageAttachment.Frame.Width - 35.0f, HeightControl);
						btnNameFile.AddTarget ((sender, args) => {
							showImage(file.S3FileName);
						}, UIControlEvent.TouchUpInside);

						btnNameFile.SetAttributedTitle (new NSAttributedString (
							btnNameFile.TitleLabel.Text, 
							underlineStyle: NSUnderlineStyle.Single), UIControlState.Normal);
							
						UIButton btnDelete = UIButton.FromType (UIButtonType.Custom);
						btnDelete.Frame = new CGRect (inView.Frame.Width - 25.0f, btnNameFile.Frame.Y, HeightControl, HeightControl);
						btnDelete.SetImage (UIImage.FromBundle("delete_icon"), UIControlState.Normal);
						btnDelete.AddTarget ((sender, args) => {
							deleteDocument(this.inConference, file);
						}, UIControlEvent.TouchUpInside);
							
						inView.AddSubview (imageAttachment);
						inView.AddSubview (btnNameFile);
						inView.AddSubview (btnDelete);

						Y += HeightControl;
						HeightFile += HeightControl ;
					}
				}
			}

			info [0] = finalFiles;
			info [1] = HeightFile;

			return info;
		}

		private void deleteDocument (bool inConference, BookingDocumentDto documentDelete)
		{
			#if DEBUG
			Console.Out.WriteLine("Deleting File : " + documentDelete.OriginalFileName);
			#endif

			TCDeleteFileHelper deleteFileHelper = new TCDeleteFileHelper (this.parentVC);
			deleteFileHelper.Delegate = this;
			deleteFileHelper.delete (inConference, documentDelete);
		}

		private void showImage (string url)
		{
			TCFileManager fileManager = TCFileManager.Create ();
			fileManager.showFile (url);
			fileManager.parentController = this.parentVC;
			if (this.parentVC.NavigationController != null) {
				fileManager.Frame = this.parentVC.NavigationController.View.Frame;
				fileManager.Center = this.parentVC.NavigationController.View.Center;
				this.parentVC.NavigationController.View.AddSubview (fileManager);
			} else {
				fileManager.Frame = this.parentVC.View.Frame;
				fileManager.Center = this.parentVC.View.Center;
				this.parentVC.View.AddSubview (fileManager);
			}
		}

		private void removeAllFile(UIView view)
		{
			if (view!= null) {
				foreach (UIView subview in view.Subviews) {
					subview.RemoveFromSuperview ();
				}
			}
		}

		#region TCDeleteFileHelperDelegate

		public void deleteFileSuccess (TCDeleteFileHelper helper, BookingDocumentDto document)
		{
			if (this.Delegate != null) {
				this.Delegate.actionFileSuccess (this, ACTION_FILE_TYPE.DELETE, document);
			}
		}

		public void deleteFileFail (TCDeleteFileHelper helper, BookingDocumentDto document)
		{
			if (this.Delegate != null) {
				this.Delegate.actionFileFail (this, ACTION_FILE_TYPE.DELETE, document);
			}
		}

		public void beginDeleteFileRequest (TCDeleteFileHelper helper)
		{
			if (this.Delegate != null) {
				this.Delegate.beginActionWithFile (this);
			}
		}

		public void finishDeleteFileRequest (TCDeleteFileHelper helper)
		{
			if (this.Delegate != null) {
				this.Delegate.finishActionWithFile (this);
			}
		}
			
		#endregion
	}

	[CLSCompliant (false)]
	public interface TCFileManagerHelperDelegate
	{
		void beginActionWithFile(TCFileManagerHelper helper);
		void finishActionWithFile(TCFileManagerHelper helper);
		void actionFileSuccess(TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document);
		void actionFileFail(TCFileManagerHelper helper, ACTION_FILE_TYPE type, BookingDocumentDto document);
	}
}

