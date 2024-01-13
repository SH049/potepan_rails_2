class CreateIntros < ActiveRecord::Migration[6.1]
  def change
    create_table :intros do |t|
      t.string :profile_image
      t.string :name
      t.text   :profile
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
