class RemoveValidFromCardType < ActiveRecord::Migration
  def up
    remove_column :card_types, :valid
  end

  def down
    add_column :card_types, :valid, :string
  end
end
