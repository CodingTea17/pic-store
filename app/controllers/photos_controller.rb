class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      @photos = current_user.photos
    end
  end

  def new
   @photo = current_user.photos.new
  end

  def create
   @photo = current_user.photos.new(photo_params)
   if @photo.save
    flash[:notice] = "Successfully added new photo!"
    redirect_to root_path
   else
    flash[:alert] = "Error adding new photo!"
    render :new
   end
  end

private
  def photo_params
   params.require(:photo).permit(:title, :image)
  end
end
