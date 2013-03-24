class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.belongs_to :user
      t.belongs_to :order
      t.belongs_to :ship_address
      t.decimal :invoice_total

      t.timestamps
    end
    add_index :invoices, :user_id
    add_index :invoices, :order_id
    add_index :invoices, :ship_address_id
  end
end
