using System;
using UIKit;
using Foundation;
using CoreSystem;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public class TCFavoriteTableViewSource : TCTableViewSource
	{
		public TCListFavoriteViewController favoriteVC { get; set; }

		public TCFavoriteTableViewSource (TCListFavoriteViewController vc) : base (vc)
		{
			this.favoriteVC = vc;
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			SpecialistProfileInfos data = null;
		
			if(this.favoriteVC != null) {
				data = this.favoriteVC.specialists [indexPath.Row] as SpecialistProfileInfos;
			}

			TCSearchCellTemplate cell = MUtils.getCellSearchDTO (tableView, data).cell;
			if (cell == null) {
				return  new UITableViewCell (CGRect.Empty);
			} else {
				cell.Tag = indexPath.Row;

				if (data.SpecialistDetail.ImageAvatar == null && data.Account.AvatarPath != null) {
					UIImage imageCell = TCAsyncImage.getInstance ().GetImageFromCache (data.Account.AvatarPath);
					if (imageCell != null) {
						setCellImage (cell, imageCell);
						data.SpecialistDetail.ImageAvatar = imageCell;
					} else {
						cell.indicator.StartAnimating ();
						TCAsyncImage.getInstance ().BeginDownloadingImage (this.favoriteVC, tableView, indexPath, this.favoriteVC.specialists, data, true);
					}
				} else {
					setCellImage (cell, data.SpecialistDetail.ImageAvatar);
				}

				cell.data = data;
			}
			return cell;
		}

		private void setCellImage(TCSearchCellTemplate cell, UIImage image)
		{
			cell.indicator.Color = UIColor.Clear;
			cell.avatar.Image = image;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			SpecialistProfileInfos spec = this.favoriteVC.specialists [indexPath.Row] as SpecialistProfileInfos;

			return MUtils.getCellSearchDTO (tableView, spec).height;
		}

		public override nint RowsInSection (UITableView tableView, nint section)
		{
			nint num = 0;
			if (this.favoriteVC != null) {
				num = this.favoriteVC.specialists.Count;
			}

			return num;
		}
			
		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			if (this.favoriteVC != null) {
				this.favoriteVC.PerformSegue ("TCFavoriteToSpecialistProfileViewController", tableView.CellAt (indexPath));
				tableView.DeselectRow (indexPath, true);
			}
		}
	}
}

