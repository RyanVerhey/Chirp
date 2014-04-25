class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.belongs_to :restaurant
      t.belongs_to :tag
    end
  end
end
