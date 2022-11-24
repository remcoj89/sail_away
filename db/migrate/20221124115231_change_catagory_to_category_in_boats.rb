class ChangeCatagoryToCategoryInBoats < ActiveRecord::Migration[7.0]
  def change
    rename_column :boats, :catagory, :category
  end
end
