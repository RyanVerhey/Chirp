class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :photos

  belongs_to :owner, class_name: "User"
  validates :name, presence: true
end
