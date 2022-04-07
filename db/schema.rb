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

ActiveRecord::Schema[7.0].define(version: 2022_04_07_104707) do
  create_table "games", force: :cascade do |t|
    t.integer "team_1_id", null: false
    t.integer "team_2_id", null: false
    t.string "team_1_score"
    t.string "team_2_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_1_id"], name: "index_games_on_team_1_id"
    t.index ["team_2_id"], name: "index_games_on_team_2_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "coordinator"
  end

  add_foreign_key "games", "team_1s"
  add_foreign_key "games", "team_2s"
  add_foreign_key "players", "teams"
end
