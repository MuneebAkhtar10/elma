class SaloonsController < ApplicationController

  def index
    @salons = Saloon.all
  end

  def show
    @salon = Saloon.find_by(id: params[:id])
    @subscription_plan = @salon.subscription_plan
    @subscription_plans = SubscriptionPlan.all
  end

  def new
    @saloon = Saloon.new
  end

  def create
    @new_saloon = Saloon.new(set_saloon)
    if @new_saloon.save
      flash[:success] = 'New Saloon saved'
      redirect_to appviews_projects_path
    else
      flash[:alert] = 'Saloon not saved'
      redirect_to root_path
    end
  end

  def edit
    @saloon = Saloon.find_by(id: params[:id])
  end

  def update
    @salon = Saloon.find_by(id: params[:id])
    if @salon.update(set_saloon)
      flash[:success] = 'New Saloon saved'
      redirect_to appviews_projects_path
    else
      flash[:alert] = 'Saloon not saved'
      redirect_to root_path
    end
  end

  private

  def set_saloon
    params.require(:saloon).permit(
      :name,
      :address,
      :city,
      :country_code,
      :phone,
      :longitude,
      :latitude,
    )
  end
end
