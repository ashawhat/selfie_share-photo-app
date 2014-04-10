class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to album_path(@photo.album), notice: "Photo Uploaded"
    else
      render "new"
    end
  end

private
  def photo_params
    params.require(:photo).permit(:album_id, :caption, :photo)
  end
end
