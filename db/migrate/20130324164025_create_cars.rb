class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.belongs_to :admin
      t.string :make
      t.decimal :price
      t.string :image_desc
      t.binary :image_file
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :color
      t.string :transmission
      t.string :fueltype

      t.timestamps
    end
    add_index :cars, :admin_id
  end
end
