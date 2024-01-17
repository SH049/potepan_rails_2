class Reservation < ApplicationRecord
    validates :checkin, presence:true
    validates :checkout, presence:true
    validates :people, presence:true, numericality:{greater_than_or_equal_to: 1}
    mount_uploader :room_image, ImageUploader
    belongs_to :user
    belongs_to :room
    validate :checkin_after_today
    validate :checkout_after_checkin

    def checkin_after_today
        errors.add(:checkin, "は今日以降の日付で選択してください。") unless
        checkin.present? && Date.today <= self.checkin
    end
    def checkout_after_checkin
        errors.add(:checkout, "はチェックイン日以降の日付で選択してください。") unless
        checkin.present? && checkout.present? && self.checkin < self.checkout
    end
end
