class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart
      t.integer :product_id

      t.timestamps
    end
    add_index :cart_items, :cart_id
  end
end
