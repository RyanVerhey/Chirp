class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :restaurant_id
      t.string :caption
      t.string :food_image
    end
  end
end
