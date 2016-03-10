class ArtistsController < ApplicationController

  def new
    
  end

  def create
    @artist = Artist.new(post_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  private

  def post_params
    params.require(:artist).permit(:name, :bio)
  end


end