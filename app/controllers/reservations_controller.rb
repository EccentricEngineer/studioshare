class ReservationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show ]
  # skip_after_action :verify_policy_scoped, only: :index
  before_action :set_reservation, only: [ :show ]
  before_action :set_studio, only: [ :new, :create ]

  def index
    @user = current_user
    @reservations = current_user.reservations
  end

  def show
    # authorize @reservation
  end

  def new
    @studio = Studio.find(params[:studio_id])
    @reservation = Reservation.new

    # authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # authorize @reservation
    @reservation.user = current_user
    @reservation.studio = Studio.find(params[:studio_id])
    if @reservation.save
      redirect_to dashboards_path
    else
      redirect_to studios_path
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end

  def reservation_params
    params[:reservation].permit(:date, :status)
  end
end
