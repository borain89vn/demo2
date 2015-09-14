using System;
using UIKit;
using Foundation;
using System.Collections.Generic;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public class TCSortTableViewSource : UITableViewSource
	{
		public TCSortTable parentView { get; set; }
		public TCSortTableViewSource (TCSortTable parent)
		{
			this.parentView = parent;
		}
			
		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			var cell = (TCSortCell)tableView.DequeueReusableCell (TCSortCell.Key);
			if (cell == null) {
				cell = TCSortCell.Create ();
			}

			if (indexPath.Row == this.parentView.tempIndexPath.Row) {
				cell.check ();
			} else {
				cell.unCheck ();
			}

			NSDictionary dict = TCGlobals.getInstance.getSortTypes()[indexPath.Row];
			cell.data = dict;

			return cell;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return 45;
		}

		public override nint RowsInSection (UITableView tableView, nint section)
		{
			nint num = TCGlobals.getInstance.getSortTypes().Count;

			return num;
		}
			
		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			TCSortCell oldCell = (TCSortCell)tableView.CellAt (this.parentView.tempIndexPath);
			if (oldCell != null)
				oldCell.unCheck ();

			TCSortCell selectedCell = (TCSortCell)tableView.CellAt (indexPath);
			selectedCell.check ();
			tableView.DeselectRow(indexPath, false);
			if (this.parentView != null) {
				this.parentView.setTempIndex (indexPath);
			}
		}
	}
}

