class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :card_type
      t.string :card_number

      t.timestamps
    end
    add_index :payments, :card_type_id
  end
end
