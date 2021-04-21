class ItemsController < ApplicationController
  
  def show
    render json: set_item
  end
  
  def create
    item = Item.create(item_params)
    if item.valid?
      render json: item
    else
      render json: item.errors.full_messages
    end
  end

  def update
    set_item
    @item.update(item_params)
    # consider if we want stronger params for item update, e.g. quantity & expiration only
    
    render json: @item
  end

  def destroy 
    set_item.destroy
    render json: {}
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.permit(:name, :image, :quantity, :date_added, :expiration_date, :section_id)
  end
end
