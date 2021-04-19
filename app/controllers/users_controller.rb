class UsersController < ApplicationController

  def login
    user = User.find_by(user_params)
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: user.errors.full_messages
    end
    

  end


  private
  def user_params 
    params.permit(:email, :name)
  end
end
