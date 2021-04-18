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

ActiveRecord::Schema.define(version: 2021_04_18_135827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklist_tasks", force: :cascade do |t|
    t.string "title"
    t.boolean "done", default: false
    t.bigint "checklist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checklist_id"], name: "index_checklist_tasks_on_checklist_id"
  end

  create_table "checklists", force: :cascade do |t|
    t.float "completed_rate", default: 0.0
    t.bigint "list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_checklists_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.bigint "table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["table_id"], name: "index_lists_on_table_id"
  end

  create_table "shares", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["table_id"], name: "index_shares_on_table_id"
    t.index ["user_id"], name: "index_shares_on_user_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_tables_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "list_id", null: false
    t.boolean "done", default: false
    t.date "start_at"
    t.date "end_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_tasks_on_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "checklist_tasks", "checklists"
  add_foreign_key "checklists", "lists"
  add_foreign_key "lists", "tables"
  add_foreign_key "shares", "tables"
  add_foreign_key "shares", "users"
  add_foreign_key "tables", "users"
  add_foreign_key "tasks", "lists"
end
