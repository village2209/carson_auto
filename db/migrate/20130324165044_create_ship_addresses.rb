class CreateShipAddresses < ActiveRecord::Migration
  def change
    create_table :ship_addresses do |t|
      t.belongs_to :user
      t.string :country
      t.string :region
      t.string :address

      t.timestamps
    end
    add_index :ship_addresses, :user_id
  end
end
