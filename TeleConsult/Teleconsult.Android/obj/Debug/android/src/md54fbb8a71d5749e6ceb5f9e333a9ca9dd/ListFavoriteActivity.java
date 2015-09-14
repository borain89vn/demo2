package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class ListFavoriteActivity
	extends md54fbb8a71d5749e6ceb5f9e333a9ca9dd.BaseActivity
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"n_onKeyUp:(ILandroid/view/KeyEvent;)Z:GetOnKeyUp_ILandroid_view_KeyEvent_Handler\n" +
			"n_doNothing:(Landroid/view/View;)V:__export__\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.ListFavoriteActivity, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", ListFavoriteActivity.class, __md_methods);
	}


	public ListFavoriteActivity () throws java.lang.Throwable
	{
		super ();
		if (getClass () == ListFavoriteActivity.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.ListFavoriteActivity, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);


	public boolean onKeyUp (int p0, android.view.KeyEvent p1)
	{
		return n_onKeyUp (p0, p1);
	}

	private native boolean n_onKeyUp (int p0, android.view.KeyEvent p1);


	public void doNothing (android.view.View p0)
	{
		n_doNothing (p0);
	}

	private native void n_doNothing (android.view.View p0);

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
