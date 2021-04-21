class SectionsController < ApplicationController

  def show
    render json: set_section
  end

  def create
    section = Section.create(section_params)
    if section.valid?
      render json: section
    else
      render json: section.errors.full_messages
    end
  end

  def update
    set_section
    @section.update(section_params)

    render json: @section
  end

  def destroy
    set_section.destroy

    render json: {}
  end

  private
  def set_section
    @section = Section.find(params[:id])
  end

  def section_params
    params.permit(:name, :fridge_id)
  end

end
