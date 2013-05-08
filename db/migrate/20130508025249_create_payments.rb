class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :credit_card
      t.decimal :amount

      t.timestamps
    end
    add_index :payments, :credit_card_id
  end
end
