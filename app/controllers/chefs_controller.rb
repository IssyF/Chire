class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    if @chef.save
      redirect_to chef_path(@chef), alert: "You successfully created a new chef profile!"
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @chefs = Chef.search_by_cuisine(params[:query])
    else
      @chefs = Chef.all
    end
  end

  def show
    @chef = Chef.find(params[:id])
  end

  private

  def chef_params
    params.require(:chef).permit(:cuisine, :years_experience, :hourly_rate)
  end
end
