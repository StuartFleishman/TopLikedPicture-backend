class UsersController < ApplicationController

  def index 
    users = User.all
    render json: users.to_json(except: [:created_at, :updated_at])
  end

  def create 
    user = User.new(user_params)

    if user.save 
      session[:id] = user.id
      render json: { status: 201, user: user, logged_in: true}
    else 
      render json: { status: 500, message: user.errors.full_messages}
    end
  end


  private 
  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 
 
end
