class CupsController < ApplicationController

  def cup_params
    params.require(:cup).permit!
  end

end
