class CreateCardTypes < ActiveRecord::Migration
  def change
    create_table :card_types do |t|
      t.belongs_to :user
      t.belongs_to :payment
      t.string :card_type
      t.string :user_id_number
      t.string :card_number
      t.string :security_code
      t.string :holder_name

      t.timestamps
    end
    add_index :card_types, :user_id
    add_index :card_types, :payment_id
  end
end
