class AddBoatReferenceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :boat, index: true
  end
end
