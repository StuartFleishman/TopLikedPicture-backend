class RemoveidsfromPictureLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :liked_pictures, :picture_id, :integer
  end
end
