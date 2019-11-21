class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :destroy, :update]
  def index
    @spots = Spot.geocoded
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
    else
      render :edit
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path
  end

  private

  def spot_params
    params.require(:spot).permit(:marina_name, :price_per_night, :address, :description, :photo, :boat_size, :spot_name)
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
