class AlbumsController < ApplicationController

  def index
    @album = Album.new
  end

  def new
    @album = Album.new
    render('albums/new.html.erb')
  end

  def create
    @album = Album.create( album_params )
    if @album.save
      redirect_to "/albums/#{@album.id}", notice: "You added an album!"
    else
      render "new"
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  private
  def album_params
    params.require(:album).permit(:name, :photo)
  end
end
