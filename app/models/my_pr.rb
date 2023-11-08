class MyPr < ApplicationRecord
    belongs_to :user
    mount_uploader :pr_movie, PrMovieUploader
                   #カラム連結    #アップローダーのクラスを持ってきている
end
