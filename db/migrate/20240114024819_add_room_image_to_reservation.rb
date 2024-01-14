class AddRoomImageToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :room_image, :string
  end
end
