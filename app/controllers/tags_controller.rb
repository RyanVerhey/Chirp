class TagsController < ApplicationController
  def restaurants
    redirect_to tag_path(Restaurant.find(params[:tag][:id]))
  end

  def tag_restaurant
    restaurant = Restaurant.find(params[:restaurant][:id])
    restaurant.tags << Tag.find(params[:tag])
    redirect_to restaurant_path(restaurant)
  end

  def show
    @tag = Tag.find(params[:id])
  end

  private

  def tag_params

  end
end
