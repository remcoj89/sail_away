class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.string :status

      t.timestamps
    end
  end
end
