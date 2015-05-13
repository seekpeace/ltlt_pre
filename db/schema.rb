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

ActiveRecord::Schema.define(version: 20150513160801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", id: false, force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "home_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "handlers", force: :cascade do |t|
    t.boolean "agent_status"
    t.string  "handler_name"
    t.integer "handler_work",  limit: 8
    t.integer "handler_fax",   limit: 8
    t.string  "handler_email"
  end

  create_table "homes", force: :cascade do |t|
    t.text     "street_address"
    t.integer  "zip_code",         limit: 8
    t.string   "state"
    t.string   "subdivision"
    t.boolean  "available"
    t.boolean  "bid_status"
    t.boolean  "success"
    t.float    "price"
    t.integer  "sqft",             limit: 8
    t.integer  "bed"
    t.integer  "bath"
    t.float    "half_bath"
    t.integer  "built"
    t.integer  "days"
    t.float    "buyer_commission"
    t.integer  "handler_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "number",          limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
