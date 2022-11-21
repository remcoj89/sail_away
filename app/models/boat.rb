class Boat < ApplicationRecord
  belongs_to :users
  has_many :bookings
  validates :name, :description, :address, :price, presence: true
end
