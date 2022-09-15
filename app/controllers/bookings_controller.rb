class BookingsController < ApplicationController
  before_action :set_listing, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.save
    redirect_to listing_path(@listing)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end
end
