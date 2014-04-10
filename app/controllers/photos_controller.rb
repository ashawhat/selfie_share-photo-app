class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.new(photo_params)
    if @photo.save
      redirect_to album_path(@photo.album), notice: "Photo Uploaded"
    else
      render "new"
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:id])
    current_album = @photo.album
    @photo.destroy
    redirect_to album_path(current_album)
  end

private
  def photo_params
    params.require(:photo).permit(:album_id, :caption, :photo)
  end
end
