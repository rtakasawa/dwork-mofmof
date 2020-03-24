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

ActiveRecord::Schema.define(version: 2020_03_24_081854) do

  create_table "houses", force: :cascade do |t|
    t.string "property_name", null: false
    t.float "rent", null: false
    t.string "address", null: false
    t.integer "age", null: false
    t.text "remarks"
  end

  create_table "supplementary_informations", force: :cascade do |t|
    t.text "line"
    t.text "station"
    t.integer "minutes_on_foot"
    t.integer "house_id"
    t.index ["house_id"], name: "index_supplementary_informations_on_house_id"
  end

end
