class AddRoomImageCacheToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_image_cache, :string
  end
end
