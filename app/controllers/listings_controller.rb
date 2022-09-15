class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def show
    set_listing
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    set_listing
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def listing_params
    params.require(:listing).permit(:num_rooms)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
