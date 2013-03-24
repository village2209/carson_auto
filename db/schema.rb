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

ActiveRecord::Schema.define(:version => 20130324171916) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "card_types", :force => true do |t|
    t.integer  "payment_id"
    t.string   "name"
    t.string   "description"
    t.string   "valid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "card_types", ["payment_id"], :name => "index_card_types_on_payment_id"

  create_table "cars", :force => true do |t|
    t.integer  "admin_id"
    t.string   "make"
    t.decimal  "price"
    t.string   "image_desc"
    t.binary   "image_file"
    t.string   "model"
    t.integer  "year"
    t.integer  "mileage"
    t.string   "color"
    t.string   "transmission"
    t.string   "fueltype"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "cars", ["admin_id"], :name => "index_cars_on_admin_id"

  create_table "invoice_lines", :force => true do |t|
    t.integer  "car_id"
    t.integer  "invoice_id"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invoice_lines", ["car_id"], :name => "index_invoice_lines_on_car_id"
  add_index "invoice_lines", ["invoice_id"], :name => "index_invoice_lines_on_invoice_id"

  create_table "invoices", :force => true do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.integer  "ship_address_id"
    t.decimal  "invoice_total"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "invoices", ["order_id"], :name => "index_invoices_on_order_id"
  add_index "invoices", ["ship_address_id"], :name => "index_invoices_on_ship_address_id"
  add_index "invoices", ["user_id"], :name => "index_invoices_on_user_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "payment_id"
    t.string   "card_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "orders", ["payment_id"], :name => "index_orders_on_payment_id"
  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "payments", :force => true do |t|
    t.integer  "card_type_id"
    t.string   "card_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "payments", ["card_type_id"], :name => "index_payments_on_card_type_id"

  create_table "ship_addresses", :force => true do |t|
    t.integer  "user_id"
    t.string   "country"
    t.string   "region"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ship_addresses", ["user_id"], :name => "index_ship_addresses_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "cell_number"
    t.string   "email"
    t.string   "password"
    t.string   "country"
    t.string   "address"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
