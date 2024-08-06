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

ActiveRecord::Schema[7.1].define(version: 2024_08_06_101917) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "city_id", null: false
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lock_version", default: 0, null: false
    t.integer "status", default: 0
    t.index ["city_id"], name: "index_employees_on_city_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_employee_programming_languages", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "programming_language_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_table_employee_programming_languages_on_employee_id"
    t.index ["programming_language_id"], name: "idx_on_programming_language_id_7158210b44"
  end

  add_foreign_key "employees", "cities"
  add_foreign_key "employees", "departments"
  add_foreign_key "table_employee_programming_languages", "employees"
  add_foreign_key "table_employee_programming_languages", "programming_languages"
end
