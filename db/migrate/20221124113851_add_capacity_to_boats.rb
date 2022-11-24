class AddCapacityToBoats < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :capacity, :integer
  end
end
