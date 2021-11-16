class UsersController < ApplicationController
  def create
    if @user.save
      # why isnt this working - check!
      redirect_to profile_path(@user)
    else
      render :new
    end
  end
end
