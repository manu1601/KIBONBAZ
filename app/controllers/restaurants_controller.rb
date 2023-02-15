class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  def show
    @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant
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
    params.require(:restaurant).permit(:name, :address, :contact_number)
  end
end
