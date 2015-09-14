using System;

namespace CoreSystem
{
	public class AbstractDAO
	{
		protected EntityManager entityManager;

		public AbstractDAO ()
		{
			entityManager = EntityManager.getInstance ();
		}

		public int create (Entity pEntity)
		{
			return this.entityManager.create (pEntity);
		}

		public int merge (Entity pEntity)
		{
			return this.entityManager.merge (pEntity);
		}

		public int delete (Entity pEntity)
		{
			return this.entityManager.delete (pEntity);
		}
	}
}

