class UsersController < ApplicationController

  def profile
    current_user
    @bookings= Booking.where(curent_user.id == user_id)
  end

end
