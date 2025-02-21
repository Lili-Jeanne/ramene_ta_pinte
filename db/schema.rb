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

ActiveRecord::Schema[8.0].define(version: 2025_02_21_103809) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "bars_drinks", force: :cascade do |t|
    t.bigint "bar_id", null: false
    t.bigint "drink_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_bars_drinks_on_bar_id"
    t.index ["drink_id"], name: "index_bars_drinks_on_drink_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "bar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_drinks_on_bar_id"
  end

  add_foreign_key "bars_drinks", "bars"
  add_foreign_key "bars_drinks", "drinks"
  add_foreign_key "drinks", "bars"
end
