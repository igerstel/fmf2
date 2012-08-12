# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120812073922) do

  create_table "chefs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "farmers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "farms", :force => true do |t|
    t.string   "address"
    t.integer  "farmer_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.decimal  "income",     :default => 0.0
    t.integer  "zip",        :default => 60601
    t.decimal  "lat",        :default => 41.9
    t.decimal  "lon",        :default => -87.6
  end

  create_table "inventories", :force => true do |t|
    t.decimal  "cost"
    t.integer  "qty"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "restauramt_id"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "produce_id"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.decimal  "cost"
    t.integer  "qty"
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "produces", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.decimal  "cost",       :default => 0.0
    t.string   "bundle"
    t.string   "category"
    t.integer  "farm_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "address"
    t.decimal  "bill",       :default => 0.0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "chef_id"
    t.integer  "zip",        :default => 60601
    t.decimal  "lat",        :default => 41.9
    t.decimal  "lon",        :default => -87.6
  end

end
