class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    # get the tag id from the params
    @tag = Tag.find(params[:id])
    @suggestions = Suggestion.where(tag_id: @tag)
  end
end
