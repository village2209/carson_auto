class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :payment_card

      t.timestamps
    end
    add_index :payments, :payment_card_id
  end
end
