class CupsController < ApplicationController

  def update
    @cup = Cup.find(params[:id])
    if @cup.update_attributes(cup_params)
      render json: @cup
    end
  end

  def cup_params
    params.require(:cup).permit!
  end

end
