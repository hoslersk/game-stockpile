class VideogamesController < ApplicationController
  def show
    @videogame = Videogame.find_by(id: params[:id])
  end
  def new
    @videogame = Videogame.new
  end
  def create
    #byebug
    @videogame = Videogame.create(params[:videogame])
    #title: title, studio: studio, platform: platform, avg_hours: avg_hours, metacritic_score: metacritic_score)
    redirect_to videogame_path(@videogame)
  end

  private

  def videogame_params
    params.require(:videogame).permit(:title, :studio, :platform, :avg_hours, :metacritic_score, videogame_collection_attributes: {})
  end

end
