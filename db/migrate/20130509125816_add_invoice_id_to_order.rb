class AddInvoiceIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :invoice_id, :integer
    add_index :orders, :invoice_id
  end
end
