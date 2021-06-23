class RemovecoloumFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :likes, :integer, :default => 0
  end
end
