class FavoritesController < ApplicationController
  def index
    @favorites = current_user.all_favorites
    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
      @favorites = @favorites.where(favoritable_id: @restaurants[0].id)
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
