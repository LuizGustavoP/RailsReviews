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

ActiveRecord::Schema.define(version: 20200529192949) do

  create_table "apelidos", force: :cascade do |t|
    t.string "nome"
    t.string "apelido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string "nome"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "nome"
    t.string "dev"
    t.string "pub"
    t.float "score"
    t.string "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "publisher_id"
    t.integer "platform_id"
    t.integer "developer_id"
    t.index ["developer_id"], name: "index_games_on_developer_id"
    t.index ["platform_id"], name: "index_games_on_platform_id"
    t.index ["publisher_id"], name: "index_games_on_publisher_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "nome"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
