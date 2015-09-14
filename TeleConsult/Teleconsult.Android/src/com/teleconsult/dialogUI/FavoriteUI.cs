using System;
using Android.App;
using CoreSystem;
using Android.Widget;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]
	public class FavoriteUI
	{
		Activity _activity;
		public OnActionFavoriteDelegate actionFavoriteDelegate { set; get; }

		public FavoriteUI (Activity _activity)
		{
			this._activity = _activity;
		}			

		public void addToFavouriteRequest (Guid specID)
		{
			actionFavoriteDelegate.onSendingFavorite ();
			Action<string> successful = (response => {
				bool isSuccess = ParseDataHelper.parseDataAddOrRemoveFavorite(response);
				if (isSuccess) {
					_activity.RunOnUiThread (() => {
						actionFavoriteDelegate.onAddFavoriteSuccess();
						Toast.MakeText(_activity, String.Format(_activity.GetString(Resource.String.str_info_add_favorite),constants.specialistInfo.Account.Name), ToastLength.Short).Show();
					});
				} else {
					constants.specialistInfo.IsFavourite = false;
					_activity.RunOnUiThread (() => {
						Toast.MakeText(_activity, _activity.GetString(Resource.String.request_fail), ToastLength.Long).Show();
						actionFavoriteDelegate.onAddFavoriteFail();
					});
				}
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionFavoriteDelegate.onAddFavoriteFail();
					Toast.MakeText(_activity, _activity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
				});
			});

			DataHelperRequest.getInstance().sendAddToFavorite(specID,
				MApplication.getInstance ().customerID, successful, failure);
		}

		public void removeFavoriteRequest (Guid specID)
		{
			actionFavoriteDelegate.onSendingFavorite ();
			Action<string> successful = (response => {
				bool isSuccess = ParseDataHelper.parseDataAddOrRemoveFavorite(response);
				if (isSuccess) {
					_activity.RunOnUiThread (() => {
						actionFavoriteDelegate.onRemoveFavoriteSuccess();
						Toast.MakeText(_activity, String.Format(_activity.GetString(Resource.String.str_info_remove_favorite), constants.specialistInfo.Account.Name), ToastLength.Short).Show();
					});
				} else {
					constants.specialistInfo.IsFavourite = true;
					_activity.RunOnUiThread (() => {
						Toast.MakeText(_activity, _activity.GetString(Resource.String.request_fail), ToastLength.Long).Show();
						actionFavoriteDelegate.onRemoveFavoriteFail();
					});
				}
			});

			Action<string> failure = (response => {
				_activity.RunOnUiThread (() => {
					actionFavoriteDelegate.onRemoveFavoriteFail();
					Toast.MakeText(_activity, _activity.GetString(Resource.String.connection_fail), ToastLength.Long).Show();
				});
			});

			DataHelperRequest.getInstance ().sendRemoveFavorite (specID,
				MApplication.getInstance ().customerID, successful, failure);
		}
	}

	public interface OnActionFavoriteDelegate {
		void onSendingFavorite();
		void onAddFavoriteSuccess();
		void onAddFavoriteFail();
		void onRemoveFavoriteSuccess();
		void onRemoveFavoriteFail();
	}
}

