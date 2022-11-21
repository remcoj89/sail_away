class Boat < ApplicationRecord
  belongs_to :users
  # has_many :bookings
  validate :name, :description, :address, :price, presence: true
end
