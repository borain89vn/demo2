using System;
using System.Collections.Generic;

namespace CoreSystem
{
	public class UserDAO : AbstractDAO
	{

		private static UserDAO instance;

		public UserDAO () : base ()
		{

		}

		public static UserDAO getInstance ()
		{
			if (instance == null)
				instance = new UserDAO ();
			return instance;
		}

		public User findByName (String pName)
		{
			String strSQL = "SELECT * from User WHERE name = '" + pName + "'";
			User tUser = null;
			List<User> users = this.entityManager.getCommand (strSQL).ExecuteQuery<User> ();

			if (users != null && users.Count == 1) {
				tUser = (User)users [0];
			}

			return tUser;
		}
	}
}

