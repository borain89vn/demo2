using System;

namespace CoreSystem
{
	public class MApplication
	{
		static MApplication instance;

		public Guid userId { get; set; }
		public string userName { get; set; }
		public bool isConsultant { get; set; }
		public Guid specialistID { get; set; }
		public Guid customerID { get; set; }
		public int userDashboardType { get; set; }
		public string firstName { get; set;}
		public bool isLogedIn { get; set; }
		public bool isLoginAfterSearch { get; set; }
		public bool isRequired { get; set; }
		public double longitude { get; set; }
		public double latitude { get; set; }
		public bool isCompleteProfile { get; set; }
		public bool isNetworkDisconnected { get; set; }
		public int  iStep { get; set; }
		public string  timezoneName { get; set; }
		public SystemDTO systemConfig { get; set; }
		public string typeCard { get; set;}
		public bool isConnectedSignalR { get; set;}
		public string sEmailAddress = "";
		public TCSignalRClient tcSignalR { get; set;}
		public int iExpertStatus { get; set; }
		public bool isBetaMode { get; set; }
		public MApplication ()
		{
		}

		public static MApplication  getInstance()
		{
			if (instance == null) {
				instance = new MApplication ();
			}
			return instance;
		}
	}
}