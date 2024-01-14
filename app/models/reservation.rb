class Reservation < ApplicationRecord
    validates :checkin, presence:true
    validates :checkout, presence:true
    validates :people, presence:true
    belongs_to :user
    belongs_to :room
end
