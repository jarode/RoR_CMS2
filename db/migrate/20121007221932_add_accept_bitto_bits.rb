class AddAcceptBittoBits < ActiveRecord::Migration
  def up
	add_column :bits, :accepted, :boolean, :default => false
  end
  def down
    remove_column :bits, :accepted
  end
  
end
