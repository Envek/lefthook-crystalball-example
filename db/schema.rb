# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_09_184448) do

  create_table "accounts", force: :cascade do |t|
    t.string "login", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["login"], name: "index_accounts_on_login", unique: true
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "item_id"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_listings_on_account_id"
    t.index ["product_id"], name: "index_listings_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.integer "quantity"
    t.decimal "price"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "listings", "accounts", on_update: :cascade, on_delete: :cascade
  add_foreign_key "listings", "products"
  add_foreign_key "products", "users", on_update: :cascade, on_delete: :cascade
end
