class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  # before_action :set_spot, only: [:edit]
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @bookings = Booking.all
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    authorize @booking
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      flash[:alert] = "The chosen end date must be after the start date & cannot be in the past"
      redirect_to spot_path(params[:booking][:spot_id])
    end
  end

  def edit
    @booking.user = current_user
    authorize @booking
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'The booking was successfully updated.'

    else
      render :edit
    end
  end

  def destroy
    # @booking = Booking.find(params[:format])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path, notice: 'The booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :spot_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_spot
    @spot = Spot.find(params[:id])
  end
end
