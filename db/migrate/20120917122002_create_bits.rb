class CreateBits < ActiveRecord::Migration
  def change
    create_table :bits do |t|
      t.string :bitter
      t.text :body
      t.references :auction

      t.timestamps
    end
    add_index :bits, :auction_id
  end
end
