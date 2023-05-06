class ParkingStatus < ApplicationRecord
  belongs_to :parking_fee
  belongs_to :parking_slot
  belongs_to :car
  belongs_to :customer
  belongs_to :permission
end
