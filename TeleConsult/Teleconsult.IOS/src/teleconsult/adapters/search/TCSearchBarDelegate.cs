using System;
using UIKit;
using CoreSystem;
using System.Collections.Generic;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCSearchBarDelegate : UISearchBarDelegate
	{
		TCSearchSpecialistViewController searchController { get; set; }
		TCHomeViewController homeController { get; set; }

		public TCSearchBarDelegate (TCSearchSpecialistViewController controller)
		{
			this.searchController = controller;
		}
			
		public override bool ShouldChangeTextInRange (UISearchBar searchBar, NSRange range, string text)
		{
			return true;
		}

		public override void TextChanged (UISearchBar searchBar, string searchText)
		{
			if (this.searchController != null) {
				if (searchText.Length <= 0) {
					TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostSearchBarEmpty, searchText);
				}
			}
		}

		public override void SearchButtonClicked (UISearchBar searchBar)
		{
			TCNotificationCenter.defaultCenter.postNotification (MConstants.kPostSearchExpertBeginClicked, searchBar);
		}
	}
}

