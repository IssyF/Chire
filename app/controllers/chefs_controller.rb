class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    if @chef.save
      redirect_to chef_path(@chef)
    else
      render :new
    end
  end

  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine, :years_experience)
  end
end
