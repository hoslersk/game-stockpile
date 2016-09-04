class UsersController < ApplicationController

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end

  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def signin
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    @collections = Collection.all
  end

  private

  def safe_params
    params.require(:user).permit(:name, :username, :password)
  end

end
