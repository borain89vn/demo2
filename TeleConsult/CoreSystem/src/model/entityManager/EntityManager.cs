using System;
using System.Collections.Generic;

namespace CoreSystem
{
	public class EntityManager
	{

		private static EntityManager instance;
		private Database database;

		public EntityManager ()
		{
			this.database = Database.getInstance ();
		}

		public static EntityManager getInstance ()
		{
			if (instance == null)
				instance = new EntityManager ();

			return instance;
		}

		public int create (Entity pEntity)
		{
			return this.database.getConnection().Insert (pEntity);
		}

		public int merge (Entity pEntity)
		{
			return this.database.getConnection().Update (pEntity);
		}

		public int delete (Entity pEntity)
		{
			return this.database.getConnection().Delete (pEntity);
		}
			
		public SQLite.SQLiteCommand getCommand (string pSQL)
		{
			var cmd = new SQLite.SQLiteCommand (this.database.getConnection());
			cmd.CommandText = pSQL;

			return cmd;
		}



	}
}

