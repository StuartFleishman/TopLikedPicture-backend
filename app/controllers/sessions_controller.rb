
class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      render json: { status: 201, user: user, logged_in: true}
    else 
      render json: { status: 401, message: "User not found or password incorrect"}
    end
  end

  
end
