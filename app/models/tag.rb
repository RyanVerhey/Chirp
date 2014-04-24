class Tag < ActiveRecord::Base
  has_many :categories
  has_many :restaurants, through: :categories
end
