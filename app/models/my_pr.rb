class MyPr < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    mount_uploader :pr_movie, PrMovieUploader
                   #カラム連結    #アップローダーのクラスを持ってきている
    def liked_by?(user)
      likes.exists?(user_id: user.id)
    end
    
end
