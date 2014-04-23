class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
end
