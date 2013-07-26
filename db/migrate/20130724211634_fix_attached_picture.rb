class FixAttachedPicture < ActiveRecord::Migration
  def up
    add_attachment :food_pictures, :picture
    remove_column :food_pictures, :path
  end

  def down
    remove_attachment :food_pictures, :picture
    add_column :food_pictures, :path, :string
  end
end
