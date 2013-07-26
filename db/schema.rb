# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130726153054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "free_agents", force: true do |t|
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "free_agents_players", id: false, force: true do |t|
    t.integer "free_agent_id"
    t.integer "player_id"
  end

  create_table "games", force: true do |t|
    t.integer  "week"
    t.integer  "season"
    t.integer  "split"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "globals", force: true do |t|
    t.integer  "current_week"
    t.integer  "current_season"
    t.integer  "current_split"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.boolean  "private"
    t.string   "password"
    t.integer  "commissioner_id"
    t.string   "league_type"
    t.integer  "kill_points"
    t.integer  "death_points"
    t.integer  "assist_points"
    t.integer  "minion_kills_carry"
    t.integer  "minion_kills_support"
    t.integer  "game_normal"
    t.integer  "max_teams"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "matches", force: true do |t|
    t.integer  "league_id"
    t.integer  "week"
    t.integer  "season"
    t.integer  "split"
    t.float    "team1_score"
    t.float    "team2_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "winner_id"
    t.integer  "loser_id"
  end

  add_index "matches", ["loser_id"], name: "index_matches_on_loser_id", using: :btree
  add_index "matches", ["team1_id"], name: "index_matches_on_team1_id", using: :btree
  add_index "matches", ["team2_id"], name: "index_matches_on_team2_id", using: :btree
  add_index "matches", ["winner_id"], name: "index_matches_on_winner_id", using: :btree

  create_table "player_scores", force: true do |t|
    t.integer  "team_score_id"
    t.integer  "player_id"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "assists"
    t.integer  "minions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "position"
    t.integer  "pro_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "pro_teams", force: true do |t|
    t.string   "name"
    t.string   "handle"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_scores", force: true do |t|
    t.integer  "pro_team_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "handle"
    t.integer  "owner_id"
    t.integer  "starting_top_id"
    t.integer  "starting_jungle_id"
    t.integer  "starting_mid_id"
    t.integer  "starting_ad_carry_id"
    t.integer  "starting_support_id"
    t.integer  "league_id"
    t.boolean  "locked"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "waiver_claims", force: true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dropping_player_id"
  end

end
