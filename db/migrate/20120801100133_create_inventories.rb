class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.decimal :cost
      t.integer :qty

      t.timestamps
    end
  end
end
