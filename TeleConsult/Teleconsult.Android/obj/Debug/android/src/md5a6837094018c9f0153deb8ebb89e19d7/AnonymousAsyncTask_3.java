package md5a6837094018c9f0153deb8ebb89e19d7;


public class AnonymousAsyncTask_3
	extends android.os.AsyncTask
	implements
		mono.android.IGCUserPeer
{
	static final String __md_methods;
	static {
		__md_methods = 
			"n_doInBackground:([Ljava/lang/Object;)Ljava/lang/Object;:GetDoInBackground_arrayLjava_lang_Object_Handler\n" +
			"n_onPostExecute:(Ljava/lang/Object;)V:GetOnPostExecute_Ljava_lang_Object_Handler\n" +
			"";
		mono.android.Runtime.register ("UrlImageViewHelper.AnonymousAsyncTask`3, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", AnonymousAsyncTask_3.class, __md_methods);
	}


	public AnonymousAsyncTask_3 () throws java.lang.Throwable
	{
		super ();
		if (getClass () == AnonymousAsyncTask_3.class)
			mono.android.TypeManager.Activate ("UrlImageViewHelper.AnonymousAsyncTask`3, Teleconsult.Android, Version=104.4.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public java.lang.Object doInBackground (java.lang.Object[] p0)
	{
		return n_doInBackground (p0);
	}

	private native java.lang.Object n_doInBackground (java.lang.Object[] p0);


	public void onPostExecute (java.lang.Object p0)
	{
		n_onPostExecute (p0);
	}

	private native void n_onPostExecute (java.lang.Object p0);

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
