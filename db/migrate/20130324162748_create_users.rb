class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :cell_number
      t.string :email
      t.string :password
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
