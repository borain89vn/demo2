package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class BookPreTimeUI
	extends android.app.Dialog
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Teleconsult.Android.BookPreTimeUI, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", BookPreTimeUI.class, __md_methods);
	}


	public BookPreTimeUI (android.content.Context p0) throws java.lang.Throwable
	{
		super (p0);
		if (getClass () == BookPreTimeUI.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.BookPreTimeUI, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.Content.Context, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", this, new java.lang.Object[] { p0 });
	}


	public BookPreTimeUI (android.content.Context p0, boolean p1, android.content.DialogInterface.OnCancelListener p2) throws java.lang.Throwable
	{
		super (p0, p1, p2);
		if (getClass () == BookPreTimeUI.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.BookPreTimeUI, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.Content.Context, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065:System.Boolean, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e:Android.Content.IDialogInterfaceOnCancelListener, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", this, new java.lang.Object[] { p0, p1, p2 });
	}


	public BookPreTimeUI (android.content.Context p0, int p1) throws java.lang.Throwable
	{
		super (p0, p1);
		if (getClass () == BookPreTimeUI.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.BookPreTimeUI, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.Content.Context, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065:System.Int32, mscorlib, Version=2.0.5.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e", this, new java.lang.Object[] { p0, p1 });
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
