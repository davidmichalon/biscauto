class CocktailsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end


  def show
    @user = User.new
  end




  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

    def users_params
      params.require(:user).permit(:email)
    end
end

