class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
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
    # CODE REVIEW: Not sure you want :owner to be mass-assignable...
    params.require(:restaurant).permit(:name, :owner, :description, :street_address, :city_state, :zip_code)
  end
end
