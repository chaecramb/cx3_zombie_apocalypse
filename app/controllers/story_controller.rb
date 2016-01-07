class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def show
    @story = Story.find(params[:id])
  end
end
