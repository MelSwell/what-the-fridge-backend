class SectionsController < ApplicationController

  def show
    section = Section.find(params[:id])

    render json: section
  end

  def create
    section = Section.create(params.permit(:name, :fridge_id))
    if section.valid?
      render json: section
    else
      render json: section.errors.full_messages
    end
  end

end
