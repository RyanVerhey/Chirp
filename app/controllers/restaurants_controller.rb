class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @tags = @restaurant.tags.inject([]) { |arr,tag| arr << tag.name }
    @tags = @tags.join(", ")
    @tag_list = [] #Tag.all.inject([]) { |arr,tag| (arr << tag) if (!@restaurant.tags.include?(tag)) }
    Tag.all.each do |tag|
      if !@restaurant.tags.include?(tag)
        @tag_list << tag
      end
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :owner, :description, :street_address, :city_state, :zip_code)
  end
end
