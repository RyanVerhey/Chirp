class ReviewsController < ApplicationController

  def index
    @reviews = Review.order(stars: :desc)
  end

  def new
    @review = Review.new
  end

  def create
    # puts params # "review"=>{"stars"=>"3", "content"=>"test"}
    Review.new(review_params)
  end


  private
  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
