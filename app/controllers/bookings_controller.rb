class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end
end
