class MyPr < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    mount_uploader :pr_movie, PrMovieUploader
                   #カラム連結    #アップローダーのクラスを持ってきている
    def liked?(user)
      likes.where(user_id: user.id).exists?
    end
    
end
