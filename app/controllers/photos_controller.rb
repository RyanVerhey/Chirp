class PhotosController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @photo = Photo.new(photo_params, :restaurant_id => @restaurant.id)
    if @photo.save
      @restaurant.photos << @photo
      redirect_to restaurant_path(@restaurant)
    else
      alert "error"
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:food_image)
  end
end
