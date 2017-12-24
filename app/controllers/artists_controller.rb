class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create

  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to root_path, notice: "Delete success"
  end

end
