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

ActiveRecord::Schema.define(version: 2021_04_22_151700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fridges", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_fridges_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "quantity"
    t.date "date_added"
    t.date "expiration_date"
    t.bigint "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "trash", default: false
    t.index ["section_id"], name: "index_items_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.bigint "fridge_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fridge_id"], name: "index_sections_on_fridge_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fridges", "users"
  add_foreign_key "items", "sections"
  add_foreign_key "sections", "fridges"
end
