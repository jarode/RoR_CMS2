class AddBooleanToOptionProces < ActiveRecord::Migration
  def change
	add_column :optionprices, :status, :boolean, :default => 0
  end

end
