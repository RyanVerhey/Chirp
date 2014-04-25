class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :reviewer
      t.references :restaurant
      t.text :content
      t.integer :stars
      t.integer :votes, default: 0
    end
  end
end
