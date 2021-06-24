class AddPictureIdsToLikedPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :liked_pictures, :picture_id, :integer, :default => 0
  end
end
