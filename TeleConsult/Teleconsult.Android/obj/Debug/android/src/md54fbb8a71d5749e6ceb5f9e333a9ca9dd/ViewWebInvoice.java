package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class ViewWebInvoice
	extends md54fbb8a71d5749e6ceb5f9e333a9ca9dd.BaseActivity
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"n_onResume:()V:GetOnResumeHandler\n" +
			"n_onOptionsItemSelected:(Landroid/view/MenuItem;)Z:GetOnOptionsItemSelected_Landroid_view_MenuItem_Handler\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.ViewWebInvoice, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", ViewWebInvoice.class, __md_methods);
	}


	public ViewWebInvoice () throws java.lang.Throwable
	{
		super ();
		if (getClass () == ViewWebInvoice.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.ViewWebInvoice, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);


	public void onResume ()
	{
		n_onResume ();
	}

	private native void n_onResume ();


	public boolean onOptionsItemSelected (android.view.MenuItem p0)
	{
		return n_onOptionsItemSelected (p0);
	}

	private native boolean n_onOptionsItemSelected (android.view.MenuItem p0);

	java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
