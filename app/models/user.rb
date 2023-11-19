class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :announces
  has_many :communities
  has_many :histories
  has_many :my_prs, dependent: :destroy
  #has_many :rooms
  #has_many :chats, through: :chat_rooms
  has_many :likes, dependent: :destroy
  has_many :followers, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :followeds, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following_users, through: :followers, source: :followed
  has_many :follower_users, through: :followeds, source: :follower
  has_one_attached :user_img

  enum role: {役者:0, アーティスト:1, タレント:2, 芸人:3}
  
  def follow(user_id)
    followers.create(followed_id: user_id)
  end
  def unfollow(user_id)
    followers.find_by(followed_id: user_id).destroy
  end
  def following?(user)
    following_users.include?(user)
  end
  
end
