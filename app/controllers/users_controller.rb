class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all
    @address = params[:query_address]
    @users_around = User.near(@address, 50)

    @experts_around = @users_around.select do |user|
      user.expert == '1'
    end

      @markers = Gmaps4rails.build_markers(@experts_around) do |expert, marker|
        marker.lat expert.latitude
        marker.lng expert.longitude
      end



  end


  def show

  end


  def edit
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


    def set_user
      @user = User.find(params[:id])
    end


    def users_params
      params.require(:user).permit(:email)
    end
end

