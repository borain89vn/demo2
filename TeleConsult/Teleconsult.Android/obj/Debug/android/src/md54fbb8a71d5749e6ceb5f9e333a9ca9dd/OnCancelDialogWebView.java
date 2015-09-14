package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class OnCancelDialogWebView
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.content.DialogInterface.OnCancelListener
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_onCancel:(Landroid/content/DialogInterface;)V:GetOnCancel_Landroid_content_DialogInterface_Handler:Android.Content.IDialogInterfaceOnCancelListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.OnCancelDialogWebView, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", OnCancelDialogWebView.class, __md_methods);
	}


	public OnCancelDialogWebView () throws java.lang.Throwable
	{
		super ();
		if (getClass () == OnCancelDialogWebView.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.OnCancelDialogWebView, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}

	public OnCancelDialogWebView (android.app.Activity p0, android.webkit.ValueCallback p1) throws java.lang.Throwable
	{
		super ();
		if (getClass () == OnCancelDialogWebView.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.OnCancelDialogWebView, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "Android.App.Activity, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065:Android.Webkit.IValueCallback, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=84e04ff9cfb79065", this, new java.lang.Object[] { p0, p1 });
	}


	public void onCancel (android.content.DialogInterface p0)
	{
		n_onCancel (p0);
	}

	private native void n_onCancel (android.content.DialogInterface p0);

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
