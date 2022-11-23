class BookingsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@bookings)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = booking.find(params[:id])
    @booking.user = current_user
  end

  def update
    @booking = booking.find(params[:id])
    @booking.update(params[:boat])
  end

  def destroy
    @booking.destroy
    redirect_to booking_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

end
