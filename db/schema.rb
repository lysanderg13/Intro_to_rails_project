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

ActiveRecord::Schema[7.0].define(version: 2023_10_11_045848) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "job"
    t.string "age"
    t.string "size"
    t.string "bounty"
    t.string "status"
    t.integer "crew_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crew_id"], name: "index_characters_on_crew_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "roman_name"
    t.string "total_bounty"
    t.string "number_of_members"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fruits", force: :cascade do |t|
    t.string "name"
    t.string "roman_name"
    t.string "fruit_type"
    t.text "description"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_fruits_on_character_id"
  end

  add_foreign_key "characters", "crews"
  add_foreign_key "fruits", "characters"
end
