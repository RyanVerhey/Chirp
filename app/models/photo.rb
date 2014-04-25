class Photo < ActiveRecord::Base
  mount_uploader :food_image, FoodImageUploader

  belongs_to :restaurant
end
