class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :room_users
  has_many :rooms, through: :rooms
  has_many :messages
  has_many :events

  extend
  ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  
end
