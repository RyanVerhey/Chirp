class Review < ActiveRecord::Base
  validates :restaurant_id, presence: true
  validates :reviewer_id, presence: true
  validates_numericality_of :stars, less_than_or_equal_to: 5
  validates_numericality_of :votes

  belongs_to :restaurant
  belongs_to :reviewer, class_name: "User"
end
