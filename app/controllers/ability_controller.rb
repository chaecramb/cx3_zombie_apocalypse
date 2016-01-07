class AbilityController < ApplicationController

  def show
    if params[:id] == 1
      redirect_to action: "story", id: 5
    end
  end

end
