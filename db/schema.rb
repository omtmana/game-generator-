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

ActiveRecord::Schema[7.0].define(version: 2022_08_30_194408) do
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.datetime "time"
    t.integer "user_id"
    t.string "game_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_name"
    t.string "time_slots"
    t.string "location_type"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "availability"
    t.string "user_location"
    t.string "games_preference"
    t.string "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end