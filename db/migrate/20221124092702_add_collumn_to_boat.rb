class AddCollumnToBoat < ActiveRecord::Migration[7.0]
  def change
    add_column :boats, :catagory, :string
    add_column :boats, :size, :float
    add_column :boats, :capacity, :string
  end
end
