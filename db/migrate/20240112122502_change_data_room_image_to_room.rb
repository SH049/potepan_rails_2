class ChangeDataRoomImageToRoom < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :room_image, :string
    change_column :rooms, :room_image_cache, :string
  end
end
