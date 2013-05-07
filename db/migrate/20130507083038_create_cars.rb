class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.decimal :price
      t.string :image
      t.string :model
      t.integer :year
      t.string :mileage
      t.string :color
      t.string :transmission
      t.string :fuel_type

      t.timestamps
    end
  end
end
