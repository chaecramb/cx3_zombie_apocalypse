class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def show
    @story = Story.find(params[:id])
    @characters = Character.all
    @living_characters = Character.where(status: ['alive', 'infected'])
    # @event = Event.where.not(triggered: 1).sample
    @event = Event.all.sample
    @event.triggered += 1
    @event.save
  end
end
