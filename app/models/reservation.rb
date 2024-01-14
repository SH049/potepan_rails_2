class Reservation < ApplicationRecord
    validates :checkin, presence:true
    validates :checkout, presence:true
    validates :people, presence:true
    mount_uploader :room_image, ImageUploader
    belongs_to :user
    belongs_to :room
end
