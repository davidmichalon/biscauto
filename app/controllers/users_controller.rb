class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]





  def index
    @users = User.all
    @booking = Booking.new
    @address = params[:query_address]
    @users_around = User.near(@address, 50)

    @experts_around = @users_around.select do |user|
      user.expert == '1'
    end

    @markers = Gmaps4rails.build_markers(@experts_around) do |expert, marker|
      marker.lat expert.latitude
      marker.lng expert.longitude
      marker.picture ({"url" => "#{view_context.image_url("logo_32.png")}", "width" => 32, "height" => 32})
      marker.infowindow render_to_string(partial: 'users/infowindow', locals: {expert: expert})
    end
  end


  def show
  @user = User.find(params[:id])
  end


  def edit
  @profile = Profile.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  # after_create :create_profile

  def create_profile
  self.profile.create
  end

  private


    def set_user
      @user = User.find(params[:id])
    end


    def users_params
      params.require(:user).permit(:email)
    end
end

