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

ActiveRecord::Schema.define(version: 20161013233036) do

  create_table "bknotes", force: :cascade do |t|
    t.integer  "book_id",    limit: 4
    t.string   "name",       limit: 255
    t.integer  "page",       limit: 4
    t.string   "unit",       limit: 255
    t.text     "note",       limit: 65535
    t.text     "practice",   limit: 65535
    t.string   "referdoc",   limit: 255
    t.string   "referurl",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "pathw",      limit: 255
    t.string   "pathl",      limit: 255
    t.string   "category",   limit: 255
    t.text     "secnario",   limit: 65535
    t.text     "note",       limit: 65535
    t.integer  "level",      limit: 4
    t.boolean  "tested"
    t.string   "referto",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "picture",    limit: 255
    t.text     "intro",      limit: 65535
    t.string   "pathw",      limit: 255
    t.string   "pathl",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
