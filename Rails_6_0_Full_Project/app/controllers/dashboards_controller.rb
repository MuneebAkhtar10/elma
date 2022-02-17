class DashboardsController < ApplicationController
  def dashboard_1
    redirect_to appviews_pricing_path
  end

  def dashboard_2
  end

  def dashboard_3
    @extra_class = "sidebar-content"
  end

  def dashboard_4
    render :layout => "layout_2"
  end

  def dashboard_4_1
  end

  def dashboard_5
  end

end
