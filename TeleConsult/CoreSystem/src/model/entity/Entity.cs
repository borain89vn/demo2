using System;
using SQLite;

namespace CoreSystem
{
	public class Entity
	{
		[PrimaryKey, AutoIncrement]
		public int id { get; set; }

		public Entity ()
		{
		}
			
	}
}

