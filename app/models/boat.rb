class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :description, :address, :price, presence: true
end
