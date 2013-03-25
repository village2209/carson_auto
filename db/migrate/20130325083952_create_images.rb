class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :car
      t.string :image_desc
      t.binary_data :image_file

      t.timestamps
    end
    add_index :images, :car_id
  end
end
