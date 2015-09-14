
using System;
using System.Drawing;

using Foundation;
using UIKit;
using MediaPlayer;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public partial class TCReplayViewController : TCCommonTemplateViewController
	{
		public string recordUrl { get; set; }

		private MPMoviePlayerController player;

		static bool UserInterfaceIdiomIsPhone {
			get { return UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Phone; }
		}

		public TCReplayViewController ()
			: base (UserInterfaceIdiomIsPhone ? "TCReplayViewController_iPhone" : "TCReplayViewController_iPhone", null)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
			if (this.recordUrl != null) {
				this.loadingView = new TCLoadingOverlay (this, true, false);
				this.loadingView.build ();

				this.loadingView.show ();
				NSNotificationCenter.DefaultCenter.AddObserver (MPMoviePlayerController.PlaybackStateDidChangeNotification, beginPlayTalkReplay);

				this.recordUrl = MUtils.getURLFromServer (this.recordUrl);

				this.player = new MPMoviePlayerController (new NSUrl (this.recordUrl));
				this.player.View.Frame = new CoreGraphics.CGRect (0.0f, 0.0f, this.viewPlay.Frame.Width, this.viewPlay.Frame.Height);
				this.player.ScalingMode = MPMovieScalingMode.None;
				this.player.View.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
				this.player.ControlStyle = MPMovieControlStyle.Default;
				this.player.BackgroundView.BackgroundColor = TCTheme.getInstance.getThemeColor (Theme.BackgroundBody);
				this.viewPlay.AddSubview (player.View);
				this.player.Play ();
			}
		}

		private void beginPlayTalkReplay (NSNotification notificaiton)
		{
			if (this.player.PlaybackState == MPMoviePlaybackState.Playing || this.player.PlaybackState == MPMoviePlaybackState.Interrupted) { 
				this.loadingView.dismiss ();
			} 
		}

		partial void backClicked (NSObject sender)
		{
			if (this.player != null) {
				this.player.Stop ();
			}

			DismissModalViewController (true);
		}
	}
}

