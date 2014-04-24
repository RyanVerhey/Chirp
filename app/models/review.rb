class Review < ActiveRecord::Base
  # validates :reviewer, presence: true, uniqueness: true
  validates :restaurant, presence: true

  belongs_to :reviewer, class_name: 'User'
  belongs_to :restaurant
end
