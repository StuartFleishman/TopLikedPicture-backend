class AddLikedPicsToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :liked_pictures, :integer
  end
end
