class AuctionCats < ActiveRecord::Migration
  def up
    create_table :auctions_cats, :id => false do |t|
      t.integer :auction_id
      t.integer :cat_id
    end
  end

  def down
    drop_table :auctions_cats
  end

end
