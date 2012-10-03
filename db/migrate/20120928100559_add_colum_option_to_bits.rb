class AddColumOptionToBits < ActiveRecord::Migration
  def change
	add_column :bits, :checked_option, :text
  end
end
