class MoveBillToRestaurant < ActiveRecord::Migration
  def up
  	change_column :restaurants, :bill, :decimal, :default => 0.00
  	remove_column :chefs, :bill
  end

  def down
  end
end
