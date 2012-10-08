class AddAcceptBittoBits < ActiveRecord::Migration
  def up
	add_column :bits, :accepted, :boolean, :default => 0
  end
  def down
    remove_column :bits, :accepted
  end
  
end
