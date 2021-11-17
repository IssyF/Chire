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

  #def edit
    # @booking = Booking.find(params[:id])
  #end

  #def update
    #@booking = Booking.find(params[:id])
    #if @booking.update(booking_params)
      #redirect_to profile_path
    #else
      #render :edit
  #end

  #def destroy
    #@booking = Booking.find(params[:id])
    #@booking.destroy
    #redirect_to profile_path
  #end

#private

 #def strong_params
  #params.require(:booking).permit(:start_date_time, :end_date_time)

end
