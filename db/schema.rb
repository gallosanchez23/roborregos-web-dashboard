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

ActiveRecord::Schema.define(version: 2020_04_19_005027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arrangements", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "amount"
    t.integer "sponsorship_type"
    t.bigint "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sponsor_id"], name: "index_arrangements_on_sponsor_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "reference_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsor_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "fathers_last_name"
    t.string "mothers_last_name"
    t.string "email"
    t.string "phone_number"
    t.text "notes"
    t.bigint "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sponsor_id"], name: "index_sponsor_contacts_on_sponsor_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "avatar"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "github_url"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_teams_on_category_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "description"
    t.integer "type"
    t.string "country"
    t.string "citi"
    t.string "reference_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
