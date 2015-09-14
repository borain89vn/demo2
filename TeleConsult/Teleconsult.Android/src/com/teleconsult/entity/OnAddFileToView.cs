using System;
using Android.Widget;
using CoreSystem;
using Android.Content;
using Android.Views;
using Android.Graphics;
using System.Collections.Generic;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class OnAddFileToView : LinearLayout
	{
		Context _context;
		DeleteFile _deleteFile;
		bool _isInConference;

		public OnAddFileToView (Context context, DeleteFile deleteFile, bool isInConference) : base(context)
		{
			this._context = context;
			this._deleteFile = deleteFile;
			this._isInConference = isInConference;

			this.Orientation = Orientation.Vertical;
			this.SetVerticalGravity (GravityFlags.CenterVertical);
		}

		public void InitView(List<BookingDocumentDto> _bookingDocs) {
			this.RemoveAllViews ();
			int size = _bookingDocs.Count;
			for(int i = 0; i < size; i ++) {
				LinearLayout ll = new LinearLayout (_context);
				ll.Orientation = Orientation.Horizontal;
				ll.SetVerticalGravity (GravityFlags.CenterVertical);

				ImageView imgFile = new ImageView (_context);
				imgFile.SetImageResource (Resource.Drawable.ic_attach);

				var tvFileAttach = new TextView (_context) {
					Text = _bookingDocs[i].OriginalFileName
				};
				tvFileAttach.Id = i;
				tvFileAttach.SetTextColor (Color.Blue);
				tvFileAttach.PaintFlags = PaintFlags.UnderlineText;
				tvFileAttach.SetTypeface (null, TypefaceStyle.Bold);
				tvFileAttach.SetSingleLine (true);
				tvFileAttach.Ellipsize = global::Android.Text.TextUtils.TruncateAt.Middle;
				tvFileAttach.SetPadding (5, 0, 10, 0);
				LayoutParams param = new TableRow.LayoutParams(0, LayoutParams.WrapContent, 1f);
				tvFileAttach.LayoutParameters = param;
				tvFileAttach.Click += (sender, e) => {
					utilsAndroid.onViewFile(_context, _bookingDocs[tvFileAttach.Id].S3FileName);
				};

				ImageButton imgDelete = new ImageButton (_context);
				imgDelete.Id = i;
				imgDelete.SetImageResource (Resource.Drawable.ic_delete);
				imgDelete.SetMinimumWidth (50);
				imgDelete.SetMinimumHeight (50);
				imgDelete.SetBackgroundColor (Color.Transparent);
				imgDelete.Click += (sender, e) => {
					_deleteFile.onDeleteFile(_isInConference, _bookingDocs[imgDelete.Id]);
				};

				ll.AddView (imgFile);
				ll.AddView (tvFileAttach);
				ll.AddView (imgDelete);
				ll.SetPadding (0, 5, 0, 5);

				this.AddView (ll);
			}
		}
	}
}

