class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @suggestions = Suggestion.where(tag_id: @tag)
  end
end
