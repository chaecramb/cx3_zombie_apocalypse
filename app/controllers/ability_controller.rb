class AbilityController < ApplicationController

  def show
    if params[:id] == '1'
      redirect_to story_path(1)
    end
  end

end
