class BookingsController < ApplicationController


  def index
    @bookings = Booking.where(:user_id)
      end

  def new
    @expert = User.find(params[:user_id])
    @booking = Booking.new(expert: @expert)
  end

  def create
    @expert = User.find(params[:user_id])
    @booking =  Booking.new(booking_params)
    @booking.expert = @expert
    @booking.client = current_user
    @booking.booking_status = "pending"
    if @booking.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
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

  def booking_params
    params.require(:booking).permit(:price, :comments, :planned_for)
  end

end
