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
