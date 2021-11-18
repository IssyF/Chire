class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  def schedule

  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :duration)
  end
end
