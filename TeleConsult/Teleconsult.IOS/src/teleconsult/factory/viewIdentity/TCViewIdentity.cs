using System;
using System.Collections.Generic;

namespace Teleconsult.IOS
{
	public class TCViewIdentity
	{
		static TCViewIdentity instance;
		private Dictionary<object, object> hashtable; 

		public static TCViewIdentity getInstance
		{
			get {
				if (instance == null) {
					instance = new TCViewIdentity ();
				}

				return instance;
			}
		}

		public TCViewIdentity ()
		{
			this.hashtable = new Dictionary<object, object> ();
		}

		public void setObjectForKey(object key, object value)
		{
			if (this.hashtable.ContainsKey (key)) {
				this.hashtable [key] = value;
			} else {
				this.hashtable. Add(key, value);
			} 
		}

		public object getObjectForKey(object key)
		{
			object value = null;
			if (this.hashtable.ContainsKey (key)) {
				value = this.hashtable[key];

			}
			return value;
		}
	}
}

