class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :destroy, :update]
  before_action :set_spot, only: [:create]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.spot = @spot

    if @booking.save
      redirect_to spot_bookings_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end
end
