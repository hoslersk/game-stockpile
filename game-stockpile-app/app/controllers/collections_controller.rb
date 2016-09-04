class CollectionsController < ApplicationController
  def show
    @collection = Collection.find_by(id: params[:id])
    @videogames = Videogame.all
    @videogame = Videogame.new
  end
  def index
    @collections = Collection.all
  end
  def new
    @collection = Collection.new
    @collection.videogame_collections.build.build_videogame
    # byebug
  end
  def create
    #byebug
    @collection = Collection.create(name: params[:collection][:name], user_id: current_user.id)
    redirect_to collection_path(@collection)
  end
end
