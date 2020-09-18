# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_18_041842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_v1_locations", force: :cascade do |t|
    t.string "name", null: false
    t.integer "total", null: false
    t.integer "white_total", null: false
    t.integer "latinx_total", null: false
    t.integer "black_total", null: false
    t.string "black_pop", null: false
    t.string "black_deaths", null: false
    t.string "black_likely", null: false
    t.string "latinx_likely", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "api_v1_victims", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.date "when", null: false
    t.string "place", null: false
    t.text "details", null: false
    t.string "photo", default: "https://assets.change.org/photos/6/fd/qd/UefDqdBUZOcYZpY-800x450-noPad.jpg?1526960855"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
