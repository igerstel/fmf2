class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :address
      t.integer :farmer_id

      t.timestamps
    end
  end
end
