using System;
using UIKit;
using Foundation;
using CoreSystem;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCTableViewSource : UITableViewSource
	{
		bool _checkForRefresh;
		bool _reloading;
		bool isRefresh;

		NSTimer _reloadTimer;
		RefreshTableHeaderView _refreshHeaderView;
		UITableView _table;
		public NSString key =  new NSString("Basic_Cell");
		public TCRefreshTableDelegate Delegate;
		public UIViewController parentController { get; set; }

		public TCTableViewSource (UIViewController vc)
		{
			this.parentController = vc;
		}

		public TCTableViewSource (UIViewController vc, RefreshTableHeaderView refreshHeaderView, UITableView tableView)
		{
			this.parentController = vc;
			_checkForRefresh = false;
			_reloading = false;
			_refreshHeaderView = refreshHeaderView;
			_table = tableView;

			TCNotificationCenter.defaultCenter.addObserver (this, Constants.kDissmisRefreshHeaderTable, tableFinishLoaded);
			TCNotificationCenter.defaultCenter.addObserver (this, MUtils.generateKeyRefreshTable(this.parentController), tableFinishLoaded);
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			// request a recycled cell to save memory
			UITableViewCell cell = tableView.DequeueReusableCell (key);
			// if there are no cells to reuse, create a new one
			if (cell == null)
				cell = new UITableViewCell (UITableViewCellStyle.Default, key);

			return cell;
		}

		public override nint NumberOfSections (UITableView tableView)
		{
			// TODO: return the actual number of sections
			return 1;
		}

		public override nint RowsInSection (UITableView tableview, nint section)
		{
			return 0;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return 45;
		}

		[Export("scrollViewDidScroll:")]
		public override void Scrolled(UIScrollView scrollView)
		{
			if (_refreshHeaderView != null) {
				if (_checkForRefresh) {
					if (_refreshHeaderView.isFlipped && (_table.ContentOffset.Y > -65f) && (_table.ContentOffset.Y < 0f) && !_reloading) {
						this.isRefresh = false;
						_refreshHeaderView.FlipImageAnimated (true);
						_refreshHeaderView.SetStatus (RefreshTableHeaderView.RefreshStatus.PullToReloadStatus);
					} else if ((!_refreshHeaderView.isFlipped) && (_table.ContentOffset.Y < -65f)) {
						_refreshHeaderView.FlipImageAnimated (true);
						this.isRefresh = true;
						_refreshHeaderView.SetStatus (RefreshTableHeaderView.RefreshStatus.ReleaseToReloadStatus);
					}
				}
			}
		}

		[Export("scrollViewWillBeginDragging:")]
		public override void DraggingStarted (UIScrollView scrollView)
		{if (_refreshHeaderView != null) {
				_checkForRefresh = true;
			}
		}

		[Export("scrollViewDidEndDragging:willDecelerate:")]
		public override void DraggingEnded (UIScrollView scrollView, bool willDecelerate)
		{
			if (_refreshHeaderView != null) {
				if (_table.ContentOffset.Y <= -65f) {
					if (Delegate != null)
						this.Delegate.refreshBegin ();
					_reloading = true;
					_refreshHeaderView.ToggleActivityView ();
					UIView.BeginAnimations ("ReloadingData");
					UIView.SetAnimationDuration (0.2);
					if (MApplication.getInstance ().isNetworkDisconnected) {
						_table.ContentInset = new UIEdgeInsets (0f, 0f, 0f, 0f);
						_table.UserInteractionEnabled = true;
					} else {
						_table.ContentInset = new UIEdgeInsets (60f, 0f, 0f, 0f);
						_table.UserInteractionEnabled = false;
					}
					UIView.CommitAnimations ();
				}

				_checkForRefresh = false;
			}
		}

		public void tableFinishLoaded (object notification)
		{
			if (_refreshHeaderView != null) {
				if (this.isRefresh && this.parentController != null) {
					this.parentController.InvokeOnMainThread (delegate {
						_reloading = false;
						_refreshHeaderView.FlipImageAnimated (false);
						_refreshHeaderView.ToggleActivityView ();
						UIView.BeginAnimations ("DoneReloadingData");
						UIView.SetAnimationDuration (0.3);
						_table.ContentInset = new UIEdgeInsets (0f, 0f, 0f, 0f);
						_refreshHeaderView.SetStatus (RefreshTableHeaderView.RefreshStatus.PullToReloadStatus);
						UIView.CommitAnimations ();
						_refreshHeaderView.SetCurrentDate ();
						_table.UserInteractionEnabled = true;
					});

					this.isRefresh = false;
				}
			}
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{

		}
	}

	public interface TCRefreshTableDelegate
	{
		void refreshBegin();
	}
}



