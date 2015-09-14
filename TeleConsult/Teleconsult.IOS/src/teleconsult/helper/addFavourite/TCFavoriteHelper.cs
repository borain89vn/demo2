using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using RestSharp;
using CoreSystem;
using UIKit;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCFavouriteHelper
	{
		public Guid specialistId { get; set; }

		public TCFavoriteHelperDelegate Delegate { get; set; }

		public UIViewController parentController { get; set; }

		public TCFavouriteHelper (UIViewController controller)
		{
			this.parentController = controller;
		}

		public void favourite (bool isFavorite)
		{
			if (this.parentController != null && this.Delegate != null) {
				this.parentController.InvokeOnMainThread (delegate {
					this.Delegate.beginFavoriteRequest (this); 
				});
			}

			Action<string> successful = (response => {
				#if DEBUG
				Console.Out.WriteLine (response);
				#endif

				if (parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.afterFavoriteRequest (this);
						bool status = CoreSystem.ParseDataHelper.parseDataAddOrRemoveFavorite (response);

						if (status) {							
							string textF = TCLocalizabled.getText("TextResultAddFavouriteSuccess");
							if (isFavorite)
								textF = TCLocalizabled.getText("TextResultRemoveFavouriteSuccess");
							this.Delegate.actionFavoriteSuccess (this, textF);

							if (TCViewIdentity.getInstance.getObjectForKey ("TCListFavoriteViewController") != null) {
								TCListFavoriteViewController listFavoriteVC = (TCListFavoriteViewController)TCViewIdentity.getInstance.getObjectForKey ("TCListFavoriteViewController");
								TCNotificationCenter.defaultCenter.postNotification(MUtils.generateKeyFavorite (listFavoriteVC), null);
							}

							if (TCViewIdentity.getInstance.getObjectForKey ("TCSearchSpecialistViewController") != null) {
								TCSearchSpecialistViewController searchSpecialistVC = (TCSearchSpecialistViewController)TCViewIdentity.getInstance.getObjectForKey ("TCSearchSpecialistViewController");
								TCNotificationCenter.defaultCenter.postNotification (MUtils.generateKeyFavorite (searchSpecialistVC), new FavoriteDTO (specialistId, !isFavorite));
							}
						} else {
							this.Delegate.actionFavoriteFail (this, TCLocalizabled.getText ("TextRequestFail"));
						} 
					});
				}
			});

			Action<string> failure = (response => {
				if (this.parentController != null && this.Delegate != null) {
					this.parentController.InvokeOnMainThread (delegate {
						this.Delegate.afterFavoriteRequest (this);
						this.Delegate.actionFavoriteFail (this, TCLocalizabled.getText ("TextRequestFail"));
					});
				}
			});

			if (isFavorite)
				DataHelperRequest.getInstance ().sendRemoveFavorite (specialistId, MApplication.getInstance ().userId, successful, failure);
			else
				DataHelperRequest.getInstance ().sendAddToFavorite (specialistId, MApplication.getInstance ().userId, successful, failure);
				
		}
	}

	public interface TCFavoriteHelperDelegate
	{
		void actionFavoriteSuccess (TCFavouriteHelper helper, string message);

		void actionFavoriteFail (TCFavouriteHelper helper, string message);

		void beginFavoriteRequest (TCFavouriteHelper helper);

		void afterFavoriteRequest (TCFavouriteHelper helper);
	}

}

