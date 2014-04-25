class AddVotesToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :votes, :integer, :default=> 0
  end
end
