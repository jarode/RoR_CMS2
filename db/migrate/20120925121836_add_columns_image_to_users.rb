class AddColumnsImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string
    add_column :users, :date, :time
  end
end
