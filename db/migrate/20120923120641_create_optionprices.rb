class CreateOptionprices < ActiveRecord::Migration
  def change
    create_table :optionprices do |t|
	  t.references :auction
	  t.references :option
	  
	  t.string :price
      t.timestamps
    end
  end
end
