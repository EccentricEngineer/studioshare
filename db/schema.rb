# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_30_152156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "studio_id"
    t.bigint "user_id"
    t.datetime "start"
    t.datetime "end"
    t.text "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_reservations_on_email", unique: true
    t.index ["reset_password_token"], name: "index_reservations_on_reset_password_token", unique: true
    t.index ["studio_id"], name: "index_reservations_on_studio_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "studio_id"
    t.bigint "user_id"
    t.bigint "reservation_id"
    t.text "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_reviews_on_email", unique: true
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
    t.index ["reset_password_token"], name: "index_reviews_on_reset_password_token", unique: true
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "user_id"
    t.text "name"
    t.text "country"
    t.text "city"
    t.text "address"
    t.integer "longitude"
    t.integer "latitude"
    t.integer "capacity"
    t.boolean "mixing_console"
    t.boolean "multitrack_recorder"
    t.boolean "microphones"
    t.boolean "reference_monitor"
    t.boolean "digital_workstation"
    t.boolean "music_workstation"
    t.boolean "outboard_effect"
    t.boolean "isolation_booth"
    t.integer "photo_url"
    t.datetime "opening_hour"
    t.datetime "closing_hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_studios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_studios_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "vendor"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
