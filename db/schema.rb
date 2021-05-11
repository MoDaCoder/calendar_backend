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

ActiveRecord::Schema.define(version: 2021_05_11_161229) do

  create_table "housings", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "pending_approvals", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "housing_id", null: false
    t.integer "reservation_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["housing_id"], name: "index_pending_approvals_on_housing_id"
    t.index ["member_id"], name: "index_pending_approvals_on_member_id"
    t.index ["reservation_id"], name: "index_pending_approvals_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "total_day"
    t.integer "housing_id", null: false
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["housing_id"], name: "index_reservations_on_housing_id"
    t.index ["member_id"], name: "index_reservations_on_member_id"
  end

  add_foreign_key "pending_approvals", "housings"
  add_foreign_key "pending_approvals", "members"
  add_foreign_key "pending_approvals", "reservations"
  add_foreign_key "reservations", "housings"
  add_foreign_key "reservations", "members"
end
