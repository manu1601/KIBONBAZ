class FavoritesController < ApplicationController
  def index
    @favorites = current_user.all_favorites
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, status: :see_other
  end
end
