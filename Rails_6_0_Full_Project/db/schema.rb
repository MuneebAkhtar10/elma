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

ActiveRecord::Schema.define(version: 2022_02_21_021607) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "country_code"
    t.string "phone"
    t.string "country"
    t.integer "saloon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "gender"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "subscription_plan_id"
    t.integer "saloon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "saloons", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "country_code"
    t.string "phone"
    t.float "longitude"
    t.float "latitude"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "subscription_plan_id"
  end

  create_table "subscription_plan_features", force: :cascade do |t|
    t.string "name"
    t.string "engish_translation"
    t.integer "subscription_plan_id"
  end

  create_table "subscription_plans", force: :cascade do |t|
    t.string "name"
    t.string "engish_translation"
    t.string "status"
    t.integer "saloon_id"
    t.datetime "subscription_taken_at"
    t.datetime "subscription_expires_at_at"
    t.float "price"
  end

end
