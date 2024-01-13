class Room < ApplicationRecord
    validates :room_name, presence:true
    validates :room_detail, presence:true
    validates :room_fee, presence:true
    validates :room_address, presence:true
    mount_uploader :room_image, ImageUploader
    has_many :reservations
    belongs_to :user
end
