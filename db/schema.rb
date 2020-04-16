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

ActiveRecord::Schema.define(version: 2020_04_16_204729) do

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "task_id"
    t.string "name"
    t.integer "old"
    t.string "sex"
    t.string "job"
    t.string "email"
    t.index ["task_id"], name: "index_posts_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "time"
    t.string "week"
    t.string "station"
    t.string "address"
    t.integer "user_id"
    t.string "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "kind"
    t.string "organization_name"
    t.string "user_address"
    t.string "born"
    t.string "user_message"
    t.string "icon"
  end

  add_foreign_key "posts", "tasks"
end
