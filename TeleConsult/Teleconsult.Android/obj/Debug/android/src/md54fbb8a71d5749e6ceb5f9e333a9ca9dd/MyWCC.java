package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class MyWCC
	extends android.webkit.WebChromeClient
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_openFileChooser:(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V:__export__\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.MyWCC, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", MyWCC.class, __md_methods);
	}


	public MyWCC () throws java.lang.Throwable
	{
		super ();
		if (getClass () == MyWCC.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.MyWCC, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void openFileChooser (android.webkit.ValueCallback p0, java.lang.String p1, java.lang.String p2)
	{
		n_openFileChooser (p0, p1, p2);
	}

	private native void n_openFileChooser (android.webkit.ValueCallback p0, java.lang.String p1, java.lang.String p2);

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
