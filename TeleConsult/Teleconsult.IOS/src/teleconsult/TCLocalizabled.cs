using System;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant(false)]
	public class TCLocalizabled
	{
		public static string[] languages = new string[]{ "en" };
		public static NSBundle bundle;

		public TCLocalizabled ()
		{
		}
			
		public static bool isLanguageSupport(string code)
		{
			bool result = false;

			foreach (string lang in languages) {
				if (lang.Equals (code)) {
					result = true;
					break;
				}
			}

			return result;
		}

		public static void initialize ()
		{
			NSUserDefaults defs = NSUserDefaults.StandardUserDefaults;
			NSArray languages =	(NSArray)defs[new NSString("AppleLanguages")];

			NSString current = languages.GetItem<NSString>(0);
			setLanguage(current);
		}
			
		public static void setLanguage(string language)
		{
			if(!isLanguageSupport(language))
				language = "en";
			string path = NSBundle.MainBundle.PathForResource(language,"lproj");
			bundle = NSBundle.FromPath (path);
		}

		public static string getText(string key, string comment)
		{
			return bundle.LocalizedString(key, comment); 
		}

		public static string getText(string key)
		{
			return getText (key, "");
		}
	}
}

