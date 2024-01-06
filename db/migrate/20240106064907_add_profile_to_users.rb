class AddProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile, :text # プロフィール
    add_column :users, :profile_image, :string # 画像
  end
end
