class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @restaurants = search

    @markers = @restaurants.geocoded.map do |restaurant|
      @rating = restaurant_ratings(restaurant)
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "popup", locals: { restaurant: restaurant, rating: @rating }),
        marker_html: render_to_string(partial: "marker")
      }
    end
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
    @review = Review.new
    @review.restaurant = @restaurant
    @reviews = @restaurant.reviews
    @rating = restaurant_ratings(@restaurant)
  end

  def add_favorite
    @restaurant = Restaurant.find(params[:restaurant_id])
    current_user.favorite(@restaurant)
    redirect_to favorites_path, status: :see_other
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :contact_number, photos: [])
  end

  def restaurant_ratings(restaurant)
    @reviews = Review.all
    @sum = 0
    @restaurant_reviews = @reviews.where(restaurant_id: restaurant.id)
    if @restaurant_reviews.empty?
    else
      @restaurant_reviews.each do |review|
        @sum += review.rating
      end
      @rating = @sum.fdiv(@restaurant_reviews.length)
    end
  end

  def search
    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end
end
