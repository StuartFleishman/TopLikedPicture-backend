class CreateLikedPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :liked_pictures do |t|
      t.integer :picture_id
      t.integer :user_id
      t.timestamps
    end
  end
end
