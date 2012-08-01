class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.decimal :bill

      t.timestamps
    end
  end
end
