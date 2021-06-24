class RemovecolumLikedPictures < ActiveRecord::Migration[6.1]
  def change
    remove_column :liked_pictures, :picture_id, :integer, :default => 0
  end
end
