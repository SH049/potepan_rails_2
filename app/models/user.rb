class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence:true
  has_many :rooms
  has_many :reservations
  mount_uploader :profile_image, ImageUploader
  attr_accessor :current_password
end
