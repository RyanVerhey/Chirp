class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :categories
  has_many :restaurants, through: :categories
end
