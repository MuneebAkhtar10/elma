class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find_by(id: params[:id])
    redirect_to root_path unless @client
  end

  def new
    @client = Client.new
  end

  def create
    @new_client = Client.new(set_client)
    if @new_client.save
      flash[:success] = 'New Client saved'
      redirect_to appviews_contacts_path
    else
      flash[:alert] = 'Client not saved'
      redirect_to root_path
    end
  end

  def edit
    @client = Client.find_by(id: params[:id])
    redirect_to root_path unless @client
  end

  def update
    @client = Client.find_by(id: params[:id])
    if @client.update(set_client)
      flash[:success] = 'New Client saved'
      redirect_to appviews_contacts_path
    else
      flash[:alert] = 'Client not saved'
      redirect_to root_path
    end
  end

  private

  def set_client
    params.require(:client).permit(
      :name,
      :address,
      :phone,
      :country,
      :country_code,
      :saloon_id,
    )
  end
end
