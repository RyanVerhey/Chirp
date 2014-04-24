class TagsController < ApplicationController
  def tag_restaurant
    restaurant = Restaurant.find(params[:restaurant][:id])
    restaurant.tags << Tag.find(params[:tag])
    redirect_to restaurant_path(restaurant)
  end
end
