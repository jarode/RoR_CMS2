class AddPriceToBits < ActiveRecord::Migration
  def change
    remove_column :bits, :bitter
    add_column :bits, :price, :integer
  end
end
