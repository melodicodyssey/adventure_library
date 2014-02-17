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

ActiveRecord::Schema.define(version: 20140214170531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: true do |t|
    t.integer  "library_id"
    t.string   "title"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid"
  end

  add_index "adventures", ["library_id"], name: "index_adventures_on_library_id", using: :btree

  create_table "libraries", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "adventure_id"
    t.string   "name"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["adventure_id"], name: "index_pages_on_adventure_id", using: :btree

end