class AddlikesToPics < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :likes, :integer, :default => 0
  end
end
