class CreateProduces < ActiveRecord::Migration
  def change
    create_table :produces do |t|
      t.string :name
      t.integer :amount
      t.decimal :cost
      t.string :bundle
      t.string :category
      t.integer :farm_id

      t.timestamps
    end
  end
end
