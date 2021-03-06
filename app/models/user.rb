class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :room_users
  has_many :rooms, through: :rooms
  has_many :messages
  has_many :events

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :position

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: PASSWORD_REGEX }
  validates :nickname, presence: true
  validates :position_id, numericality: { other_than: 1, message: "can't be blank" }
  
end
