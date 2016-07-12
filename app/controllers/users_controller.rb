class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
    @experts = @users.select do |user|
      user.expert == '1'

    end
    @address = params[:query_address]



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

