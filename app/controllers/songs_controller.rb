class SongsController < ApplicationController


  def index
    @artist = Artist.find(params[:id])
  end

  def show

  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to request.env["HTTP_REFERER"]
  end
end
