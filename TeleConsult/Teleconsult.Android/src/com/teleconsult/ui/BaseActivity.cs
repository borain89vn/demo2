using Android.App;
using System;
using Android.OS;
using Android.Views;
using Android.Widget;
using Java.Interop;

namespace Teleconsult.Android
{
	[Activity (Label = "BaseActivity"), CLSCompliant(false)]
	abstract public class BaseActivity : Activity
	{
		public ProgressDialog progressDialogParentRootView;
		public ProgressDialog progressDialogParent;
		protected TextView txtHeading;
		protected LinearLayout llHeading;
		public LinearLayout llProgress;
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);
			//RequestWindowFeature (WindowFeatures.NoTitle);
			progressDialogParent = ProgressDialog.Show (this, "", "", true);
			progressDialogParent.SetContentView(new ProgressBar(this));
			progressDialogParent.Hide ();
			LayoutInflater.Factory = new TextFactoryManager();
		}

		protected override void OnResume ()
		{
			base.OnResume ();
		}

		protected void setHeadingTitle(string strTitle) {
			if (txtHeading == null)
				txtHeading = FindViewById<TextView> (Resource.Id.tvTitleHeader);
			if(txtHeading != null)
				txtHeading.Text = strTitle.ToUpper();
		}

		protected void setHeadingTitle(int resId) {
			if (txtHeading == null)
				txtHeading = FindViewById<TextView> (Resource.Id.tvTitleHeader);
			if (txtHeading != null) {
				string title = GetString (resId);
				txtHeading.Text = title.ToUpper();
			}
		}

		protected void hideHeading(){
			if (llHeading == null)
				llHeading = FindViewById<LinearLayout> (Resource.Id.llHeader);
			if (llHeading != null)
				llHeading.Visibility = ViewStates.Gone;
		}

		public void showProgressRootView(Activity _activity){
			if (progressDialogParentRootView != null) {
				progressDialogParentRootView.Hide ();
				progressDialogParentRootView = null;
			}
			progressDialogParentRootView = ProgressDialog.Show (_activity, "", "", true);
			progressDialogParentRootView.SetContentView(new ProgressBar(_activity));
			progressDialogParentRootView.SetCancelable (true);
			progressDialogParentRootView.Show ();
		}

		[Export("doNothing")]
		public void doNothing(View v){
			return;
		}
	}
}

