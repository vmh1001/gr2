class Customer < ApplicationRecord
  has_many :cars
  has_many :parking_status

end
