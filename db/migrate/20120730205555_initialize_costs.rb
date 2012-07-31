class InitializeCosts < ActiveRecord::Migration
  def up
  	change_column :produces, :cost, :decimal, :default => 0.00
  
  end

  def down
  end
end
