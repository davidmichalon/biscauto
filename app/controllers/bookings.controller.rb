class BookingsController < ApplicationController
  #
  # before_action :find_room

  def index
    @bookings = Booking.where("user_id = ? AND e >= ?", @user.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(user_id: @user.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:user_id, :planned_for))
    @booking.user = @user
    if @booking.save
      redirect_to user_bookings_path(@user, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      redirect_to user_bookings_path(@room)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.user = @user

    if @booking.update(params[:booking].permit(:user_id, :planned_for))
      flash[:notice] = 'Your booking was updated succesfully'

    else

      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to user_booking_path(@user, @booking)
      else
        render 'new'
      end
  end

  def find_user
    if params[:user_id]
      @room = User.find_by_id(params[:user_id])
    end
  end

  def booking_params
     params.require(:booking).permit(:user_id)
  end

end
