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

ActiveRecord::Schema.define(version: 20160917183323) do

  create_table "reviews", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "user_id"
    t.string   "title"
    t.string   "review"
    t.date     "movedin"
    t.date     "movedout"
    t.boolean  "gas_included"
    t.integer  "gas_price"
    t.boolean  "hydro_included"
    t.integer  "hydro_price"
    t.boolean  "water_included"
    t.integer  "water_price"
    t.boolean  "pet_friendly"
    t.boolean  "outdoor_space"
    t.boolean  "laundry"
    t.string   "laundry_cost"
    t.boolean  "leaks"
    t.boolean  "mice"
    t.boolean  "concierge"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["unit_id"], name: "index_reviews_on_unit_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.string   "streetNumber"
    t.string   "streetAddress"
    t.string   "unitNumber"
    t.string   "city"
    t.string   "stateProvince"
    t.string   "country"
    t.string   "zipPostal"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
