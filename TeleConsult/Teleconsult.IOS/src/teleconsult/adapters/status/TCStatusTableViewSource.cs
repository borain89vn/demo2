using System;
using UIKit;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public class TCStatusTableViewSource : UITableViewSource
	{
		public TCChangeStatusViewController parentViewController { get; set; }
		public TCStatusTableViewSource (TCChangeStatusViewController parentVC)
		{
			this.parentViewController = parentVC;
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			var cell = (TCStatusCell)tableView.DequeueReusableCell (TCStatusCell.Key);
			if (cell == null) {
				cell = TCStatusCell.Create ();
			}

			if (indexPath.Row == 2) {
				cell.SeparatorInset = new  UIEdgeInsets (0.0f, cell.Bounds.Width, 0.0f, 0.0f);
			}

			NSDictionary dict = TCGlobals.getInstance.createListStatus ()[indexPath.Row];
			cell.data = dict;

			return cell;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return 44;
		}

		public override nint RowsInSection (UITableView tableView, nint section)
		{
			nint num = TCGlobals.getInstance.createListStatus().Count;

			return num;
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			TCStatusCell oldCell = (TCStatusCell)tableView.CellAt (this.parentViewController.tempIndexPath);
			if (oldCell != null)
				oldCell.unCheck ();

			TCStatusCell selectedCell = (TCStatusCell)tableView.CellAt (indexPath);
			selectedCell.check ();
			tableView.DeselectRow(indexPath, false);
			if (this.parentViewController != null) {
				this.parentViewController.setTempIndex (indexPath);
			}
		}
	}
}

