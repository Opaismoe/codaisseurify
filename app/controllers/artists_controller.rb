class ArtistsController < ApplicationController
before_action :set_artist, only: [:show, :create, :new]

  def index
    @artists = Artist.all
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

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
