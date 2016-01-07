class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def show
    @story = Story.find(params[:id])
    @characters = Character.all
    @event = Event.where.not(triggered: 1).sample
  end
end
