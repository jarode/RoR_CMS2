class AddReftoBits < ActiveRecord::Migration
  def change
	  change_table :bits do |t|
	    t.references :user
      end
  
    
  end
end
