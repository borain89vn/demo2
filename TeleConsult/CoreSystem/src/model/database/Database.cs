using System;
using SQLite;
using System.IO;

namespace CoreSystem
{
	public class Database
	{
		public static Database instance;
		private const String sqliteFilename = "teleconsult.sqlite";
		private SQLite.SQLiteConnection conn;

		public Database ()
		{
			bool exists = File.Exists (dbPath);

			if (!exists)
				File.Create (dbPath);

			this.conn = new SQLite.SQLiteConnection (dbPath);
		
			if (!exists)
				createDB (conn);
		}

		public SQLite.SQLiteConnection getConnection(){
			return this.conn;
		}

		public static Database getInstance ()
		{
			if (instance == null)
				instance = new Database ();

			return instance;
		}

		public bool checkFileIsExist (string  pName)
		{
			return true;
		}

		private void createDB (SQLite.SQLiteConnection conn)
		{
			//create database
			conn.CreateTable<User> ();
		}

		string dbPath {
			get { 

				#if __IOS__
				string documentsPath = Environment.GetFolderPath (Environment.SpecialFolder.Personal); // Documents folder
				string libraryPath = Path.Combine (documentsPath, "..", "Database"); 
				var path = Path.Combine(libraryPath, sqliteFilename);
				#else
				#if __ANDROID__
				string documentsPath = Environment.GetFolderPath (Environment.SpecialFolder.Personal); // Documents folder
				var path = System.IO.Path.Combine (documentsPath, sqliteFilename);

				#else
				// WinPhone
				var path = Path.Combine (ApplicationData.Current.LocalFolder.Path, sqliteFilename);
				;
				#endif
				#endif

				return path;
			}
		}

	}
}

