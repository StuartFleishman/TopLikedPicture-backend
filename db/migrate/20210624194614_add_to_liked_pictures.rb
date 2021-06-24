class AddToLikedPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :liked_pictures, :picture_id, :integer
  end
end
