class StudiosController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_studio, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @studios = Studio.search_by_name_and_address(params[:query]) #Ali:Confirm this based on search criteria from frontend!
    else
      # @studios = policy_scope(Studio)
      # authorize @studios
    end
  end

  def show
    # @review = Review.new
    # @reservation = Reservation.new
  end

  def new
    @studio = Studio.new
    # authorize @studio
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.user = current_user
    # authorize @studio
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @studio.update(studio_params)
      redirect_to studio_path(@studio)
    else
      render :edit
    end
  end

  def destroy
    if @studio.destroy
      redirect_to studios_path(@studio)
    else
      render :index
    end
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
    # authorize @studio # use when you require pundit
  end

  def studio_params
    params[:studio].permit(:name, :price, :photo_url, :address, :opening_hour, :closing_hour)
  end
end
