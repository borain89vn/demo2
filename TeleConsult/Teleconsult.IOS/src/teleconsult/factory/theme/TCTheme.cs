using System;
using UIKit;

namespace Teleconsult.IOS
{
	public enum Theme
	{
		None,
		Header,
		ButtonSearchEnable,
		ButtonSearchDisable,
		BackgroundUsername,
		BackgroundPassword,
		ButtonSignInEnable,
		ButtonSignInDisable,
		BackgroundSearchBar,
		BackgroundBookingStatusBlue,
		BackgroundBookingStatusRed,
		CircleImage,
		BackgroundTime,
		TextColorBooking,
		BorderControl,
		BackgroundBooking,
		BackgroundFooter,
		BarItem,
		BackgroundBody,
		TextTitle,
		LineBottomBar,
		SearchTextBlue,
		PlaceholderTextView,
		HighlightButtonStatus
	};

	[CLSCompliant (false)]
	public class TCTheme
	{
		static TCTheme instance;

		public TCTheme ()
		{

		}

		public static TCTheme getInstance
		{
			get {
				if (instance == null) {
					instance = new TCTheme ();
				}

				return instance;
			}
		}

		public UIColor getThemeColor(Theme pTheme)
		{
			int red;
			int green;
			int blue;

			switch (pTheme) {

			case Theme.Header:
				red = 38;
				green = 163;
				blue = 216;
				break;
			case Theme.ButtonSearchEnable:
				red = 38;
				green = 168;
				blue = 216;
				break;
			case Theme.ButtonSearchDisable:
				red = 38;
				green = 190;
				blue = 216;
				break;
			case Theme.BackgroundPassword:
				red = 252;
				green = 254;
				blue = 255;
				break;
			case Theme.BackgroundUsername:
				red = 252;
				green = 254;
				blue = 255;
				break;
			case Theme.ButtonSignInDisable:
				red = 38;
				green = 163;
				blue = 216;
				break;
			case Theme.ButtonSignInEnable:
				red = 60;
				green = 93;
				blue = 150;
				break;
			case Theme.BackgroundSearchBar:
				red = 247;
				green = 247;
				blue = 247;
				break;
			case Theme.BackgroundBookingStatusBlue:
				red = 39;
				green = 163;
				blue = 217;
				break;
			case Theme.BackgroundBookingStatusRed:
				red = 249;
				green = 47;
				blue = 57;
				break;
			case Theme.CircleImage:
				red = 189;
				green = 229;
				blue = 247;
				break;
			case Theme.BackgroundTime:
				red = 227;
				green = 227;
				blue = 227;
				break;
			case Theme.TextColorBooking:
				red = 39;
				green = 163;
				blue = 217;
				break;
			case Theme.BorderControl:
				red = 204;
				green = 204;
				blue = 204;
				break;
			case Theme.BackgroundBooking:
				red = 199;
				green = 238;
				blue = 255;
				break;
			case Theme.BarItem:
				red = 39;
				green = 163;
				blue = 217;
				break;
			case Theme.BackgroundBody:
				red = 243;
				green = 243;
				blue = 243;
				break;
			case Theme.TextTitle:
				red = 38;
				green = 162;
				blue = 217;
				break;
			case Theme.LineBottomBar:
				red = 214;
				green = 214;
				blue = 214;
				break;
			case Theme.SearchTextBlue:
				red = 60;
				green = 93;
				blue = 150;
				break;
			case Theme.PlaceholderTextView:
				red = 204;
				green = 204;
				blue = 204;
				break;
			case Theme.HighlightButtonStatus:
				red = 60;
				green = 93;
				blue = 150;
				break;
			default:
				red = 0;
				green = 0;
				blue = 0;
				break;
			}
				
			return UIColor.FromRGB(red, green, blue);
		}
	}
}

