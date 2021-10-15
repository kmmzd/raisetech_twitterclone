class Tweet < ApplicationRecord
belongs_to :user  # アソシエーションの作成で追加。Tweetは一つのUserに所属しています(Tweet belongs to a User.)。
has_many :favorites  # favoriteのアソシエーション作成で追加

# ファボ判定で追加
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end

end
