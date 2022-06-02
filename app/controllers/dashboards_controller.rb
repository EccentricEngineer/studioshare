class DashboardsController < ApplicationController
  def home
    @reservations = current_user.reservations
    @studios = current_user.studios
  end


end
