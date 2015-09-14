
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using CoreSystem;

namespace Teleconsult.Android
{
	[Activity (Theme = "@style/ActionBarTheme", Label = "PlayAudioManager", ScreenOrientation = global::Android.Content.PM.ScreenOrientation.Portrait), CLSCompliant(false)]
	public class PlayAudioManager : BaseActivity
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			SetContentView (Resource.Layout.play_audio_layout);

			ActionBar.Title = "Replay consultation";
			ActionBar.SetDisplayShowTitleEnabled (false);
			ActionBar.SetDisplayHomeAsUpEnabled(true);
			ActionBar.SetDisplayShowHomeEnabled (true);

			setHeadingTitle ("Replay consultation");
			constants.currentActivity = this;

			llProgress = FindViewById<LinearLayout> (Resource.Id.llProgressBar);

			string audioFile = "";
			if (this.Intent.Extras != null) {
				if (this.Intent.Extras.ContainsKey (constants.pPathAudioFile)) {
					audioFile = this.Intent.Extras.GetString (constants.pPathAudioFile);
					if (!audioFile.Contains ("api.twilio.com")) {
						audioFile = HttpConstants.BASE_URL + audioFile;
					}
				}
			} else {
				Toast.MakeText (this, GetString(Resource.String.replay_not_exist_notice), ToastLength.Short).Show ();
				Finish ();
			}

			//set the objects
			VideoView Vv = FindViewById<VideoView> (Resource.Id.videoView);
			MediaController mc = new MediaController(this);
			mc.SetAnchorView (Vv);
			global::Android.Net.Uri uri = global::Android.Net.Uri.Parse (audioFile);

			//set video view options
			mc.SetMediaPlayer (Vv);
			Vv.SetMediaController (mc);
			Vv.RequestFocus ();
			//this prevents an error if playing is initiated before buffering
			Vv.PostInvalidateDelayed (100);
			Vv.SetVideoURI (uri);
			Vv.Prepared += (object sender, EventArgs e) => {
				llProgress.Visibility = ViewStates.Gone;
				Vv.ShowContextMenu();
				Vv.Focusable = true;
				Vv.RequestFocus ();
				Vv.Visibility = ViewStates.Visible;
				mc.Show(Vv.Duration);
				mc.Activated = true;
				mc.ShowContextMenu();
				mc.Focusable = true;
				mc.RequestFocus();
			};

			Vv.Start ();
		}

		public override bool OnOptionsItemSelected (IMenuItem item)
		{
			base.OnOptionsItemSelected (item);
			switch (item.ItemId)
			{
			case global::Android.Resource.Id.Home:
				Finish ();
				break;
			default:
				break;
			}

			return true;
		}
	}

}

