class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @suggestions = Suggestion.where(tag_id: @tag)
    # search
    if params[:query].present?
      @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
      @restaurants.each do |restaurant|
        @suggestions = @suggestions.where(restaurant_id: restaurant.id)
      end
    else
      @suggestions = Suggestion.where(tag_id: @tag)
    end
  end
end

# @suggestions = @suggestions.where(restaurant_id: @restaurants[0].id)
