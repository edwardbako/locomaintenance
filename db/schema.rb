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

ActiveRecord::Schema[7.0].define(version: 2023_01_15_204505) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_people", force: :cascade do |t|
    t.string "phone"
    t.string "name"
    t.string "patronymic"
    t.string "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locomotives", force: :cascade do |t|
    t.string "model"
    t.integer "wheel_pairs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "city"
    t.bigint "locomotive_id", null: false
    t.integer "budget", default: 0
    t.integer "diem", default: 0
    t.string "housing"
    t.integer "rental_housing", default: 0
    t.integer "tangen", default: 0
    t.integer "cup", default: 0
    t.integer "wheel_pairs", default: 0
    t.bigint "contact_person_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "executor_id"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_person_id"], name: "index_orders_on_contact_person_id"
    t.index ["executor_id"], name: "index_orders_on_executor_id"
    t.index ["locomotive_id"], name: "index_orders_on_locomotive_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "role"
    t.string "phone", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone"], name: "index_users_on_phone", unique: true
  end

  add_foreign_key "orders", "contact_people"
  add_foreign_key "orders", "locomotives"
  add_foreign_key "orders", "users", column: "executor_id"
end
