using System;
using System.Collections.Generic;

namespace CoreSystem
{
	public class SearchDTO
	{
		public List<SpecialistProfileInfos> listSpecialistProfile;
		public bool isLimitSearchResult;
		public SearchDTO ()
		{

		}

		public SearchDTO (List<SpecialistProfileInfos> listSpecialistProfile, bool isLimitSearchResult)
		{
			this.listSpecialistProfile = listSpecialistProfile;
			this.isLimitSearchResult = isLimitSearchResult;
		}
	}
}

