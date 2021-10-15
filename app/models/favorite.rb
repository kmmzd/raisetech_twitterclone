class Favorite < ApplicationRecord
    # 中間テーブルの作成で追加。
    belongs_to :user
    belongs_to :tweet
    # ここまで
end
