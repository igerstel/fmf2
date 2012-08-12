class AddLatLon < ActiveRecord::Migration
  def up
   	add_column :farms, :lat, :decimal, :default => 41.9
		add_column :farms, :lon, :decimal, :default => -87.6
		add_column :restaurants, :lat, :decimal, :default => 41.9
		add_column :restaurants, :lon, :decimal, :default => -87.6
  end

  def down
  end
end
