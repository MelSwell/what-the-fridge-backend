class FridgesController < ApplicationController
  def show
    fridge = Fridge.find(params[:id])
    render json: fridge
  end
end
