class ReservationsController < ApplicationController
  before_action :set_listing, only: %i[new create]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.listing = @listing
    @reservation.save
    redirect_to listing_path(@listing)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end
end
