class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :categories
  has_many :tags, through: :categories
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
end
