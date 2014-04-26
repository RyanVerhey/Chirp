class ReviewsController < ApplicationController

  def index
    @reviews = Review.order(stars: :desc)
  end

  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def vote
    @review = Review.find(params[:id])
    @review.votes += params[:vote].to_i
    @review.save
    respond_to do |format|
      format.js{}
      format.json{ render :json => @review }
    end
  end

  private
  def review_params
    params.require(:review).permit(:stars, :content, :restaurant_id, :reviewer_id)
  end
end
