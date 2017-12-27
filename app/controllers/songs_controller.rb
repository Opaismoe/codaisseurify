class SongsController < ApplicationController

  def index
    @songs = Song.all
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]
    @song.save
    redirect_to request.env["HTTP_REFERER"]
  end


  def destroy
    @artist = artist_path(params[:id])
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to request.env["HTTP_REFERER"]
  end

  private

  def song_params
    params
      .require(:song)
      .permit(:name)
  end
end

private
