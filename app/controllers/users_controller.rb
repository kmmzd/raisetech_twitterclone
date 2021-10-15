class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    
  end

  def show
    @user = User.find(params[:id])
    
    @tweets = @user.tweets　# "ユーザーに関連したツイートを取得"で追加。
    @favorite_tweets = @user.favorite_tweets # ファボ機能実装で追加。
    
  end
end
