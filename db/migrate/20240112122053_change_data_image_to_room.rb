class ChangeDataImageToRoom < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :room_image, :text
    change_column :rooms, :room_image_cache, :text
  end
end
