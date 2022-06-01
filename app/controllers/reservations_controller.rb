class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_reservation, only: [ :show ]
  before_action :set_studio, only: [ :new, :create ]

  def index
    @reservations = current_user.reservations
  end

  def show
    authorize @reservation
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    authorize @reservation
    @reservation.user = current_user
    @reservation.studio = Studio.find(params[:studio_id])
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      redirect_to studio_path(@studio)
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
    params[:reservation].permit(:status, :date)
  end
end
