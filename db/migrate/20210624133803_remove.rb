class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :pictures, :liked_pictures, :integer, :default => 0
  end
end
