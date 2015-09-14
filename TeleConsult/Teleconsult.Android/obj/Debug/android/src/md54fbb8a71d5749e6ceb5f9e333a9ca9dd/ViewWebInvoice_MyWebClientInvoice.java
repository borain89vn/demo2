package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class ViewWebInvoice_MyWebClientInvoice
	extends android.webkit.WebViewClient
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_onPageStarted:(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V:GetOnPageStarted_Landroid_webkit_WebView_Ljava_lang_String_Landroid_graphics_Bitmap_Handler\n" +
			"n_onPageFinished:(Landroid/webkit/WebView;Ljava/lang/String;)V:GetOnPageFinished_Landroid_webkit_WebView_Ljava_lang_String_Handler\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.ViewWebInvoice/MyWebClientInvoice, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", ViewWebInvoice_MyWebClientInvoice.class, __md_methods);
	}


	public ViewWebInvoice_MyWebClientInvoice () throws java.lang.Throwable
	{
		super ();
		if (getClass () == ViewWebInvoice_MyWebClientInvoice.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.ViewWebInvoice/MyWebClientInvoice, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}

	public ViewWebInvoice_MyWebClientInvoice (android.app.Activity p0, android.widget.LinearLayout p1) throws java.lang.Throwable
	{
		super ();
		if (getClass () == ViewWebInvoice_MyWebClientInvoice.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.ViewWebInvoice/MyWebClientInvoice, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.App.Activity, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065:Android.Widget.LinearLayout, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", this, new java.lang.Object[] { p0, p1 });
	}


	public void onPageStarted (android.webkit.WebView p0, java.lang.String p1, android.graphics.Bitmap p2)
	{
		n_onPageStarted (p0, p1, p2);
	}

	private native void n_onPageStarted (android.webkit.WebView p0, java.lang.String p1, android.graphics.Bitmap p2);


	public void onPageFinished (android.webkit.WebView p0, java.lang.String p1)
	{
		n_onPageFinished (p0, p1);
	}

	private native void n_onPageFinished (android.webkit.WebView p0, java.lang.String p1);

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
