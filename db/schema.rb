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

ActiveRecord::Schema.define(version: 2021_07_29_150423) do

  create_table "coin_wallets", force: :cascade do |t|
    t.integer "coin_id", null: false
    t.integer "wallet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coin_id"], name: "index_coin_wallets_on_coin_id"
    t.index ["wallet_id"], name: "index_coin_wallets_on_wallet_id"
  end

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.float "initial_value"
    t.float "current_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.string "name"
    t.float "total_usd_value"
    t.float "initial_value"
    t.float "current_value"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "coin_wallets", "coins"
  add_foreign_key "wallets", "users"
end
