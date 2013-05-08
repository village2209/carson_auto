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

ActiveRecord::Schema.define(:version => 20130508173812) do


  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false

  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "cars", :force => true do |t|
    t.string   "make"
    t.decimal  "price"
    t.string   "image"
    t.string   "model"
    t.integer  "year"
    t.string   "mileage"
    t.string   "color"
    t.string   "transmission"
    t.string   "fuel_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cart_items", :force => true do |t|
    t.integer  "cart_id"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cart_items", ["cart_id"], :name => "index_cart_items_on_cart_id"

  create_table "carts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "carts", ["user_id"], :name => "index_carts_on_user_id"

  create_table "credit_cards", :force => true do |t|
    t.integer  "user_id"
    t.string   "card_type"
    t.string   "card_number"
    t.string   "card_security_code"
    t.string   "user_id_number"
    t.string   "holder_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "credit_cards", ["user_id"], :name => "index_credit_cards_on_user_id"

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

  create_table "payment_cards", :force => true do |t|
    t.integer  "user_id"
    t.string   "card_type"
    t.string   "card_number"
    t.string   "card_security_code"
    t.string   "user_id_number"
    t.string   "holder_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "payment_cards", ["user_id"], :name => "index_payment_cards_on_user_id"

  create_table "payments", :force => true do |t|
    t.integer  "payment_card_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "payments", ["payment_card_id"], :name => "index_payments_on_payment_card_id"

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
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
