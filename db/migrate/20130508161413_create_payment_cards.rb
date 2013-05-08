class CreatePaymentCards < ActiveRecord::Migration
  def change
    create_table :payment_cards do |t|
      t.belongs_to :user
      t.string :card_type
      t.string :card_number
      t.string :card_security_code
      t.string :user_id_number
      t.string :holder_name

      t.timestamps
    end

    add_index :payment_cards, :user_id
  end
end
