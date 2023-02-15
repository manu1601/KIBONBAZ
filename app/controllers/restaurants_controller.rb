class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # @review.restaurant = @restaurant
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_number, photos: [])
  end
end
