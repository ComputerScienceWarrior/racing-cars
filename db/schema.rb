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

ActiveRecord::Schema[7.1].define(version: 2025_05_06_230909) do
  create_table "car_signups", force: :cascade do |t|
    t.string "signed_up"
    t.integer "car_id", null: false
    t.integer "tournament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_signups_on_car_id"
    t.index ["tournament_id"], name: "index_car_signups_on_tournament_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.integer "tournament_match_wins"
    t.integer "tournament_match_losses"
    t.integer "championship_wins"
    t.integer "championship_losses"
    t.integer "wins"
    t.integer "losses"
    t.integer "draws"
    t.string "rank"
    t.string "img_url"
    t.string "season_pts"
    t.string "total_pts"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "tournament_type"
    t.string "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_signups", "cars"
  add_foreign_key "car_signups", "tournaments"
  add_foreign_key "cars", "users"
end
