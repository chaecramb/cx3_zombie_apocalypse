class StoryController < ApplicationController

  def index
    @story = Story.first
  end

  def event_result
    @characters = Character.find(params[:q].first params[:q].size - 1)
    @event = Event.find(params[:q].last)

    @combined_attack = @characters.inject(0){|t, c| t+=c.attack }
    @combined_morale = @characters.inject(0){|t, c| t+=c.morale }

    case @event.event_type
    when 1
      if @combined_attack >= @event.difficulty 
        @result = 'success'
        @characters.each do |character|        
          character.attack += (@event.difficulty / 2).round
          character.save
        end
      else 
        @result = 'failure'
        @characters.each do |character|        
          character.status = 'dead'
          character.save
        end
      end
    when 2
      if @combined_attack >= @event.difficulty 
        @result = 'success'
        @characters.each do |character|        
          character.attack += @event.weapon_id
          character.save
        end
      else 
        @result = 'failure'
        @characters.each do |character|        
          character.status = 'dead'
          character.save
        end
      end
    when 3
        if @combined_morale >= @event.difficulty 
          @result = 'success' 
          @characters.each do |character|        
            character.morale += (@event.difficulty / 2).round
            character.save
            if charcter.morale <= 0
              character.status = 'dead'
              character.save
            end
          end
        else 
          @result = 'failure'
          @characters.each do |character|        
            character.morale -= (@event.difficulty / 2).round
            character.save
          end
        end
    end   

    output = {'result' => @result}.to_json
    render json: output
  end

  def opener
    post_character = Character.all.sample
    render json: {character_id: post_character.id, name: post_character.name, opener: post_character.random_opener}
  end

  def reply
    post_character = Character.find(params[:character_id])
    reply_character = Character.excluding(post_character).sample
    render json: {name: reply_character.name, reply: reply_character.random_reply}
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
      @syed = Character.find(14)
      @syed.status = 'alive'
      @syed.save
    end
  end

  private
  def story_params
    params.require(:story).permit(:story_id)
  end
end
