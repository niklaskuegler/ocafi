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

ActiveRecord::Schema.define(version: 2018_10_23_140032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffees", force: :cascade do |t|
    t.integer "bags"
    t.string "process"
    t.string "certification"
    t.string "year"
    t.float "price"
    t.string "sku"
    t.bigint "farmer_id"
    t.integer "packaging"
    t.string "batch"
    t.string "score"
    t.string "variety"
    t.string "screensize"
    t.string "flavor1"
    t.string "flavor2"
    t.string "flavor3"
    t.string "flavor1_image"
    t.string "flavor2_image"
    t.string "flavor3_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_coffees_on_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "origin"
    t.string "region"
    t.string "farm_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "farmer_photo"
    t.string "farm_landscape1"
    t.string "farm_landscape2"
    t.string "farm_landscape3"
    t.string "farm_landscape4"
    t.string "farm_landscape5"
    t.string "farm_landscape6"
    t.string "farm_landscape7"
    t.string "farm_landscape8"
    t.string "farm_landscape9"
    t.string "farm_landscape10"
    t.string "short_description"
    t.string "long_description"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_farmers_on_user_id"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "coffees", "farmers"
  add_foreign_key "farmers", "users"
end
