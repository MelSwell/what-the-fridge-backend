class SectionsController < ApplicationController

  def show
    section = Section.find(params[:id])

    render json: section
  end

end
