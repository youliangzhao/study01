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

ActiveRecord::Schema.define(version: 2018_12_13_092102) do

  create_table "tasks", force: :cascade do |t|
    t.integer "taskcode"
    t.string "taskname"
    t.string "taskdesc"
    t.integer "temp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temp_id"], name: "index_tasks_on_temp_id"
  end

  create_table "temps", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_logs", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "ip"
    t.datetime "logtime"
    t.decimal "errcnt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.datetime "tasktime", default: "2018-12-13 00:50:59"
    t.integer "taskscore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "temp_id"
    t.integer "taskcode"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "mobi"
    t.string "email"
    t.string "password_digest"
    t.string "adm", default: "0"
    t.string "status", default: "1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
