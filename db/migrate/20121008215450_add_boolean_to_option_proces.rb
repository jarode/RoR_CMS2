class AddBooleanToOptionProces < ActiveRecord::Migration
  def change
	add_column :optionprices, :status, :boolean, :default => false
  end

end
