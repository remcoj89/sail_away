class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  validates :start_date, :end_date, :status, presence: true
end
