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

ActiveRecord::Schema.define(version: 2021_03_23_155111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_players", force: :cascade do |t|
    t.bigint "board_id", null: false
    t.bigint "player_id", null: false
    t.integer "role"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_players_on_board_id"
    t.index ["player_id"], name: "index_board_players_on_player_id"
  end

  create_table "boards", force: :cascade do |t|
    t.datetime "end_time"
    t.integer "step"
    t.bigint "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_boards_on_subject_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.string "word"
    t.bigint "board_player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_player_id"], name: "index_proposals_on_board_player_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "board_players", "boards"
  add_foreign_key "board_players", "players"
  add_foreign_key "boards", "subjects"
  add_foreign_key "proposals", "board_players"
end
