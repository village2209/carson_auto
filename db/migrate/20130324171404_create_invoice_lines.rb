class CreateInvoiceLines < ActiveRecord::Migration
  def change
    create_table :invoice_lines do |t|
      t.belongs_to :car
      t.belongs_to :invoice
      t.decimal :price

      t.timestamps
    end
    add_index :invoice_lines, :car_id
    add_index :invoice_lines, :invoice_id
  end
end
