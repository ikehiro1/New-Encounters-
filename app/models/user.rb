class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :announces
  has_many :histories
  has_many :my_prs
  has_many :rooms
  has_many :chats, through: :chat_rooms

  enum role: {役者:0, アーティスト:1, タレント:2, 芸人:3}
  
  
  
end
