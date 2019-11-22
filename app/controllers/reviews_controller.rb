class ReviewsController < ApplicationController
  before_action :set_spot, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.spot = @spot

    if @review.save
      redirect_to spot_path(@spot)
    else
      redirect_to spot_path(@spot)
      flash[:alert] = "Minimum of 10 characteres."
    end
  end
  def new
    @review = Review.new

  end

  private

  def review_params
    params.require(:review).permit(:stars, :description)
  end

  def set_review
    @review = Review.find(params[:id])
  end
  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

end
