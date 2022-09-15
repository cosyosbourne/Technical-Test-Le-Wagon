class Listing < ApplicationRecord
  has_many :bookings, :reservations, :missions, dependent: :destroy
end
