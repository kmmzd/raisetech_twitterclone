class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :tweets  # アソシエーションの作成で追加。UserはたくさんのTweetを持っています(User has many tweets.)。 
  has_many :favorites  # favoriteのアソシエーション作成で追加
  has_many :favorite_tweets, through: :favorites, source: :tweet  # ファボ機能実装で追加。
end
