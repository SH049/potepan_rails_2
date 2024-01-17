class Reservation < ApplicationRecord
    validates :checkin, presence:true
    validates :checkout, presence:true
    validates :people, presence:true, numericality:{greater_than_or_equal_to: 1}
    mount_uploader :room_image, ImageUploader
    belongs_to :user
    belongs_to :room
end
