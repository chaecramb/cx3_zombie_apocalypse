class AbilityController < ApplicationController

  def keano
    @keano = Character.find(2)
    @keano.attack += 5
    @ability = Ability.find(1)
    @ability.cooldown += 3
    @ability.save
    @keano.save


    respond_to do |format|
      format.js
      format.json {render :json => @ability  }
    end
  end

end
