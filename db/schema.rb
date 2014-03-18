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

ActiveRecord::Schema.define(version: 20140216154300) do

  create_table "order_transitions", force: true do |t|
    t.string  "to_state"
    t.text    "metadata", default: "{}"
    t.integer "sort_key"
    t.integer "order_id"
  end

  add_index "order_transitions", ["order_id"], name: "index_order_transitions_on_order_id"
  add_index "order_transitions", ["sort_key", "order_id"], name: "index_order_transitions_on_sort_key_and_order_id", unique: true

  create_table "orders", force: true do |t|
    t.string "name"
  end

  create_table "posts", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_transitions", force: true do |t|
    t.string  "to_state"
    t.text    "metadata",   default: "{}"
    t.integer "sort_key"
    t.integer "request_id"
  end

  add_index "request_transitions", ["request_id"], name: "index_request_transitions_on_request_id"
  add_index "request_transitions", ["sort_key", "request_id"], name: "index_request_transitions_on_sort_key_and_request_id", unique: true

  create_table "requests", force: true do |t|
    t.string   "request_type"
    t.string   "requester"
    t.string   "organization"
    t.string   "site"
    t.string   "unit"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["name"], name: "index_restaurants_on_name", unique: true

end
