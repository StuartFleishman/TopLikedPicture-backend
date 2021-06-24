class AddColumnToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :liked_pictures, :integer, :default => 0
  end
end
