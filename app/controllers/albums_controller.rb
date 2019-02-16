class AlbumsController < ApplicationController

    ALBUMS = {
    1 => { album_name: "Black Album", year: 1987, genre: "rock" },
    2 => { album_name: "White Album", year: 1965, genre: "classic rock" }
  }

  def index
    if params[:genre].blank?
      @albums = ALBUMS
    else
      @albums = ALBUMS.select do |id, album|
        album[:genre] == params[:genre]
      end
    end
  end

  def create
  end

  def show
    @album = ALBUMS[params[:id].to_i]
  end


end
