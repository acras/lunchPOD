class CreateFoodPictures < ActiveRecord::Migration
  def change
    create_table :food_pictures do |t|
      t.date :day
      t.string :path

      t.timestamps
    end
  end
end
