class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def event_result
    params[:q]
    output = {'result' => 'success'}.to_json
    render json: output
  end

  def show
    @story = Story.find(params[:id])
    @characters = Character.all
    @living_characters = Character.where(status: ['alive', 'infected'])
    @infected_characters = Character.where(status: 'infected')
    # @event = Event.where.not(triggered: 1).sample
    @event = Event.all.sample
    @event.triggered += 1
    @event.save
    @abilities = Ability.where(cooldown: 0)
    @abilities_on_cooldown = Ability.where.not(cooldown: 0)
    @next_day = params[:next_day]
    if @next_day
      if @abilities_on_cooldown
        @abilities_on_cooldown.each do |ability|
          ability.cooldown -= 1
          ability.save
        end
      end
    end
  end

  private
  def story_params
    params.require(:story).permit(:story_id)
  end
end
