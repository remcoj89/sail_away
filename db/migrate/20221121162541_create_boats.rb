class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
