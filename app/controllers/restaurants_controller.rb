class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  def show
    @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant
  end
end
