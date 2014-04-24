class ReviewsController < ApplicationController

  def index
    @reviews = Review.order(stars: :desc)
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    if review.save
      redirect_to restaurant_path(review.restaurant)
    else
      render :new
    end
  end


  private
  def review_params
    params.require(:review).permit(:stars, :content, :restaurant_id, :reviewer_id)
  end
end
