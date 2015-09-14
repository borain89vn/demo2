using System;
using System.Reflection;
using System.Collections.Generic;

namespace CoreSystem
{
	public class TCNotificationCenter
	{
		static TCNotificationCenter instance;
		public List<Observer> observers { get; set; }

		public TCNotificationCenter ()
		{
			this.observers = new List<Observer> ();
		}

		public static TCNotificationCenter defaultCenter
		{
			get {
				if (instance == null)
					instance = new TCNotificationCenter ();

				return instance;
			}
		}

		public void addObserver (object pObserver, string pName, TCSelector pSelector)
		{
			Observer tObserver = new Observer (pObserver, pName, pSelector);
			this.observers.Add (tObserver);
		}

		public void removeObserver (object pObserver, String pName)
		{
			foreach (Observer observer in this.observers) {
				if (observer.observer == pObserver && observer.name.Equals (pName) && observer.observer.Equals (pObserver)) {
					this.observers.Remove (observer);
					break;
				}
			}
		}

		public void postNotification(string pName , object pData)
		{
			List<Observer> tObservers = this.findObserverByName (pName);
			if (tObservers.Count > 0) {
				foreach (Observer observer in tObservers) {
					this.excuteCommand (observer, pData);
				}
			}
		}

		public void excuteCommand(Observer pObserver, object pData)
		{
			if (pObserver.observer != null) {
				Type MyType = Type.GetType (pObserver.observer.GetType().ToString());
				MethodInfo[] MymemberInfoArray = MyType.GetMethods ();

				foreach (MethodInfo tMethodInfo in MymemberInfoArray) {
					if (tMethodInfo.ToString ().Equals (pObserver.selector.Method.ToString ())) {
						tMethodInfo.Invoke (pObserver.observer, new object[] { pData });
					}
				}
			}
		}

		public List<Observer> findObserverByName(String pName)
		{
			List<Observer> tObservers = new List<Observer> ();

			foreach (Observer observer in this.observers) {
				if (observer.name.Equals (pName)) {
					tObservers.Add (observer);
				}
			}

			return tObservers;
		}

	}

	public delegate void TCSelector(object pMethod);

	public class Observer
	{
		public string name;
		public TCSelector selector;
		public object observer;

		public Observer (object pObserver, String pName, TCSelector pSelector)
		{
			this.observer = pObserver;
			this.name = pName;
			this.selector = pSelector;
		}
	}
}

