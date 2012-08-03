class AddRestaurantIdToInventory < ActiveRecord::Migration
  def change
  	add_column :inventories, :restauramt_id, :integer
  end
end
