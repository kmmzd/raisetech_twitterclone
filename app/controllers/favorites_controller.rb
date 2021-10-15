class FavoritesController < ApplicationController
 
 
  def create
  # FavoritesControllerの実装で追加。
  favorite = current_user.favorites.build(tweet_id: params[:tweet_id])
    favorite.save
    redirect_to tweets_path
  # ここまで。
  end

  def destroy
  # FavoritesControllerの実装で追加。
    favorite = Favorite.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
    favorite.destroy
    redirect_to tweets_path
  # ここまで。
  end
end
