class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @review.restaurant = @restaurant
  end
end
