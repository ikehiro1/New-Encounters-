class Announce < ApplicationRecord
     belongs_to :user
     has_many :likes, dependent: :destroy
     has_one_attached :img
     
     validates :title, presence: true, length: { minimum:  2, maximum: 20 }
     validates :explanation, length: { minimum:  1, maximum: 200 }
end
