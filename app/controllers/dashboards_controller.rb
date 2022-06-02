class DashboardsController < ApplicationController
  def home
    @reservations = current_user.reservations
  end


end
