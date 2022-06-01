class ReviewsController < ApplicationController
  before_action :set_studio, only: [ :index, :new, :create ]
  # skip_after_action :verify_policy_scoped, only: :index
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def new
    @review = Review.new
    # authorize @review
  end

  def create
    @review = Review.new(review_params)
    # authorize @review
    @review.user = current_user
    @review.studio = Studio.find(params[:studio_id])
    @review.save
    redirect_to studio_path(@studio)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_studio
    @studio = Studio.find(params[:studio_id])
  end
end
