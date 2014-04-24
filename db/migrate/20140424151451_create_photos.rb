class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :restaurant
      t.string :food_image
      t.timestamps
    end
  end
end
