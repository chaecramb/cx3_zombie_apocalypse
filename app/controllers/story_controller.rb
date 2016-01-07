class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def show
    @story = params[:story_id] || Story.find(params[:id])
    @characters = Character.all
    @living_characters = Character.where(status: ['alive', 'infected'])
    @infected_characters = Character.where(status: 'infected')
    # @event = Event.where.not(triggered: 1).sample
    @event = Event.all.sample
    @event.triggered += 1
    @event.save
    @abilities = Ability.all
  end

  private
  def story_params
    params.require(:story).permit(:story_id)
  end
end
