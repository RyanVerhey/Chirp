class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :owner, class_name: "User"
  has_many :categories
  has_many :tags, through: :categories
  has_many :reviews
  has_many :photos
  geocoded_by :address
  after_validation :geocode

  def address
    [street_address, city, state, zip_code].join(", ")
  end
end
