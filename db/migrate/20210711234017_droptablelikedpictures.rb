class Droptablelikedpictures < ActiveRecord::Migration[6.1]
  def change
    drop_table :liked_pictures
  end
end
