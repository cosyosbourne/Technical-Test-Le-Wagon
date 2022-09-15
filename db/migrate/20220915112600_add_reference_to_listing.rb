class AddReferenceToListing < ActiveRecord::Migration[7.0]
  def change
    add_reference(:listings, :bookings)
    add_reference(:listings, :reservations)
    add_reference(:listings, :missions)
  end
end
