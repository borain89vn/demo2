using System;

namespace CoreSystem
{
	public class Profile:Entity
	{
		public String short_description { get; set; }
		public String qualification { get; set; }
		public String language { get; set; }
		public String profile_state { get; set; }
		public String submission_state { get; set; }
		public String rejection_reason { get; set; }
		public String business_name { get; set; }
		public String avatar { get; set; }
		public String customer_id { get; set; }
		public String amount { get; set; }
		public String alternative_email { get; set; }
		public String alternative_number { get; set; }
		public String detail_biography { get; set; }
		public String bsb { get; set; }
		public String bank_account { get; set; }
	}
}

