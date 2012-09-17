class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :auction

      t.timestamps
    end
    add_index :tags, :auction_id
  end
end
