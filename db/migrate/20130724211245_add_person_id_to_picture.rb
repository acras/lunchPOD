class AddPersonIdToPicture < ActiveRecord::Migration
  def change
    add_column 'food_pictures', 'person_id', :integer
  end
end
