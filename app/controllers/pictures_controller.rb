class PicturesController < ApplicationController

  def index 
    pictures = Picture.all
    render json: pictures.to_json(except: [:created_at, :updated_at])
  end

  def create
    image = Cloudinary::Uploader.upload(params[:image_url])
    picture = Picture.new(image_url: image["url"], title: params["title"], category_id: params["category_id"], user_id: params["user_id"])
    if picture.save
        render json: picture.to_json(except: [:created_at, :updated_at])
    else 
        render json: {message: picture.errors.full_messages}
    end 
  end

  def update 
    picture = Picture.find(params[:id])
    picture.update(likes: params["likes"])
    if picture.save 
      render json: picture.to_json(except: [:created_at, :updated_at])
    else 
        render json: {error: "oops"}
    end 
  end

  def destroy 
  
    picture = Picture.find_by(id: params[:id].to_i)
    
    if picture.destroy
      render json: {message: "successful"}
    else 
      render json: {message: 'error'}
    end 
  end 


  private 
  def picture_params
    params.require(:picture).permit(:title, :image_url, :category_id, :user_id, :likes)
  end

end