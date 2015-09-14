using System;
using UIKit;
using Foundation;
using CoreSystem;
using System.Threading.Tasks;
using System.Linq;
using System.Net;
using CoreGraphics;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public class TCSearchTableViewSource : UITableViewSource
	{
		public TCSearchSpecialistViewController searchSpecialistVC { get; set; }
	
		public TCSearchTableViewSource (TCSearchSpecialistViewController vc)
		{
			this.searchSpecialistVC = vc;
		}
			
		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			int startPoint = this.searchSpecialistVC.start + this.searchSpecialistVC.batchSize - 1;

			if (indexPath.Row == startPoint) {
				this.searchSpecialistVC.start += this.searchSpecialistVC.batchSize;
				this.searchSpecialistVC.searchDelegate.SearchButtonClicked (null);
			}

			SpecialistProfileInfos data = null;
		
			if(this.searchSpecialistVC != null) {
				data = this.searchSpecialistVC.specialists [indexPath.Row] as SpecialistProfileInfos;
			}

			TCSearchCellTemplate cell = MUtils.getCellSearchDTO (tableView, data).cell;

			if (cell == null) {
				return new UITableViewCell (CGRect.Empty);
			} else {
				cell.Tag = indexPath.Row;
		
				if (data.SpecialistDetail.ImageAvatar == null && data.Account.AvatarPath != null) {
					UIImage imageCell = TCAsyncImage.getInstance ().GetImageFromCache (data.Account.AvatarPath);
					if (imageCell != null) {
						setCellImage (cell, imageCell);
						data.SpecialistDetail.ImageAvatar = imageCell;
					} else {
						cell.indicator.StartAnimating ();
						TCAsyncImage.getInstance ().BeginDownloadingImage (this.searchSpecialistVC, tableView, indexPath, this.searchSpecialistVC.specialists, data, true);
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
			SpecialistProfileInfos spec = this.searchSpecialistVC.specialists [indexPath.Row] as SpecialistProfileInfos;

			return MUtils.getCellSearchDTO (tableView, spec).height;

		}

		public override nint RowsInSection (UITableView tableView, nint section)
		{
			nint num = 0;

			if (this.searchSpecialistVC != null) {
				num = this.searchSpecialistVC.specialists.Count;
			}

			return num;
		}

		public override void Scrolled(UIScrollView scrollView)
		{
			if (this.searchSpecialistVC != null) {
				this.searchSpecialistVC.getSearchBar ().ResignFirstResponder ();
			}
		}
			
		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			 if (this.searchSpecialistVC != null) {
				this.searchSpecialistVC.PerformSegue ("TCSpecialistProfileViewController2", tableView.CellAt (indexPath));
				tableView.DeselectRow (indexPath, true);
			}
		}
	}
}

