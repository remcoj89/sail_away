class RemoveCapacityFromBoats < ActiveRecord::Migration[7.0]
  def change
    remove_column :boats, :capacity
  end
end
