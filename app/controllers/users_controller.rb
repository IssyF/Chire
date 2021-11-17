class UsersController < ApplicationController

  def profile
    current_user
    @bookings = Booking.where(user_id: current_user)
  end

end
