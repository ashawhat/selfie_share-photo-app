class AlbumsController < ApplicationController

  def index
    @album = Album.new
  end

  def new
    @album = Album.new
    render('albums/new.html.erb')
  end

  def create
    @album = current_user.albums.new( album_params )
    if @album.save
      redirect_to album_path(@album), notice: "You added an album!"
    else
      render "new"
    end
  end

  def show
    @album = Album.find(params[:id])
    params[:album_id] = params[:id]
  end

  private
  def album_params
    params.require(:album).permit(:name, :user_id, :photo)
  end
end
