class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.decimal :bill

      t.timestamps
    end
  end
end
