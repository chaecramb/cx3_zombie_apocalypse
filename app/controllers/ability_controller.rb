class AbilityController < ApplicationController

  def show
    @ability = Ability.find(params[:id])
    @character = Character.find(@ability.character_id)
    case @ability.stat
    when "attack"
      @character.attack += @ability.boost
    when "morale"
      @character.morale += @ability.boost
    end
    @ability.cooldown += @ability.days_to_cooldown
    @ability.save
    @character.save
  end

end
