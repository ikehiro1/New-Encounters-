class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :announces
  has_many :histories
  has_many :my_prs, dependent: :destroy
  has_many :rooms
  has_many :chats, through: :chat_rooms
  has_many :likes, dependent: :destroy
  has_one_attached :user_img

  enum role: {役者:0, アーティスト:1, タレント:2, 芸人:3}
  
  
  
end
