class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :destroy, :update]
  def index
    @spots = Spot.all
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)

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
    params.require(:spot).permit(:name, :price_per_night, :address, :description, :photo_url)
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
