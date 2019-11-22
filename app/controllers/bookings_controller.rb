class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :destroy, :update]
  before_action :set_spot, only: [:create]
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
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
    authorize @booking

    if @booking.save
      redirect_to spot_bookings_path(@booking), notice: 'The booking was successfully created.'
    else
      render :new
    end
  end

  def edit
    @booking.user = current_user
    authorize @booking
  end

  def update
    @booking.user = current_user
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'The booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to spot_bookings_path, notice: 'The booking was successfully destroyed.'
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
