package md54fbb8a71d5749e6ceb5f9e333a9ca9dd;


public class TextFactoryManager
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.view.LayoutInflater.Factory
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreateView:(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;:GetOnCreateView_Ljava_lang_String_Landroid_content_Context_Landroid_util_AttributeSet_Handler:Android.Views.LayoutInflater/IFactoryInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Teleconsult.Android.TextFactoryManager, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", TextFactoryManager.class, __md_methods);
	}


	public TextFactoryManager () throws java.lang.Throwable
	{
		super ();
		if (getClass () == TextFactoryManager.class)
			mono.android.TypeManager.Activate ("Teleconsult.Android.TextFactoryManager, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public android.view.View onCreateView (java.lang.String p0, android.content.Context p1, android.util.AttributeSet p2)
	{
		return n_onCreateView (p0, p1, p2);
	}

	private native android.view.View n_onCreateView (java.lang.String p0, android.content.Context p1, android.util.AttributeSet p2);

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
