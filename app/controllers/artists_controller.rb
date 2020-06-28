class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :delete]
  
  def index
    @artists = Artist.all
  end

  def show
    @songs = @artist.songs
    @song_count = @songs.count
    flash[:artist_name] = @artist.name
    
  end

  def new
    
    @artist = Artist.new
    
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      redirect_to new_artist_path
    end
  end

  def edit

  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      redirect_to edit_artist_path
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
