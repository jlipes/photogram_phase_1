class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @selected_photo=Photo.find(params["id"])
  end

  def destroy
    @selected_photo=Photo.find(params["id"])
    @selected_photo.destroy
    redirect_to("/photos.html")
  end

  def new_form

  end

end
