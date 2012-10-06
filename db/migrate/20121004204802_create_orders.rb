class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
	  t.references :user
	  t.references :auction
	  t.references :bit
	  	  
	  t.integer:status
	  
	  t.timestamps
    end
  end
end
