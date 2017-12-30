class ArtistsController < ApplicationController
before_action :set_artist, only: [:show, :create, :new]

  def index
    @artists = Artist.all
    @songs = Song.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
