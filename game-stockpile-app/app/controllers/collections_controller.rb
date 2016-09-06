class CollectionsController < ApplicationController
  def show
    @collection = Collection.find_by(id: params[:id])
    @videogames = @collection.videogames
    @videogame = Videogame.new
  end
  def index
    @collections = Collection.all
  end
  def new
    @collection = Collection.new
    #@collection.videogame_collections.build.build_videogame
    3.times {@collection.videogames.build}
    # byebug
  end
  def create
    byebug
    @collection = Collection.create(collection_params)
    #name: params[:collection][:name], user_id: current_user.id)
    redirect_to collection_path(@collection)
  end
  def destroy
    @collection = Collection.find_by(id: params[:id])
    @user = @collection.user
    @collection.destroy
    redirect_to user_path(@user)
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :user_id, :videogame_ids => [], videogames_attributes: [:id, :title, :studio, :platform, :avg_hours, :metacritic_score])
  end

end
