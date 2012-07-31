class ConvertToCurrency < ActiveRecord::Migration
  def up
  	add_column :farms, :income, :decimal, :default => 0.00
  	change_column :produces, :cost, :decimal
  end

  def down
  end
end
