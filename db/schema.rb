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
ActiveRecord::Schema.define(version: 2022_09_16_074215) do
=======
ActiveRecord::Schema.define(version: 2022_09_16_073933) do
>>>>>>> d437f2e1e4fd015d390c2399518d6d68a0f83dce

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "category_id"
=======
  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "image"
>>>>>>> d437f2e1e4fd015d390c2399518d6d68a0f83dce
    t.text "address"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "categories", force: :cascade do |t|
    t.string "name"
=======
  create_table "planners", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.integer "user_id"
>>>>>>> d437f2e1e4fd015d390c2399518d6d68a0f83dce
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "time"
    t.text "description"
    t.text "image"
    t.integer "destination_id"
    t.integer "attraction_id"
=======
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
>>>>>>> d437f2e1e4fd015d390c2399518d6d68a0f83dce
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
