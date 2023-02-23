class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.user = current_user
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(restaurant_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
