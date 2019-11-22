class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :destroy, :update]

  def index
    @spots = policy_scope(Spot).order(created_at: :desc)
    if params[:query].present?
      @spots = Spot.search_by_marina_name_and_address(params[:query]).geocoded
    else
      @spots = Spot.all
    end
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @user = current_user
    @booking = Booking.new
    @reviews = Review.all
    @review = Review.new
    authorize @spot
  end

  def new
    @spot = Spot.new
    authorize @spot
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    authorize @spot

    if @spot.save
      redirect_to spot_path(@spot), notice: 'The Marina spot was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spot_path(@spot), notice: 'The Marina spot was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path, notice: 'The Marina spot was successfully destroyed.'
  end

  private

  def spot_params
    params.require(:spot).permit(:marina_name, :price_per_night, :address, :description, :photo, :boat_size, :spot_name)
  end

  def set_spot
    @spot = Spot.find(params[:id])

  end
end
