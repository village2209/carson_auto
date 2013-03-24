class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.belongs_to :payment
      t.string :card_number

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :payment_id
  end
end
