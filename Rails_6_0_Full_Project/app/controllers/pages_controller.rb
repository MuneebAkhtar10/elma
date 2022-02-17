class PagesController < ApplicationController
  def search_results
  end

  def lockscreen
    render :layout => "empty"
  end

  def invoice
    @salon = Saloon.find_by(id: params[:salon_id])
    @invoice = Invoice.find_by(saloon_id: @salon.id)
  end

  def invoice_print
    @salon = Saloon.find_by(id: params[:salon_id])
    @invoice = Invoice.find_by(saloon_id: @salon.id)
    render :layout => "empty"
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
