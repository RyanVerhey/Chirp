class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.belongs_to :owner
      t.text :description
      t.integer :average_stars
      t.string :street_address
      t.string :city_state
      t.integer :zip_code
      t.timestamps
    end
  end
end
