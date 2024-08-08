# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_07_022855) do
  create_table "customers", force: :cascade do |t|
    t.string "customer_id"
    t.string "customer_first_name"
    t.string "customer_last_name"
    t.string "customer_email"
    t.string "customer_phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "quantity_available"
    t.integer "minimum_stock_level"
    t.integer "maximum_stock_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_quantity"
    t.integer "min_quantity"
  end

  create_table "products", force: :cascade do |t|
    t.integer "ProductID"
    t.string "ProductCode", limit: 100
    t.string "ProductName", limit: 100
    t.string "ProductDescription", limit: 2000
    t.string "ProductCategory", limit: 100
    t.integer "ProductUnitPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
