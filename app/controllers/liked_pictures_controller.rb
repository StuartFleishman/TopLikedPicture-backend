class LikedPicturesController < ApplicationController

  def index
    liked = LikedPicture.all
    render json: liked.to_json(except: [:created_at, :updated_at])
  end 


  def create 
    liked = LikedPicture.new(liked_picture_params)
    if liked.save 
      render json: {status: 201}
    else 
      render json: { status: 500, message: "There was an error in creating an account"}
    end
  end





  private 
  def liked_picture_params 
    params.require(:liked_picture).permit(:picture_id, :user_id)
  end 



end
