using System;

namespace CoreSystem
{
	public class FavoriteDTO
	{
		public Guid specialistId;
		public bool isFavorite;
		public FavoriteDTO (Guid specialistId, bool isFavorite)
		{
			this.specialistId = specialistId;
			this.isFavorite = isFavorite;
		}
	}
}

