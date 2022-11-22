class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :name, :description, :address, :price, presence: true
end
