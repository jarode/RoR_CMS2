class AddDateAndBudgetToAuctions < ActiveRecord::Migration
  def change
	add_column :auctions, :planned_date, :date
    add_column :auctions, :planned_budget, :integer
  end
end
