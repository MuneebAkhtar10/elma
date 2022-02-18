class PagesController < ApplicationController
  def search_results
  end

  def lockscreen
    render :layout => "empty"
  end

  def invoice
    @salon = Saloon.find_by(id: params[:salon_id])
    if @salon
      @invoice = Invoice.find_by(saloon_id: @salon.id)
    else    
      redirect_to root_path
    end
  end

  def invoice_print
    @salon = Saloon.find_by(id: params[:salon_id])
    if @salon
      @invoice = Invoice.find_by(saloon_id: @salon.id)
      render :layout => "empty"
    else
      redirect_to root_path
    end
  end

  def login
    render :layout => "empty"
  end

  def login_2
    render :layout => "empty"
  end

  def forgot_password
      render :layout => "empty"
  end

  def register
    render :layout => "empty"
  end

  def internal_server_error
    render :layout => "empty"
  end

  def empty_page
  end

  def not_found_error
    render :layout => "empty"
  end

end
