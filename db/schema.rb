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

ActiveRecord::Schema.define(version: 2019_10_20_225327) do

  create_table "favorites", force: :cascade do |t|
    t.string "name"
    t.integer "shop_id"
    t.integer "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "user_id"
    t.integer "shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "neighborhood"
    t.string "seating"
    t.string "food"
    t.boolean "wifi"
    t.boolean "outlets"
    t.text "address_street"
    t.string "website"
    t.string "address_city"
    t.string "address_state"
    t.string "address_zipcode"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "neighborhood"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
