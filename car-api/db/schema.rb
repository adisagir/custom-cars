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

ActiveRecord::Schema.define(version: 2019_06_21_171612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bmw_colors", force: :cascade do |t|
    t.bigint "model_id"
    t.string "name"
    t.string "color_code"
    t.string "color_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_bmw_colors_on_model_id"
  end

  create_table "bmw_wheels", force: :cascade do |t|
    t.bigint "model_id"
    t.string "wheel_link"
    t.string "wheel_code"
    t.string "wheel_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_bmw_wheels_on_model_id"
  end

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mercedes_colors", force: :cascade do |t|
    t.bigint "model_id"
    t.string "name"
    t.string "color_code"
    t.string "color_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_mercedes_colors_on_model_id"
  end

  create_table "models", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "make_id"
    t.string "vehicle_id"
    t.string "fabric_id"
    t.string "sa_id"
    t.string "name"
    t.integer "year"
    t.string "style"
    t.string "engine"
    t.integer "msrp"
    t.string "specs"
    t.string "drivetrain"
    t.string "transmission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["make_id"], name: "index_models_on_make_id"
    t.index ["user_id"], name: "index_models_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "image_link"
    t.string "vehicle_nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bmw_colors", "models"
  add_foreign_key "bmw_wheels", "models"
  add_foreign_key "mercedes_colors", "models"
  add_foreign_key "models", "makes"
  add_foreign_key "models", "users"
end
