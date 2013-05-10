class AddCategoryToCar < ActiveRecord::Migration
  def change
    add_column :cars, :category, :string
  end
end
