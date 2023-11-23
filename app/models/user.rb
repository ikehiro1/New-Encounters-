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
  has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :followings, through: :relationships, source: :followed
  has_many :followers, through: :reverse_of_relationships, source: :follower
  has_one_attached :user_img

  enum role: {役者:0, アーティスト:1, タレント:2, 芸人:3}
  
  def follow(user_id)
    relationships.create(followed_id: user_id)
  end
  def unfollow(user_id)
    relationships.find_by(followed_id: user_id).destroy
  end
  def following?(user)
    followings.include?(user)
  end
  
  #presence(空はNG) uniqueness(一意性) length(文字数制限)
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :telephone_number, presence: true, uniqueness: true, length: { minimum: 10, maximum: 11 }
  validates :birthday, presence: true
end
