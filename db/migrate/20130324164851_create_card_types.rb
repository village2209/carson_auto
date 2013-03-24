class CreateCardTypes < ActiveRecord::Migration
  def change
    create_table :card_types do |t|
      t.belongs_to :payment
      t.string :name
      t.string :description
      t.string :valid

      t.timestamps
    end
    add_index :card_types, :payment_id
  end
end
