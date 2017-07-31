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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170731042122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text     "name"
    t.text     "contact"
    t.text     "phone"
    t.text     "address"
    t.text     "email"
    t.text     "address_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "office_id"
    t.integer  "supplier_id"
    t.index ["office_id"], name: "index_addresses_on_office_id"
    t.index ["supplier_id"], name: "index_addresses_on_supplier_id"
  end

  create_table "assets", force: :cascade do |t|
    t.text     "serial_num"
    t.text     "description"
    t.text     "status"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "office_id"
    t.integer  "user_id"
    t.integer  "order_id"
    t.index ["office_id"], name: "index_assets_on_office_id"
    t.index ["order_id"], name: "index_assets_on_order_id"
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "offices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "address_id"
    t.index ["address_id"], name: "index_offices_on_address_id"
  end

  create_table "order_scans", force: :cascade do |t|
    t.text     "scan_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.index ["order_id"], name: "index_order_scans_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date     "date"
    t.float    "cost"
    t.text     "ordered_by"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "supplier_id"
    t.index ["supplier_id"], name: "index_orders_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "office_id"
    t.index ["office_id"], name: "index_users_on_office_id"
  end

end
