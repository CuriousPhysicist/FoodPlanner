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

ActiveRecord::Schema.define(version: 2021_01_31_202841) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "quantity"
  end

  create_table "macro_nutrients", force: :cascade do |t|
    t.string "group"
    t.float "specific_quantity"
    t.integer "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "unit"
    t.index ["ingredient_id"], name: "index_macro_nutrients_on_ingredient_id"
  end

  create_table "micro_nutrients", force: :cascade do |t|
    t.string "group"
    t.float "specific_quantity"
    t.string "name"
    t.string "unit"
    t.integer "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_micro_nutrients_on_ingredient_id"
  end

  add_foreign_key "macro_nutrients", "ingredients"
  add_foreign_key "micro_nutrients", "ingredients"
end
