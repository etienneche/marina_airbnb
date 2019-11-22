class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show, :edit, :update]
  before_action :set_spot, only: [:edit]
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

    if @booking.save
      redirect_to bookings_path(@booking)
    else
      flash[:alert] = "The chosen end date must be after the start date & cannot be in the past"
      redirect_to spot_path(params[:booking][:spot_id])
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to spot_bookings_path(@booking)
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
    params.require(:booking).permit(:start_date, :end_date, :spot_id)
  end

  def set_booking
    @booking = Booking.find(params[:format])
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
