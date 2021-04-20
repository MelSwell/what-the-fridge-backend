class ItemsController < ApplicationController
  def create
    item = Item.create(item_params)
    if item.valid?
      render json: item
    else
      render json: item.errors.full_messages
    end
  end

  private

  def item_params
    params.permit(:name, :image, :quantity, :date_added, :expiration_date, :section_id)
  end
end
