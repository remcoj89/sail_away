class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :address, :price, presence: true
end
