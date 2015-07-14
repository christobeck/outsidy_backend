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

ActiveRecord::Schema.define(version: 20150714143355) do

  create_table "spaces", force: :cascade do |t|
    t.string   "spacetype"
    t.string   "location"
    t.string   "views"
    t.boolean  "food"
    t.boolean  "alcohol"
    t.boolean  "wifi"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spaces", ["venue_id"], name: "index_spaces_on_venue_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "name_first"
    t.string   "name_last"
    t.string   "city"
    t.string   "state"
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "token",           null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["token"], name: "index_users_on_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "hood"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
