class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :cost
      t.integer :qty
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
