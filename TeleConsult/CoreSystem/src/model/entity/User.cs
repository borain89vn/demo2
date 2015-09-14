using System;

namespace CoreSystem
{
	public class User : Entity
	{
		public String username { get; set; }
		public String password { get; set; }
		public String email { get; set; }
		public String homephone { get; set; }
		public String mobilephone { get; set; }
		public String lastname { get; set; }
		public String firstname { get; set; }
		public String title { get; set; }
		public bool isphoneconfirm { get; set;}
	}
}

