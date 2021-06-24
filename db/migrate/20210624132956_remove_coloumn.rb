class RemoveColoumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :pictures, :liked_pictures, :integer
  end
end
