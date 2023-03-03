class FavoritesController < ApplicationController
  def index
    @favorites = current_user.all_favorites
    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
      @restaurants.each do |restaurant|
        @favorites = @favorites.where(favoritable_id: restaurant.id)
      end
    else
      @favorites = current_user.all_favorites
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, status: :see_other
  end
end

#  @favorites = @favorites.where(favoritable_id: @restaurants[0].id)
