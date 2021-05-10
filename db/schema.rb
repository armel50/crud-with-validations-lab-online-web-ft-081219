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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20191019190301) do

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist_name"
    t.string   "genre"
    t.integer  "release_year"
    t.boolean  "released"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
=======
ActiveRecord::Schema.define(version: 20191019061824) do

  create_table "songs", force: :cascade do |t|
    t.string  "title"
    t.boolean "released"
    t.integer "release_year"
    t.string  "artist_name"
    t.string  "genre"
>>>>>>> aa44ebe9eb9c1f258f410bc1ba02d2cbc2ce6b61
  end

end
