class AddLikedPicturesToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :likedPictures, :integer
  end
end
