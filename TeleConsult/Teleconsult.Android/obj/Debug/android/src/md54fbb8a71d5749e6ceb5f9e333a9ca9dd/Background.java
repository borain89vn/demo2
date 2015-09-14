package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class Background
	extends android.graphics.drawable.StateListDrawable
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Teleconsult.Android.Background, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", Background.class, __md_methods);
	}


	public Background () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Background.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.Background, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}

	public Background (android.content.Context p0, int p1, int p2) throws java.lang.Throwable
	{
		super ();
		if (getClass () == Background.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.Background, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.Content.Context, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065:System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e:System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", this, new java.lang.Object[] { p0, p1, p2 });
	}

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
