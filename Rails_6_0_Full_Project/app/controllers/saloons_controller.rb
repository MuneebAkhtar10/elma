class SaloonsController < ApplicationController

  def index
    if params[:keyword] != "" && params[:keyword]
      name = params[:keyword]
      @salons = Saloon.where('lower(name) = ?', name.downcase)
    else
      @salons = Saloon.all
    end
  end

  def show
    @salon = Saloon.find_by(id: params[:id])
    if @salon
      @subscription_plan = @salon.subscription_plan
      @subscription_plans = SubscriptionPlan.all
    else
      redirect_to root_path
    end
  end

  def new
    @saloon = Saloon.new
  end

  def create
    @new_saloon = Saloon.new(set_saloon)
    if @new_saloon.save
      flash[:success] = 'New Saloon saved'
      redirect_to saloons_path
    else
      flash[:alert] = 'Saloon not saved'
      redirect_to root_path
    end
  end

  def edit
    @saloon = Saloon.find_by(id: params[:id])
    redirect_to root_path unless @saloon
  end

  def update
    @salon = Saloon.find_by(id: params[:id])
    if @salon.update(set_saloon)
      flash[:success] = 'New Saloon saved'
      redirect_to saloons_path
    else
      flash[:alert] = 'Saloon not saved'
      redirect_to root_path
    end
  end

  def control_subscription
    debugger
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
      :subscription_plan_id
    )
  end
end
