class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artists_path
  end

  private

  def artwork_params
    params
      .require(:artist)
  end


end
