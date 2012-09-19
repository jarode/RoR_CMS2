class AddReftoAuctions < ActiveRecord::Migration
  def change
	  change_table :auctions do |t|
	    t.references :user
      end
  
    
  end

  
end
