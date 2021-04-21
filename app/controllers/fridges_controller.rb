class FridgesController < ApplicationController
  def show
    render json: set_fridge
  end

  def create
    fridge = Fridge.create(fridge_params)
    if fridge.valid?
      render json: fridge
    else
      render json: fridge.errors.full_messages
    end
  end


  private
  def fridge_params
    params.permit(:name, :user_id)
  end

  def set_fridge
    @fridge = Fridge.find(params[:id])
  end
end
