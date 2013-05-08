class DropTablePayments < ActiveRecord::Migration
  def up
  end

  def down
  	drop_table :payments
  end
end
