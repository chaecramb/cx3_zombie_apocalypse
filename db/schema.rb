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

ActiveRecord::Schema.define(version: 20160107205614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "cooldown",         default: 0
    t.string   "name"
    t.integer  "character_id"
    t.string   "stat"
    t.integer  "boost"
    t.integer  "days_to_cooldown"
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "special"
    t.string   "status"
    t.integer  "morale"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "weapon_id"
    t.integer  "attack"
    t.text     "opener1"
    t.text     "opener2"
    t.text     "reply1"
    t.text     "reply2"
    t.text     "reply3"
    t.text     "reply4"
    t.string   "happyimg"
    t.string   "sadimg"
    t.string   "deadpanimg"
    t.string   "deadimg"
    t.string   "infectedimg"
  end

  create_table "events", force: :cascade do |t|
    t.text     "setting"
    t.integer  "story_id"
    t.integer  "weapon_id"
    t.integer  "triggered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "success"
    t.text     "failure"
    t.integer  "event_type"
  end

  create_table "stories", force: :cascade do |t|
    t.integer  "day"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.integer  "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
