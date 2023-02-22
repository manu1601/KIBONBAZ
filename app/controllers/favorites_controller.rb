class FavoritesController < ApplicationController
  def index
    @favorites = current_user.all_favorites
  end
end
